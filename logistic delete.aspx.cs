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

public partial class logistic_delete : System.Web.UI.Page
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
            c.cmd.CommandText = "select distinct[emailid] from [logistic]";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "log");
            if (ds.Tables["log"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("---select--");
                int i;
                for (i = 0; i < ds.Tables["log"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["log"].Rows[i].ItemArray[0].ToString());
                }
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from logistic where emailid='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "del");
            if (ds.Tables["del"].Rows.Count > 0)
            {
                TextBox1.Text = Convert.ToString(ds.Tables["del"].Rows[0].ItemArray[0]);
            }
            else
            {
                MessageBox.Show("logistic with selected emailid does not exists");
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
            string st = "inactive";
            c.cmd.CommandText = "select * from logistic where emailid='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "del");
            if (ds.Tables["del"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update logistic set status=@status where emailid='" + DropDownList1.SelectedItem.Text.ToString() + "'";
                c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = st;
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("logistic: " + DropDownList1.SelectedItem.Text.ToString() + " is inactived");
                TextBox1.Text = "";
            }

            else
                MessageBox.Show("logistic does not exists");
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("logistics details.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("logistic edit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("logistic view.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
}
