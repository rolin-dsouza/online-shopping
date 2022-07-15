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
using System.Windows.Forms;
using System.Data.SqlClient;

public partial class sales_bill : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    SqlDataAdapter adp1 = new SqlDataAdapter();
    SqlDataAdapter adp2 = new SqlDataAdapter();
    DataSet ds2 = new DataSet();

    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    int count; 
    protected void Page_Load(object sender, EventArgs e)
    {
        txttax.Text = Convert.ToString(8);
        try
        {
            c = new connect();
            TextBox1.Text = DateTime.Today.ToShortDateString();
            string sb = "SB";
            c.cmd.CommandText = "select count(sbno) from sales_bill where sbno like 'SB%'";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            txtsalesbillno.Text = sb + count.ToString();

            c.cmd.CommandText = "select * from sales_order where email='" + Session["email"] + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "log");
            if (ds.Tables["log"].Rows.Count > 0)
            {
              txtsalesorderno.Text = Convert.ToString(ds.Tables["log"].Rows[0].ItemArray[0]);

            }
            c.cmd.CommandText = "select * from customer where email='" + Session["email"] + "'";
            ds1 = new DataSet();
            adp1.SelectCommand = c.cmd;
            adp1.Fill(ds1, "log");
            if (ds1.Tables["log"].Rows.Count > 0)
            {
                txtcustid.Text = Convert.ToString(ds1.Tables["log"].Rows[0].ItemArray[0]);
                txtcustname.Text = Convert.ToString(ds1.Tables["log"].Rows[0].ItemArray[1]);
                Label10.Text = Convert.ToString(ds1.Tables["log"].Rows[0].ItemArray[6]);
                Label12.Text = Convert.ToString(ds1.Tables["log"].Rows[0].ItemArray[7]);
                Label15.Text = Convert.ToString(ds1.Tables["log"].Rows[0].ItemArray[8]);

            }
            c.cmd.CommandText = "select [pid],[pname],[qty],[price] from cart where email='" + Session["email"] + "'";
            adp2.SelectCommand = c.cmd;
            adp2.Fill(ds2, "gd");
            if (ds2.Tables["gd"].Rows.Count > 0)
            {
                double price = Convert.ToDouble(ds2.Tables[0].Rows[0]["price"]);
                int qty = Convert.ToInt32(ds2.Tables[0].Rows[0]["qty"]);
                double totatlprice = Convert.ToDouble(Session["totalprice"]);
                GridView1.DataSource = ds2.Tables["gd"];
                GridView1.DataBind();
            }
            if (GridView1.Rows.Count > 0)
            {
                GridView1.FooterRow.Cells[2].Text = "Total Amount";
                GridView1.FooterRow.Cells[3].Text = Session["totalprice"].ToString();
            }
            TextBox2.Text = Session["totalprice"].ToString();
            c.cmd.CommandText = "delete from cart where email='" + Session["email"] + "'";
            c.cmd.ExecuteNonQuery();
            double total = Convert.ToDouble(TextBox2.Text);
            double gst = Convert.ToDouble(txttax.Text) / 100;
            gst = gst * total;
            Session["gst"] = gst.ToString();

            double gtotal = total + gst+50;
            txtgrand.Text = gtotal.ToString();

        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }



        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into sales_bill values(@sbno,@date,@sono,@email,@gtotal,@tax)";
            c.cmd.Parameters.Add("@sbno", SqlDbType.NVarChar).Value = txtsalesbillno.Text;

            c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = TextBox1.Text;
            c.cmd.Parameters.Add("@sono", SqlDbType.NVarChar).Value = txtsalesorderno.Text;
            c.cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"];
            c.cmd.Parameters.Add("@gtotal", SqlDbType.Decimal).Value = txtgrand.Text;
            c.cmd.Parameters.Add("@tax", SqlDbType.Decimal).Value = Session["gst"].ToString();
            c.cmd.ExecuteNonQuery();

            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                c.cmd.CommandText = "insert into sales_bill_details(sbno,pid,qty,price)values('" + txtsalesbillno.Text + "','" + GridView1.Rows[i].Cells[0].Text + "'," + GridView1.Rows[i].Cells[2].Text + "," + GridView1.Rows[i].Cells[3].Text + ")";

                c.cmd.ExecuteNonQuery();
            }
            MessageBox.Show("DONE");
            Response.Redirect("delivery.aspx");

           
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
