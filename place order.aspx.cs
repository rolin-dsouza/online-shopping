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

public partial class place_order : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (DropDownList1.Items.Count == 0)
        {
            c = new connect();
            DataSet ds = new DataSet();
            string st = "active";
            c.cmd.CommandText = "select distinct[sname] from [supplier] where status='"+st+"' ";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "pod");
            if (ds.Tables["pod"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("--select--");
                int i;
                for (i = 0; i < ds.Tables["pod"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["pod"].Rows[i].ItemArray[0].ToString());
                }
            }
        }
        if (DropDownList2.Items.Count == 0)
        {
            c = new connect();
            DataSet ds = new DataSet();
            c.cmd.CommandText = "select distinct[pname] from [inventory]";
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
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {
        c = new connect();
        string po = "PO";
        int count;
        c.cmd.CommandText = "select count(pono) from purchase_order where pono like 'PO%'";
        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        txtpurorno.Text = po + count.ToString();
        TextBox4.Text = DateTime.Today.ToShortDateString();
        btnadditem.Enabled = false;
        btn_finish.Enabled = false;
       


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("order details.aspx");
    }
    protected void btnadditem_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtpurorno.Text == "" || txtsupid.Text == "" || txtqty.Text == "" || txtsupemail.Text == "")
            {
                MessageBox.Show("enter all the fields");
            }

            c = new connect();
            btn_finish.Enabled = true;

            c.cmd.CommandText = "insert into purchase_order_details values(@pono,@pid,@qty,@pname)";
            c.cmd.Parameters.Add("@pono", SqlDbType.NVarChar).Value = txtpurorno.Text;
            c.cmd.Parameters.Add("@pid", SqlDbType.NVarChar).Value = txtprodid.Text;
            if (txtqty.Text == "0")
            {
                MessageBox.Show("quantity cannot be zero");
                txtqty.Text = "";
            }
            c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = Convert.ToInt16(txtqty.Text);
            c.cmd.Parameters.Add("@pname", SqlDbType.NVarChar).Value = DropDownList2.SelectedItem.Text;
            c.cmd.ExecuteNonQuery();
            txtprodid.Text = "";
            txtqty.Text = "";
            DropDownList2.SelectedItem.Enabled = false;
            MessageBox.Show("item:" + DropDownList2.SelectedItem.Text + " is placed");
        }

        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }

    }
    protected void btndone_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            ds = new DataSet();
            c.cmd.CommandText = "insert into purchase_order values(@pono,@date,@sid,@sname)";
            c.cmd.Parameters.Add("@pono", SqlDbType.NVarChar).Value = txtpurorno.Text;
            c.cmd.Parameters.Add("@date", SqlDbType.SmallDateTime).Value = TextBox4.Text;
            c.cmd.Parameters.Add("@sid", SqlDbType.NVarChar).Value = txtsupid.Text;
            c.cmd.Parameters.Add("@sname", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
            c.cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from supplier where sname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "pod");
            if (ds.Tables["pod"].Rows.Count > 0)
            {
                txtsupid.Text = Convert.ToString(ds.Tables["pod"].Rows[0].ItemArray[0]);
                txtsupemail.Text = Convert.ToString(ds.Tables["pod"].Rows[0].ItemArray[5]);
            }
            else
            {
                MessageBox.Show("supplier does not exist");
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
            btnadditem.Enabled = true;
            btn_finish.Enabled = true;
            c.cmd.CommandText = "select * from inventory where pname='" + DropDownList2.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "prod");
            if (ds.Tables["prod"].Rows.Count > 0)
            {
                txtprodid.Text = Convert.ToString(ds.Tables["prod"].Rows[0].ItemArray[0]);
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

    protected void btn_finish_Click(object sender, EventArgs e)
    {

        MessageBox.Show("NEXT");
        Response.Redirect("order details.aspx");

    }
}

