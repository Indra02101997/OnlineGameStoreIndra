using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Name"] == null)
                Response.Redirect("Default.aspx");
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }
    }
    protected void btnLogout(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    public string PageName
    {
        get
        {
            return lblPageName.Text;
        }
        set
        {
            lblPageName.Text = "Welcome  "+Session["name"].ToString();
        }
    }
}
