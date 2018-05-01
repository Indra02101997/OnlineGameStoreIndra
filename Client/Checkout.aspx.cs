using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Client_Checkout : System.Web.UI.Page
{
    private string payment = "";
    private double total = 0.00;
    public List<Int32> qty = new List<Int32>();
    public List<Int32> id = new List<Int32>();
    public List<Int32> ori = new List<Int32>();
    protected int flag = 0, c=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            refreshdata();
            getpay();
            getdata();
        }
    }
    public void refreshdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string st = "Pending";
        string s = "Select * from Cart where cart_transid='" + Session["tid"].ToString() + "' and cart_status='" + st + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Cart.DataSource = dt;
        Cart.DataBind();
        con.Close();
    }
    public void getpay()
    {
        double sum = 0.00;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string st = "Pending";
        String s = "Select * from Cart where cart_transid='" + Session["tid"].ToString() + "' and cart_status='" + st + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            sum += (Convert.ToDouble(dr.GetValue(5).ToString()));
            id.Add(int.Parse(dr.GetValue(1).ToString()));
            qty.Add(int.Parse(dr.GetValue(2).ToString()));
        }
        total = sum;
        this.Label19.Text = sum.ToString() + ".00";
        con.Close();
        con.Open();
        for(int i=0;i<id.Count();i++)
        {    
            String s1 = "Select * from Product where product_id = "+id[i]+"";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                ori.Add(int.Parse(dr1.GetValue(4).ToString()));
            }         
        }
        con.Close();
    }
    public void getdata()
    {
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        int id = Convert.ToInt32(Session["id"].ToString());
        String s = "Select * from UserInfo where user_id=" + id + "";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string fname = dr.GetValue(1).ToString();
            string lname = dr.GetValue(2).ToString();
            this.Label6.Text = fname + " " + lname;
            this.Label8.Text = dr.GetValue(3).ToString();
            this.Label10.Text = dr.GetValue(5).ToString();
            this.Label12.Text = dr.GetValue(6).ToString();
            this.Label14.Text = dr.GetValue(7).ToString();
            this.Label16.Text = dr.GetValue(8).ToString();
            this.Label18.Text = dr.GetValue(9).ToString();
        }
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/Cart.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(payment))
        {
            Response.Write("<script>alert('Select one mode of payment')</script>");
        }
        else
        {
            string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            int id1 = Convert.ToInt32(Session["id"].ToString());
            String s = "insert into Customer_Orders(cart_transid,order_customer_name,order_total,order_payment,user_id) values(@cart_transid,@order_customer_name,@order_total,@order_payment,@user_id)";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("cart_transid", Session["tid"].ToString());
            cmd.Parameters.AddWithValue("order_customer_name", this.Label6.Text);
            cmd.Parameters.AddWithValue("order_total", this.Label19.Text);
            cmd.Parameters.AddWithValue("order_payment", payment);
            cmd.Parameters.AddWithValue("user_id", id1);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            String s1 = "update Cart set cart_status=@cart_status where cart_transid=@cart_transid";
            SqlCommand cmd1 = new SqlCommand(s1, con);
            cmd1.Parameters.AddWithValue("cart_status", "Paid");
            cmd1.Parameters.AddWithValue("cart_transid", Session["tid"].ToString());
            int j = cmd1.ExecuteNonQuery();
            if (i == 1)
            {             
                c = productupdate();
                if (c == id.Count())
                {
                    Response.Redirect("~/Client/ThankYou.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Transaction Unsuccessful')</script>");
            }
            con.Close();
            c = 0;
            id.Clear();
            qty.Clear();
            ori.Clear();
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (this.RadioButtonList1.SelectedIndex == 0)
        {
            payment = "Cash On Delivery";
        }
        else if (this.RadioButtonList1.SelectedIndex == 1)
        {
            payment = "Credit Card";
        }
        else if (this.RadioButtonList1.SelectedIndex == 2)
        {
            payment = "Debit Card";
        }
        else
        {
            payment = "";
        }
    }
    public int productupdate()
    {
        flag = 0;
        string conn = System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        for (int i = 0; i < id.Count(); i++)
        {
            
            int stock = qty[i];
            int total = ori[i];
            int rem = total - stock;
            String s = "update Product set product_stock=@product_stock where product_id=@product_id";
            SqlCommand cmd = new SqlCommand(s,con);
            cmd.Parameters.AddWithValue("product_stock", rem.ToString());
            cmd.Parameters.AddWithValue("product_id", id[i]);
            int i1=cmd.ExecuteNonQuery();
            if (i1 == 1)
            {
                flag += 1;
            }
        }
        con.Close();
        return flag;
    }
}