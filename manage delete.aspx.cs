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

public partial class manage_delete : System.Web.UI.Page
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
            string stt = "in stock";
            c.cmd.CommandText = "select distinct[pname] from [inventory] where status='"+stt+"' ";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "cat");
            if (ds.Tables["cat"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("---select--");
                int i;
                for (i = 0; i < ds.Tables["cat"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["cat"].Rows[i].ItemArray[0].ToString());
                }
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage product.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage edit.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage view.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from inventory where pname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "del");
            if (ds.Tables["del"].Rows.Count > 0)
            {
                TextBox1.Text = Convert.ToString(ds.Tables["del"].Rows[0].ItemArray[0]);
            }
            else
            {
                MessageBox.Show("category with entered id/name does not exists");
            }
        }
        catch
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
            string st = "out of stock";
            c.cmd.CommandText = "select * from inventory where pname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "inv");
            if (ds.Tables["inv"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update inventory set status=@status where pid='" + TextBox1.Text + "'";
                c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = st;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("item: " + DropDownList1.SelectedItem.Text.ToString() + " is out of stock");
                TextBox1.Text = "";
            }

            else
                MessageBox.Show("select item name");
            TextBox1.Text = "";
            c.cnn.Close();

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
