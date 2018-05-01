using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_Orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Master.PageName = "View  Successful  Orders";
        if (!IsPostBack)
        {
            refreshdata();
        }
    }
    public void refreshdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Customer_Orders";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GiveOrders.DataSource = ds;
        GiveOrders.DataBind();
        da.Dispose();
        con.Close();
    }
    protected void GiveOrders_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GiveOrders.PageIndex = e.NewPageIndex;
        refreshdata();
    }
}