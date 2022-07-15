using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class cart : System.Web.UI.Page
{
    connect c;
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-2M3FVDJ5\\SQLEXPRESS;Initial Catalog=giftshop;Integrated Security=true");
    SqlDataAdapter adp2=new SqlDataAdapter ();
    DataSet ds2=new DataSet ();
      protected void Page_Load(object sender, EventArgs e)
    {
        
       
            


            
                DataTable dt1 = new DataTable();
                dt1 = (DataTable)Session["buyitems"];
                c = new connect();
                c.cmd.CommandText = "select count(*) from cart where email='" + Session["email"] + "'";
                int n = Convert.ToInt32(c.cmd.ExecuteScalar());
                if (n == 0)
                {
                    Label3.Text = "0";
                }
                else
                {
                    Label3.Text = n.ToString();
                }
                if (Session["login"] == null)
                {
                    Label3.Visible = false;
                    Label1.Text = "";
                    Button5.Enabled = false;
                    
                }
                else
                {
                    Label1.Text = Session["login"].ToString();
                    Label3.Visible = true;
                    Button5.Enabled = true;
                   
                }
           

            


            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    Button5.Enabled = false;
                }
                else
                {
                    Button5.Enabled = true;
                }
            }
          if (!IsPostBack)
            {
                if (Session["login"] == null)
                {
                    MessageBox.Show("to add products to your cart ..you must be logged in");
                    Response.Redirect("default.aspx");
                }
            

              

            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("cartid");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("image1");
            dt.Columns.Add("price");
            dt.Columns.Add("qty");
            dt.Columns.Add("totalprice");
            if (Request.QueryString["id"] != null)
            {

                if (Session["buyitems"] == null)
                {



                    dr = dt.NewRow();
                   
                    string cd= Request.QueryString["id"];

                    c.cmd .CommandText ="select * from inventory where pid='"+cd+"'";
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = c.cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);



                    dr["cartid"] = 1;
                    dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    dr["image1"] = ds.Tables[0].Rows[0]["image1"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["qty"] = Request.QueryString["qty"];

                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int qty = Convert.ToInt32(Request.QueryString["qty"].ToString());
                    int totalprice = price * qty;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into cart values('" + dr["cartid"] + "','" + Session["email"] + "','" + dr["image1"] + "','" + dr["pid"] + "','" + dr["pname"] + "','" + dr["qty"] + "','" + dr["price"] + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                  
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button5.Enabled = true;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart.aspx");
                }
                else
                {
                   
                 




                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();

                    

                      string cd1 = Request.QueryString["id"];

                    c.cmd.CommandText = "select * from inventory where pid='" + cd1 + "'";
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = c.cmd;
                    DataSet ds = new DataSet();

                    da.Fill(ds);

                    dr["cartid"] = sr + 1;
                    dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    dr["image1"] = ds.Tables[0].Rows[0]["image1"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["qty"] = Request.QueryString["qty"];
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int qty = Convert.ToInt32(Request.QueryString["qty"].ToString());
                    int totalprice = price * qty;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);

                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into cart values('" + dr["cartid"] + "','" + Session["email"] + "','" + dr["image1"] + "','" + dr["pid"] + "','" + dr["pname"] + "','" + dr["qty"] + "','" + dr["price"] + "')", con);
                    cmd.ExecuteNonQuery();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button5.Enabled = true;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart.aspx");
                }
            }

            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                }
            }

        }
        if (GridView1.Rows.Count == 0)
        {
            Button5.Enabled = false;
            Button5.Text = "OOPS";
        }
        else
        {
            Button5.Enabled = true;
        }
        string date = DateTime.Now.ToShortDateString();
        Session["date"] = date;
        sono();
    }
    
   
    public void sono()
    {
        c = new connect();
        string sono;
        int count;
        
        c.cmd.CommandText = "select count(sono) from sales";

        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        sono = count.ToString();
        Session["sono"] = sono;
    }
    
        public int grandtotal()
        {
             DataTable dt=new DataTable();
             dt=(DataTable)Session["buyitems"];
             int nrow=dt.Rows.Count;
             int i=0;
              int ptotalprice=0;
             while(i<nrow)
             { 
                 
                 ptotalprice=ptotalprice+Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
               i=i+1;
               Session["totalprice"] = ptotalprice.ToString();
             }
             return ptotalprice;
        }
             
                  
             




    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
       
                   

       
        if (Session["login"] == null)
        {
            Response.Redirect("default.aspx");
        }
        else
        {
            if (GridView1.Rows.Count.ToString() == "0")
            {
                MessageBox.Show("your cart is empty..you cannot place an order");
            }
            else
            {
                for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
                {
                    

                    TextBox1.Text = GridView1.Rows[i].Cells[1].Text;

                    TextBox2.Text = GridView1.Rows[i].Cells[5].Text;
                    c.cmd.CommandText = "select * from inventory where pid='" + TextBox1.Text + "'";
                    adp2.SelectCommand = c.cmd;
                    DataTable dt1 = new DataTable();
                    adp2.Fill(dt1);
                    int q;

                    if (dt1.Rows.Count > 0)
                    {
                        TextBox5.Text = Convert.ToString(dt1.Rows[0].ItemArray[2]);
                        TextBox3.Text = Convert.ToString(dt1.Rows[0].ItemArray[6]);
                        q = Convert.ToInt32(TextBox3.Text) - Convert.ToInt32(TextBox2.Text);
                        TextBox4.Text = q.ToString();
                        if (Convert.ToInt32(TextBox4.Text) < 0)
                        {
                            MessageBox.Show("Item: " + TextBox5.Text.ToString() + "is only " + TextBox3.Text.ToString() + "in stock");
                            Response.Redirect("cart.aspx");
                        }
                    }
                }
                
                   
                Response.Redirect("confirm order.aspx");
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["cartid"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);
            TableCell prid = GridView1.Rows[e.RowIndex].Cells[1];
            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                con.Open();
                SqlCommand cmd = new SqlCommand("delete top(1)from cart where pid='" + prid.Text + "' and email='"+Convert .ToString (Session["email"]) + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                break;
            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["cartid"] = i;
            dt.AcceptChanges();
        }
        Session["buyitems"] = dt;
        Response.Redirect("cart.aspx");
    }
    public void clearcart()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from cart where email='" + Session["email"] + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("cart.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["buyitems"] = null;
        clearcart();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("about us.aspx");
    }
}
