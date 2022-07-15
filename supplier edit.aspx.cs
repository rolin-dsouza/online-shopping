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

public partial class supplier_edit : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        c = new connect();
        ds = new DataSet();
        if (DropDownList1.Items.Count == 0)
        {
            c.cmd.CommandText = "select distinct[sname] from [supplier]";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "edit");
            if (ds.Tables["edit"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("--select--");
                int i;
                for (i = 0; i < ds.Tables["edit"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["edit"].Rows[i].ItemArray[0].ToString());
                }
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
            try
            {
                c = new connect();
                c.cmd.CommandText = "select * from supplier where sname='" + DropDownList1.SelectedItem.Text + "'";
                ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "edit");
                if (ds.Tables["edit"].Rows.Count > 0)
                {
                    txtsupname.Text = Convert.ToString(ds.Tables["edit"].Rows[0].ItemArray[0]);
                    txtaddress.Text = Convert.ToString(ds.Tables["edit"].Rows[0].ItemArray[2]);
                    txtpincode.Text = Convert.ToString(ds.Tables["edit"].Rows[0].ItemArray[3]);
                    txtphone.Text = Convert.ToString(ds.Tables["edit"].Rows[0].ItemArray[4]);
                    txtemail.Text = Convert.ToString(ds.Tables["edit"].Rows[0].ItemArray[5]);
                    txtstatus.Text = Convert.ToString(ds.Tables["edit"].Rows[0].ItemArray[6]);
                }
                else
                {
                    MessageBox.Show("supplier with selected name does not exists");
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
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (txtsupname.Text == "" || txtaddress.Text == "" || txtpincode.Text == "" || txtemail.Text == "" || txtphone.Text == "")
        {
            MessageBox.Show("Enter all fields");
        }
        else
        {
          try 
          {
              c = new connect();
                c.cmd.CommandText = "select * from supplier where sname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "editt");
                if (ds.Tables["editt"].Rows.Count > 0)
                {
                    c.cmd.CommandText = "update supplier set saddr=@saddr,pcode=@pcode,phno=@phno,mail=@mail,status=@status where sname='" + DropDownList1.SelectedItem.Text.ToString() + "'";

                    c.cmd.Parameters.Add("@saddr", SqlDbType.NVarChar).Value = txtaddress.Text;
                    c.cmd.Parameters.Add("@pcode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpincode.Text);
                    c.cmd.Parameters.Add("@phno", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                    c.cmd.Parameters.Add("@mail", SqlDbType.NVarChar).Value = txtemail.Text;
                    c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = txtstatus.Text;


                    c.cmd.ExecuteNonQuery();
                    MessageBox.Show("supplier edited");
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
    protected void Button6_Click(object sender, EventArgs e)
    {
        txtsupname.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        txtstatus.Text = "";
        txtpincode.Text = "";



    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier view.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier delete.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier details.aspx");
    }
    
}
