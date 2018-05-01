using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_CategoryDelete : System.Web.UI.Page
{
    string cat_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = " Delete  Product";
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
            this.Label3.Text = dr.GetValue(0).ToString();
            this.Label4.Text = dr.GetValue(1).ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "delete from Category where category_id=@category_id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("category_id", Convert.ToInt32(cat_id));
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {

            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Redirect("CategoryView.aspx");
            }
        }
        else
        {
            Response.Redirect("CategoryView.aspx");
        }
    }
}