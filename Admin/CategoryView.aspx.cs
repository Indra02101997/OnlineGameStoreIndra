using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_CategoryView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = " View  Categories";
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
        String s = "Select * from Category";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Categories.DataSource = ds;
        Categories.DataBind();
        con.Close();
    }
    protected void Categories_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Categories.PageIndex = e.NewPageIndex;
        refresh();
    }
}