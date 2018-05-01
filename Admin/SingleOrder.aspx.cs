using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_SingleOrder : System.Web.UI.Page
{
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Master.PageName = "View  Order  Details";
        id = Request.QueryString.Get("tid").ToString();
        if (id == null)
        {
            Response.Redirect("Orders.aspx");
        }
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
        String s = "Select * from Cart where cart_transid='"+id+"'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Cart.DataSource = ds;
        Cart.DataBind();
        da.Dispose();
        con.Close();
    }
    protected void Cart_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Cart.PageIndex = e.NewPageIndex;
        refreshdata();
    }
}