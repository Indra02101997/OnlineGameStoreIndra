using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Client_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = this.TextBox1.Text;
        string email = this.TextBox2.Text;
        string message = this.TextBox3.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "insert into Feedback(Name,Email,Message) values(@Name,@Email,@Message)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("Name", name);
        cmd.Parameters.AddWithValue("Email", email);
        cmd.Parameters.AddWithValue("Message", message);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
            }
        }
        else
        {
            Response.Write("<script>alert('Feedback not submitted')</script>");
        }
        con.Close();
    }
}