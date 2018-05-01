using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Client_Cart : System.Web.UI.Page
{
    Label name, ori;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            refreshdata();
            getpay();
        }
    }
    public void refreshdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string st = "Pending";
        string s = "Select * from Cart where cart_transid='"+Session["tid"].ToString()+"' and cart_status='"+st+"'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Cart.DataSource = dt;
        Cart.DataBind();
        con.Close();
    }
    public void getpay()
    {
        double sum = 0.0;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string st = "Pending";
        String s = "Select * from Cart where cart_transid='" + Session["tid"].ToString() + "' and cart_status='" + st + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            sum+=(Convert.ToDouble(dr.GetValue(5).ToString()));
        }
        this.Label6.Text = "Rs " + sum.ToString() + ".00";
        con.Close();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Cart.EditIndex = -1;
        refreshdata();
        getpay();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Cart.EditIndex = e.NewEditIndex;
        refreshdata();
        getpay();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int id = Convert.ToInt16(Cart.DataKeys[e.RowIndex].Values["cart_id"].ToString());
        Label name = Cart.Rows[e.RowIndex].FindControl("proid") as Label;
        Label qty = Cart.Rows[e.RowIndex].FindControl("qty") as Label;
        string ori = getqty(name.Text);
        int upd = Convert.ToInt32(ori) + Convert.ToInt32(qty.Text);
        string s = "delete from Cart where cart_id=@id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("id", id);
        Response.Write("<script> alert(' Are you sure you want to delete ?!')</script>");
        int i = cmd.ExecuteNonQuery();
        update(upd, name.Text);
        con.Close();
        refreshdata();
        getpay();
    }
    public string getqty(string name)
    {
        string qty = "";
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Product where product_name='" + name + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            qty = dr.GetValue(4).ToString();
        }
        con.Close();
        return qty;
    }
    public void update(int qty, string pid)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "update Product set product_stock=@product_stock where product_name=@product_name";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("product_stock", qty.ToString());
        cmd.Parameters.AddWithValue("product_name", pid);
        int i = cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int check = 0;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        Label name = Cart.Rows[e.RowIndex].FindControl("proid") as Label;
        Label ori = Cart.Rows[e.RowIndex].FindControl("qty") as Label;
        TextBox qty = Cart.Rows[e.RowIndex].FindControl("textbox1") as TextBox;
        TextBox ppu = Cart.Rows[e.RowIndex].FindControl("pput") as TextBox;
        string data=getqty(name.Text);
        check = (Convert.ToInt32(ori.Text) + Convert.ToInt32(data)) - Convert.ToInt32(qty.Text);
        if (check < 0)
        {
            Response.Write("<script>alert('Insufficient Products ')</script>");
            return;
        }
        double price = (Convert.ToDouble(ppu.Text) * Convert.ToDouble(qty.Text));
        int id = Convert.ToInt16(Cart.DataKeys[e.RowIndex].Values["cart_id"].ToString());
        string s = "update Cart set cart_quantity=@cart_quantity,cart_subTotal=@cart_subTotal where cart_id =@cart_id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("cart_quantity", qty.Text);
        cmd.Parameters.AddWithValue("cart_subTotal", price.ToString());
        cmd.Parameters.AddWithValue("cart_id", id);
        int i = cmd.ExecuteNonQuery();
        update(check, name.Text);
        con.Close();
        Cart.EditIndex = -1;
        refreshdata();
        getpay();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/Checkout.aspx");
    }
}