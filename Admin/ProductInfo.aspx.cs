using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_ProductInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = "Product    Details";
        if (!IsPostBack)
        {
            refreshdata();
        }
    }
    public void refreshdata()
    {
        SqlDataSource da1 = new SqlDataSource();
        da1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        da1.SelectCommand = @"SELECT Product.product_id,Product.product_name,Product.product_price,Product.product_stock,Product.product_cdate,Category.category_name FROM  Category INNER JOIN Product ON Category.category_id = Product.category_id";
        da1.DataBind();
        Products.DataSource = da1;
        Products.DataBind();
        da1.Dispose();


    }
    protected void Products_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Products.PageIndex = e.NewPageIndex;
        refreshdata();
    }
}