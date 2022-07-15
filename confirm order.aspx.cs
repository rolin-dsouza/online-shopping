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

public partial class confirm_order : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();
    SqlDataAdapter adp2 = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    string orderno;


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

        c = new connect();
        string cat = "SO";
        txtemail.Text = Session["email"].ToString();
        TextBox1.Text = Session["login"].ToString();
        int cnt;
        c.cmd.CommandText = "select count(sono) from sales_order";
         cnt = Convert.ToInt32(c.cmd.ExecuteScalar()) + 1;
            orderno = cat + cnt.ToString();
            c.cmd.CommandText = "select * from customer where email='" + Session["email"] + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "dis");
            if (ds.Tables["dis"].Rows.Count > 0)
            {
                TextBox4 .Text = ds.Tables["dis"].Rows[0].ItemArray[6].ToString();
               TextBox2 .Text  = ds.Tables["dis"].Rows[0].ItemArray[7].ToString();
                TextBox3 .Text = ds.Tables["dis"].Rows[0].ItemArray[8].ToString();
            }
            c.cmd.CommandText = "select [pid],[pname],[qty],[price] from cart where email='" + Session["email"] + "'";
            adp1.SelectCommand = c.cmd;
            adp1.Fill(ds1, "gd");
            if(ds1.Tables["gd"].Rows.Count>0)
            {
                double price=Convert.ToDouble(ds1.Tables[0].Rows[0]["price"]);
                int qty=Convert.ToInt32(ds1.Tables[0].Rows[0]["qty"]);
                double totatlprice=Convert.ToDouble( Session["totalprice"]);
                GridView1.DataSource=ds1.Tables["gd"];
                GridView1.DataBind();
            }
            if(GridView1.Rows.Count>0)
            {
                GridView1.FooterRow.Cells[2].Text="Total Amount";
                GridView1.FooterRow.Cells[3].Text=Session["totalprice"].ToString();
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
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void btnconfirmorder_Click(object sender, EventArgs e)
    {
        Session["city"] = TextBox2.Text.ToString();
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into sales_order values(@sono,@email,@date,@gtotal)";
            c.cmd.Parameters.Add("@sono", SqlDbType.NVarChar).Value = orderno.ToString();
            c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"].ToString();
            c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = DateTime.Today.ToShortDateString();
            c.cmd.Parameters.Add("@gtotal", SqlDbType.Decimal).Value = Session["totalprice"].ToString();
            c.cmd.ExecuteNonQuery();
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                c.cmd.CommandText = "insert into sales_order_details(sono,pid,qty,price)values('" + orderno.ToString() + "','" + GridView1.Rows[i].Cells[0].Text + "'," + GridView1.Rows[i].Cells[2].Text + "," + GridView1.Rows[i].Cells[3].Text + ")";
               
                c.cmd.ExecuteNonQuery();

                txtpid.Text = GridView1.Rows[i].Cells[0].Text;
                txtprice.Text = GridView1.Rows[i].Cells[3].Text;
                txtqty.Text = GridView1.Rows[i].Cells[2].Text;
                c.cmd.CommandText = "select * from inventory where pid='" + txtpid .Text  + "'";
                adp2.SelectCommand = c.cmd;
                DataTable dt1= new DataTable();
                adp2.Fill(dt1);
                int q;

                if (dt1.Rows.Count >0)
                {
                    TextBox5 .Text  = Convert.ToString (dt1.Rows[0].ItemArray[6]);
                    q = Convert .ToInt32 (TextBox5 .Text ) - Convert.ToInt32(txtqty .Text );
                    txtvisisble.Text = q.ToString();
                    c.cmd.CommandText = "update inventory set qty= '"+ txtvisisble .Text  +"' where pid= '"+ txtpid .Text + "'";
           

                    c.cmd.ExecuteNonQuery();
                    c.cmd.CommandText = "select * from inventory where pid='" + txtpid.Text + "'";
                    SqlDataAdapter adp1 = new SqlDataAdapter();
                    DataTable ds1 = new DataTable();
                    adp1.SelectCommand = c.cmd;
                    adp1.Fill(ds1);
                    string qtyy=Convert.ToString(ds1.Rows[0].ItemArray[6]);
                    if (qtyy == "0")
                {
                    string st = "out of stock";
                    c.cmd.CommandText = "update inventory set status='"+st+"' where pid='" + txtpid.Text + "'";
                    
                    c.cmd.ExecuteNonQuery();
                }
                   
                   

                   
                }

                
         
            }
           
            
            MessageBox.Show("Your Order is placed");
            Response.Redirect("sales bill.aspx");
        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }



    }
    protected void btnchangeaddress_Click(object sender, EventArgs e)
    {
        Response.Redirect("my account.aspx");
    }
}
