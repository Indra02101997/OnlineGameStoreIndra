using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.Script.Services;
using System.IdentityModel;
public partial class Client_Home : System.Web.UI.Page
{
    int pos=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenerateImage();
        }
        
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {           
            this.ViewState["vs"] = 0;
            fillcombo();
        }
        pos = Convert.ToInt32(this.ViewState["vs"]);
        getdata();
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session.IsNewSession != true && Session["fname"] != null && Session["id"] != null)
        {
            this.Page.MasterPageFile = "~/Client2.master";
        }
        else
        {
            this.Page.MasterPageFile = "~/Client1.master";
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCompletionList(string prefixText, int count)
    {
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

            using (SqlCommand com = new SqlCommand())
            {
                com.CommandText = "select product_name from Product where " + "product_name like @Search + '%'";

                com.Parameters.AddWithValue("@Search", prefixText);
                com.Connection = con;
                con.Open();
                List<string> countryNames = new List<string>();
                using (SqlDataReader sdr = com.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        countryNames.Add(sdr["product_name"].ToString());
                    }
                }
                con.Close();
                return countryNames;


            }

        }

    }  
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        GenerateImage();
    }
    private void GenerateImage()
    {
        Random r = new Random();
        int i = r.Next(1, 8);
        Image1.ImageUrl = "~/Banner/" + i.ToString() + ".jpg";
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        GenerateImage();
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        GenerateImage();
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Product";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        PagedDataSource ad = new PagedDataSource();
        ad.DataSource = ds.Tables[0].DefaultView;
        ad.AllowPaging = true;
        ad.PageSize = 6;
        ad.CurrentPageIndex = pos;
        Button5.Enabled = !ad.IsFirstPage;
        Button6.Enabled = !ad.IsLastPage;
        Button5.Visible = !ad.IsFirstPage;
        Button6.Visible = !ad.IsLastPage;
        Datalist1.DataSource = ad;
        Datalist1.DataBind();
        da.Dispose();
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Product where (product_name like '%'+ @name +'%')";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("@name", SqlDbType.NVarChar).Value = TextBox1.Text;
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "product_name");
        Datalist1.DataSource = ds;
        Datalist1.DataBind();
        con.Close();
    }
    public void fillcombo()
    {
        this.DropDownList1.Items.Clear();
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Category";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            this.DropDownList1.Items.Add(dr.GetValue(1).ToString());
        }
        con.Close();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int i = this.DropDownList1.SelectedIndex + 1;
        String s = "Select * from Product where category_id=@category_id";
        SqlCommand cmd = new SqlCommand(s,con);
        cmd.Parameters.AddWithValue("category_id", i);
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        Datalist1.DataSource = ds;
        Datalist1.DataBind();
        da.Dispose();
        con.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        pos = Convert.ToInt32(this.ViewState["vs"]);
        pos -= 1;
        this.ViewState["vs"] = pos;
        getdata();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        pos = Convert.ToInt32(this.ViewState["vs"]);
        pos += 1;
        this.ViewState["vs"] = pos;
        getdata();
    }
}