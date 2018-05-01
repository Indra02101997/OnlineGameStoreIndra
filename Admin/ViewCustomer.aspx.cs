using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_ViewCustomer : System.Web.UI.Page
{
    string user_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Master.PageName = "View  Customer  Details";
        user_id = Request.QueryString.Get("pid").ToString();
        if (user_id.ToString() == String.Empty)
        {
            Response.Redirect("ProductInfo.aspx");
        }
        getdata();
    }
    public void getdata()
    {
        SqlDataSource da1 = new SqlDataSource();
        da1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        da1.SelectCommand = @"SELECT * FROM UserInfo WHERE user_id=@user_id";
        da1.SelectParameters.Add("user_id", user_id);
        da1.DataBind();
        CustomerDetails.DataSource = da1;
        CustomerDetails.DataBind();
        da1.Dispose();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customer.aspx");
    }
}