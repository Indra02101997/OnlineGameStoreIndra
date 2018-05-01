using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Client_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string email = this.TextBox1.Text;
        string pass = this.TextBox2.Text;
        String s="Select * from UserInfo where user_mail='"+email+"'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string p = dr.GetValue(4).ToString();
            string fname = dr.GetValue(1).ToString();
            string id = dr.GetValue(0).ToString();
            if (pass.Equals(p))
            {
                Session["fname"] = fname;
                Session["id"] = id;
                Random r = new Random();
                int trans = r.Next(1, 10000);
                String tid = "ST-" + trans.ToString();
                Session["tid"] = tid;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Email Or Password')</script>");
            }
        }
    }
}