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


public partial class supplier_delete : System.Web.UI.Page
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
            c.cmd.CommandText = "select distinct[sname] from [supplier]";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "sup");
            if (ds.Tables["sup"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("---select--");
                int i;
                for (i = 0; i < ds.Tables["sup"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["sup"].Rows[i].ItemArray[0].ToString());
                }
            }
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
            adp.Fill(ds, "del");
            if (ds.Tables["del"].Rows.Count > 0)
            {
                TextBox1.Text = Convert.ToString(ds.Tables["del"].Rows[0].ItemArray[0]);
            }
            else
            {
                MessageBox.Show("supplier with entered id does not exists");
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
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            string st = "inactive";
            c.cmd.CommandText = "select * from supplier where sname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "del");
            if (ds.Tables["del"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update supplier set status=@status where sname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
                c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = st;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("supplier: " + DropDownList1.SelectedItem.Text.ToString() + " is inactived");
                TextBox1.Text = "";
            }

            else
                MessageBox.Show("supplier does not exists");
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
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        DropDownList1.SelectedItem.Text = "";
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("supplier details.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier edit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier view.aspx");
    }
}
