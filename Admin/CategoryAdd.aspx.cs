using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_CategoryAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = "Add  New  Category";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name=this.TextBox1.Text;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string s = "insert into Category(category_name) values (@category_name)";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("category_name", name);
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
        con.Close();
    }
}