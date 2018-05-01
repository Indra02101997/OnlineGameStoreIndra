using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Client_Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getdata();
        }
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int id = Convert.ToInt32(Session["id"].ToString());
        String s = "Select * from UserInfo where user_id=" + id + "";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            this.TextBox1.Text = dr.GetValue(1).ToString();
            this.TextBox2.Text = dr.GetValue(2).ToString();
            this.TextBox3.Text = dr.GetValue(3).ToString();
            this.TextBox4.Text = dr.GetValue(5).ToString();
            this.TextBox5.Text = dr.GetValue(6).ToString();
            this.TextBox6.Text = dr.GetValue(7).ToString();
            this.TextBox7.Text = dr.GetValue(8).ToString();
            this.TextBox8.Text = dr.GetValue(9).ToString();
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/Home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int id = Convert.ToInt32(Session["id"].ToString());
        string fname = this.TextBox1.Text;
        string lname = this.TextBox2.Text;
        string mail = this.TextBox3.Text;
        string address = this.TextBox4.Text;
        string city = this.TextBox5.Text;
        string pin = this.TextBox6.Text;
        string state = this.TextBox7.Text;
        string country = this.TextBox8.Text;
        String s = "update UserInfo set user_fname=@user_fname,user_lname=@user_lname,user_mail=@user_mail,user_address=@user_address,user_city=@user_city,user_pin=@user_pin,user_state=@user_state,user_country=@user_country where user_id=@user_id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("user_fname", fname);
        cmd.Parameters.AddWithValue("user_lname", lname);
        cmd.Parameters.AddWithValue("user_mail", mail);
        cmd.Parameters.AddWithValue("user_address", address);
        cmd.Parameters.AddWithValue("user_city", city);
        cmd.Parameters.AddWithValue("user_pin", pin);
        cmd.Parameters.AddWithValue("user_state", state);
        cmd.Parameters.AddWithValue("user_country", country);
        cmd.Parameters.AddWithValue("user_id", id);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("~/Client/Home.aspx");
            }
            else
            {
            }
        }
        else
        {
            Response.Write("<script>alert('Not Registered Successfully')</script>");
        }
        con.Close();
    }
}