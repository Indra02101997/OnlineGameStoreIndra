using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_ProductDelete : System.Web.UI.Page
{
    string pro_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Master.PageName = "Remove  Product";
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        pro_id = Request.QueryString.Get("pid").ToString();
        if (pro_id.ToString() == String.Empty)
        {
            Response.Redirect("ProductInfo.aspx");
        }
        getdata();
    }
    public void getdata()
    {
        SqlDataSource da1 = new SqlDataSource();
        da1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        da1.SelectCommand = @"SELECT Category.category_id, Category.category_name, Product.product_name, Product.product_desc, Product.product_price, Product.product_stock, Product.product_image, Product.category_id AS cat_id, Product.product_id FROM Product INNER JOIN Category ON Product.product_id = @product_id";
        da1.SelectParameters.Add("product_id", pro_id);
        da1.DataBind();
        formview1.DataSource = da1;
        formview1.DataBind();
        da1.Dispose();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string confirmValue = Request.Form["confirm_value"];
        if (confirmValue == "Yes")
        {
            string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            String s = "delete from Product where product_id=@product_id";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("product_id", Convert.ToInt32(pro_id));
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Redirect("ProductInfo.aspx");
            }
            
        }
        else
        {
            Response.Redirect("ProductInfo.aspx");
        }
    }
}