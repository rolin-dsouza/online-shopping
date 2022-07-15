using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;


public partial class _Default : System.Web.UI.Page 
{
    connect c;
    public static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            string pass = txtpassword.Text;
            txtpassword.TextMode = TextBoxMode.Password;
            txtpassword.Attributes.Add("value", pass);
        }
        if (CheckBox1.Checked)
        {
            txtpassword.TextMode = TextBoxMode.SingleLine;
        }
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("security.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c = new connect();

        if (txtusername.Text == "admin")
        {

            if (txtusername.Text == "admin" && txtpassword.Text == "admin")
            {
                MessageBox.Show("Admin Login Successfull");
                Response.Redirect("management.aspx");
            }
            else
            {
                MessageBox.Show("Invalid username or Password");
                txtusername.Text = "";
                txtpassword.Text = "";
            }
        }
       
            string stt = "inactive";
            c.cmd.CommandText = "select * from customer where name='" + txtusername.Text + "' and email='" + txtemail.Text + "' and setpassword='" + txtpassword.Text + "'and status='" + stt + "'";
            SqlDataAdapter adp5 = new SqlDataAdapter();
            adp5.SelectCommand = c.cmd;
            DataSet ds5 = new DataSet();
            adp5.Fill(ds5, "status");
            if (ds5.Tables["status"].Rows.Count > 0)
            {
                MessageBox.Show("you are already blocked...register with new account");
                txtusername.Text = "";
                txtemail.Text = "";
                txtpassword.Text = "";


            }
        else 
            {




            try
            {

                string st = "active";
                c.cmd.CommandText = "select * from customer where name='" + txtusername.Text + "' and email='" + txtemail.Text + "' and setpassword='" + txtpassword.Text + "' and status='" + st + "'";
                SqlDataAdapter adp = new SqlDataAdapter();

                DataSet ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "customer");
                if (ds.Tables["customer"].Rows.Count > 0)
                {
                    Session["login"] = txtusername.Text.ToString();
                    Session["email"] = txtemail.Text.ToString();
                    Session["buyitems"] = null;
                    fillsavedcart();
                    MessageBox.Show("Login successfull");
                    Response.Redirect("userhome.aspx");
                }
                else
                {
                    count++;
                    if (count == 1)
                    {

                        MessageBox.Show("invalid credential.");
                        txtemail.Text = "";
                        txtpassword.Text = "";
                        txtusername.Text = "";
                    }
                    else if (count == 2)
                    {

                        MessageBox.Show("invalid credential..");
                        txtemail.Text = "";
                        txtpassword.Text = "";
                        txtusername.Text = "";
                    }
                    else if (count == 3)
                    {

                        MessageBox.Show("try forgot password");
                        Response.Redirect("security.aspx");
                        txtemail.Text = "";
                        txtpassword.Text = "";
                        txtusername.Text = "";
                    }
                    else if (count == 4)
                    {

                        MessageBox.Show("invalid credential...");
                        txtemail.Text = "";
                        txtpassword.Text = "";
                        txtusername.Text = "";
                    }
                    else if (count == 5)
                    {

                        MessageBox.Show("invalid credential....");
                        txtemail.Text = "";
                        txtpassword.Text = "";
                        txtusername.Text = "";
                    }
                    else if (count == 6)
                    {

                        MessageBox.Show("try forgot password");
                        Response.Redirect("security.aspx");
                        txtemail.Text = "";
                        txtpassword.Text = "";
                        txtusername.Text = "";
                    }
                }
            }
            catch (Exception)
            {
            }
            finally
            {
                c.cnn.Close();
            }

        }
    }


    
    private void fillsavedcart()
    {
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("cartid");
        dt.Columns.Add("pid");
        dt.Columns.Add("pname");
        dt.Columns.Add("image1");
        dt.Columns.Add("price");
        dt.Columns.Add("qty");
        dt.Columns.Add("totalprice");
        string mycon = "Data Source=LAPTOP-2M3FVDJ5\\SQLEXPRESS;Initial Catalog=giftshop;Integrated Security=true";
        SqlConnection scon = new SqlConnection(mycon);
        string myquery = "select * from cart where email='" + Session["email"].ToString() + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int i = 0;
            int counter = ds.Tables[0].Rows.Count;
            while (i < counter)
            {
                dr = dt.NewRow();
                dr["cartid"] = i + 1;
                dr["pid"] = ds.Tables[0].Rows[i]["pid"].ToString();
                dr["pname"] = ds.Tables[0].Rows[i]["pname"].ToString();
                dr["image1"] = ds.Tables[0].Rows[i]["image1"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                dr["qty"] = ds.Tables[0].Rows[i]["qty"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                int qty = Convert.ToInt16(ds.Tables[0].Rows[i]["qty"].ToString());
                int totalprice = price * qty;
                dr["totalprice"] = totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
        }
        else
        {
            Session["buyitems"] = null;
        }
        Session["buyitems"] = dt;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void txtpassword_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtusername_TextChanged(object sender, EventArgs e)
    {
        
        
        
        
        
        
        
        
        
        
        
        
        
    if (txtusername.Text == "admin")
        {
            txtemail.Enabled = false;
            RequiredFieldValidator2.Enabled = false;
        }
    }
}
