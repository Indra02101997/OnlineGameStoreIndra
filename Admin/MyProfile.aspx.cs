using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_MyProfile : System.Web.UI.Page
{
    string name = "",id="";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Master.PageName = "Update   Admin   Details";
        name = Session["Name"].ToString();
        getdata();
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Admin where Name='" + name + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            this.TextBox1.Text = dr.GetValue(1).ToString();
            this.TextBox2.Text = dr.GetValue(2).ToString();
            this.TextBox3.Text = dr.GetValue(3).ToString();
            id=dr.GetValue(0).ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = this.TextBox1.Text;
        string email = this.TextBox2.Text;
        string pass = this.TextBox3.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "update Admin set Name=@Name, Email=@Email, Password=@Password where Id=@Id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Name", name);
        cmd.Parameters.AddWithValue("Email", email);
        cmd.Parameters.AddWithValue("Password", pass);
        cmd.Parameters.AddWithValue("Id", Convert.ToInt32(id));
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("ProductInfo.aspx");
            }
            else
            {

            }
        }
        con.Close();
    }
}