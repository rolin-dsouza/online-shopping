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

public partial class purchase_bill : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    int count;
    double grandtotal = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            c = new connect();

            c.cmd.CommandText = "select count(serialno) from purchase_bill";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            Label7.Text = count.ToString();
            TextBox3.Text = DateTime.Today.ToShortDateString();

            string pb = "PB";
            c.cmd.CommandText = "select count(pbno) from purchase_bill where pbno like 'PB%'";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            TextBox6.Text = pb + count.ToString();
            if (DropDownList1.Items.Count == 0)
            {

                DataSet ds = new DataSet();
                c.cmd.CommandText = "select distinct[pono] from [purchase_order]";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "logg");
                if (ds.Tables["logg"].Rows.Count > 0)
                {
                    DropDownList1.Items.Add("--select--");
                    int i;
                    for (i = 0; i < ds.Tables["logg"].Rows.Count; i++)
                    {
                        DropDownList1.Items.Add(ds.Tables["logg"].Rows[i].ItemArray[0].ToString());
                    }
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
        grandtotal = Convert.ToDouble((string)Session["grandtotal"]);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from purchase_order where pono='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "log");
            if (ds.Tables["log"].Rows.Count > 0)
            {
                DropDownList2.Enabled = true;
                TextBox4.Text = Convert.ToString(ds.Tables["log"].Rows[0].ItemArray[2]);
                TextBox5.Text = Convert.ToString(ds.Tables["log"].Rows[0].ItemArray[3]);

                c.cmd.CommandText = "select * from purchase_bill where pono='" + DropDownList1.SelectedItem.Text.ToString() + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "logg");
                if (ds.Tables["logg"].Rows.Count > 0)
                {
                    MessageBox.Show("bill details already entered for this purchase order");
                }


                else
                {

                    if (DropDownList2.Items.Count == 0)
                    {
                        c = new connect();
                        ds = new DataSet();
                        c.cmd.CommandText = "select distinct[pid] from [purchase_order_details] where [pono]='" + DropDownList1.SelectedItem.Text.ToString() + "'";
                        adp.SelectCommand = c.cmd;
                        adp.Fill(ds, "prod");
                        if (ds.Tables["prod"].Rows.Count > 0)
                        {
                            DropDownList2.Items.Add("--select--");
                            int i;
                            for (i = 0; i < ds.Tables["prod"].Rows.Count; i++)
                            {
                                DropDownList2.Items.Add(ds.Tables["prod"].Rows[i].ItemArray[0].ToString());
                            }

                        }
                    }

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
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from inventory where pid='" + DropDownList2.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "log");
            if (ds.Tables["log"].Rows.Count > 0)
            {
                TextBox1.Text = Convert.ToString(ds.Tables["log"].Rows[0].ItemArray[1]);

            }
            c.cmd.CommandText = "select * from purchase_order_details where pono='" + DropDownList1.SelectedItem.Text.ToString() + "' and pid='" + DropDownList2.SelectedItem.Text.ToString() + "'";
            adp.SelectCommand = c.cmd;
            DataSet ds1 = new DataSet();
            adp.Fill(ds1, "logg");
            if (ds1.Tables["logg"].Rows.Count > 0)
            {
                TextBox2.Text = Convert.ToString(ds1.Tables["logg"].Rows[0].ItemArray[2]);
            }

            c.cmd.CommandText = "select * from inventory where pid='" + DropDownList2.SelectedItem.Text.ToString() + "'";
            DataSet ds2 = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds2, "pri");
            if (ds2.Tables["pri"].Rows.Count > 0)
            {
                TextBox8.Text = Convert.ToString(ds2.Tables["pri"].Rows[0].ItemArray[8]);

            }
            int qty;
            double price, total;
            qty = Convert.ToInt16(TextBox2.Text);
            price = Convert.ToInt16(TextBox8.Text);
            total = qty * price;
            TextBox9.Text = Convert.ToString(total);
            total = Convert.ToDouble((Convert.ToInt16(TextBox8.Text)) * (Convert.ToInt16(TextBox2.Text)));
            grandtotal += total;
            Session["grandtotal"] = grandtotal.ToString();
            Label16.Text = (string)Session["grandtotal"];
        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into purchase_bill values(@serialno,@pbno,@date,@pono,@sid,@grandtotal)";
            c.cmd.Parameters.Add("@serialno", SqlDbType.NVarChar).Value = Label7.Text;
            c.cmd.Parameters.Add("@pbno", SqlDbType.NVarChar).Value = TextBox6.Text;
            c.cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = TextBox3.Text;
            c.cmd.Parameters.Add("@pono", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
            c.cmd.Parameters.Add("@sid", SqlDbType.NVarChar).Value = TextBox4.Text;
            c.cmd.Parameters.Add("@grandtotal", SqlDbType.Decimal).Value = Convert.ToDecimal(Label16.Text);
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("bill details updated");
            Response.Redirect("management.aspx");
        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string st="in stock";
        try
        {
            c = new connect();
            c.cmd.CommandText = "insert into purchase_bill_details values(@pbno,@pid,@qty,@price,@total)";
            c.cmd.Parameters.Add("@pbno", SqlDbType.NVarChar).Value = TextBox6.Text;
            c.cmd.Parameters.Add("@pid", SqlDbType.NVarChar).Value = DropDownList2.SelectedItem.Text;
            c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = Convert.ToInt16(TextBox2.Text);
            c.cmd.Parameters.Add("@price", SqlDbType.Decimal).Value = Convert.ToDecimal(TextBox8.Text);
            c.cmd.Parameters.Add("@total", SqlDbType.Decimal).Value = Convert.ToDecimal(TextBox9.Text);
            c.cmd.ExecuteNonQuery();

            c.cmd.CommandText = "update inventory set qty=qty+'" + TextBox2.Text + "' where pid='" + DropDownList2.SelectedItem.Text + "'";
            c.cmd.ExecuteNonQuery();
            c.cmd.CommandText = "update inventory set status='" + st + "' where pid='" + DropDownList2.SelectedItem.Text + "'";
            c.cmd.ExecuteNonQuery();

            MessageBox.Show("inventory details updated");

        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
}
