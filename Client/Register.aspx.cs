using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Client_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fname = this.TextBox1.Text;
        string lname = this.TextBox2.Text;
        string email = this.TextBox3.Text;
        string pass = this.TextBox4.Text;
        string address = this.TextBox5.Text;
        string city = this.TextBox6.Text;
        string pin = this.TextBox7.Text;
        string state = this.TextBox8.Text;
        string country = this.TextBox9.Text;
        string quest = this.DropDownList1.SelectedItem.ToString();
        string ans = this.TextBox10.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "insert into UserInfo(user_fname,user_lname,user_mail,user_pass,user_address,user_city,user_pin,user_state,user_country,user_cdate,user_question,user_answer) values(@user_fname,@user_lname,@user_mail,@user_pass,@user_address,@user_city,@user_pin,@user_state,@user_country,@user_cdate,@user_question,@user_answer)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("user_fname", fname);
        cmd.Parameters.AddWithValue("user_lname", lname);
        cmd.Parameters.AddWithValue("user_mail", email);
        cmd.Parameters.AddWithValue("user_pass", pass);
        cmd.Parameters.AddWithValue("user_address", address);
        cmd.Parameters.AddWithValue("user_city", city);
        cmd.Parameters.AddWithValue("user_pin", pin);
        cmd.Parameters.AddWithValue("user_state", state);
        cmd.Parameters.AddWithValue("user_country", country);
        cmd.Parameters.AddWithValue("user_cdate", DateTime.Now.ToShortDateString());
        cmd.Parameters.AddWithValue("user_question", quest);
        cmd.Parameters.AddWithValue("user_answer", ans);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("~/Client/Login.aspx");
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}