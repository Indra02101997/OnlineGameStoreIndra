using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_UserFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = " View  Feedback";
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
        String s = "Select * from Feedback";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Feedback.DataSource = ds;
        Feedback.DataBind();
        con.Close();
    }
    protected void Feedback_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Feedback_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Feedback.PageIndex = e.NewPageIndex;
        refresh();
    }
}