using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_CategoryEdit : System.Web.UI.Page
{
    string cat_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Master.PageName = "Update Category";
        cat_id = Request.QueryString.Get("pid").ToString();
        if (cat_id.ToString() == String.Empty)
        {
            Response.Redirect("CategoryView.aspx");
        }
        getdata();
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Category where category_id='" + cat_id + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            this.TextBox1.Text = dr.GetValue(1).ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = this.TextBox1.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "update Category set category_name=@category_name where category_id=@category_id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("category_name", name);
        cmd.Parameters.AddWithValue("category_id", Convert.ToInt32(cat_id));
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("CategoryView.aspx");
            }
            else
            {

            }
        }
    }
}