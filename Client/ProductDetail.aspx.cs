using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
public partial class Client_ProductDetail : System.Web.UI.Page
{
    protected string pro_id = "";
    protected string cartprice = "";
    protected string pro_name = "";
    protected decimal cart_total;
    protected double price;
    protected int item = 0,flag=0,present=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label3.Visible = false;
        if (Session.IsNewSession != true && Session["fname"] != null && Session["id"] != null)
        {
            this.Button3.OnClientClick = "";
        }
        
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session.IsNewSession != true && Session["fname"] != null && Session["id"] != null)
        {
            this.Page.MasterPageFile = "~/Client2.master";
        }
        else
        {
            this.Page.MasterPageFile = "~/Client1.master";
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        pro_id = Request.QueryString.Get("pid").ToString();
        if (pro_id.ToString() == String.Empty)
        {
            Response.Redirect("Home.aspx");
        }
        getdata();
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "Select * from Product where product_id='" + pro_id + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Image2.ImageUrl = dr.GetValue(6).ToString();
            this.Label4.Text = dr.GetValue(1).ToString();
            pro_name = dr.GetValue(1).ToString();
            this.Label6.Text = "Rs "+dr.GetValue(3).ToString();
            price =Convert.ToDouble(dr.GetValue(3).ToString());
            cartprice = dr.GetValue(3).ToString();
            this.TextBox1.Text = dr.GetValue(2).ToString();
            item = int.Parse(dr.GetValue(4).ToString());
        }
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string qty = this.TextBox2.Text;
        int witem = int.Parse(qty);
        if ((item - witem) < 0)
        {
            flag = 1;
        }
        else
        {
            present = item - witem;
            flag = 0;
        }
        if (Session.IsNewSession != true && Session["fname"] != null && Session["id"] != null && flag==0)
        {            
            cart_total = Convert.ToDecimal(Convert.ToInt32(qty) * Convert.ToDecimal(cartprice));
            string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            String s = "insert into Cart(product_id,cart_quantity,cart_product_name,cart_product_subprice,cart_subTotal,cart_cdate,cart_transid,cart_status,user_id)values(@product_id,@cart_quantity,@cart_product_name,@cart_product_subprice,@cart_subTotal,@cart_cdate,@cart_transid,@cart_status,@user_id)";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("product_id", Convert.ToInt32(pro_id));
            cmd.Parameters.AddWithValue("cart_quantity", qty);
            cmd.Parameters.AddWithValue("cart_product_name", pro_name);
            cmd.Parameters.AddWithValue("cart_product_subprice", cartprice);
            cmd.Parameters.AddWithValue("cart_subTotal", cart_total.ToString());
            cmd.Parameters.AddWithValue("cart_cdate", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("cart_transid", Session["tid"].ToString());
            cmd.Parameters.AddWithValue("cart_status", "Pending");
            cmd.Parameters.AddWithValue("user_id", Convert.ToInt32(Session["id"]));
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                this.Label3.Visible = true;
                this.Label3.Text = "Product Sucessfully added to the cart. <br/> Please visit <a href=\"Cart.aspx\"><b> Cart Page</b></a> or do more <a href=\"Home.aspx\"> <b>Shopping</b></a>";
                update(present, pro_id);
            }
            con.Close();
        }
        else if (Session.IsNewSession != true && Session["fname"] != null && Session["id"] != null && flag == 1)
        {
            this.Label3.Visible = true;
            this.Label3.Text = "Only " + item + " products available";
            return;
        }
        else
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("~/Client/Login.aspx");
            }
            else
            {

            }
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        string qty = this.TextBox2.Text;
        int witem = int.Parse(qty);
        if ((item - witem) < 0 && item != 0)
        {
            Response.Write("<script>alert('Only " + item + " products available')</script>");
            flag = 1;
            return;
        }
        else if (item == 0)
        {
            Response.Write("<script>alert('Sorry no products are available')</script>");
            flag = 1;
            return;
        }
        else
        {
            present = item - witem;
            flag = 0;
        }
        double pri = Convert.ToDouble(Convert.ToDouble(qty) * Convert.ToDouble(price));
        this.Label6.Text = "Rs " + pri.ToString()+ ".00";
        this.Label5.Text = "Price :";
    }
    public void update(int qty, string pid)
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        String s = "update Product set product_stock=@product_stock where product_id=@product_id";
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.Parameters.AddWithValue("product_stock", qty.ToString());
        cmd.Parameters.AddWithValue("product_id", Convert.ToInt32(pid));
        int i = cmd.ExecuteNonQuery();
        con.Close();
    }
}