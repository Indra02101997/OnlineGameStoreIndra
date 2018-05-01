using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.IO;
public partial class Client_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ans1="",pass="";
        string mail1 = this.TextBox1.Text;
        string ans = this.TextBox2.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from UserInfo where user_mail='" + mail1 + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ans1 = dr.GetValue(12).ToString();
            pass = dr.GetValue(4).ToString();
        }
        if(ans.Equals(ans1))
        {
            MailMessage mail = new MailMessage();
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.Port = 587;
            client.Timeout = 100000000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("narayanip1963@gmail.com", "neelmababa");
            client.EnableSsl = true;
            mail.From = new MailAddress("narayanip1963@gmail.com");
            mail.To.Add(mail1);
            mail.Subject = "Password";
            mail.Body = pass.ToString();
            client.Send(mail);
            this.Label1.Visible = true;
            this.Label1.Text = "A mail containing password has been sent";
        }
    }
}