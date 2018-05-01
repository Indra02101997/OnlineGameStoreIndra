using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = " View  Customers";
        if (!IsPostBack)
        {
            refresh();
        }
    }
    public void refresh()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from UserInfo";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Customers.DataSource = ds;
        Customers.DataBind();
        da.Dispose();
        con.Close();
    }
    protected void Customers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Customers.PageIndex = e.NewPageIndex;
        refresh();
    }
}