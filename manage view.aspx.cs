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

public partial class manage_view : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (DropDownList1.Items.Count == 0)
        {
            c = new connect();
            c.cmd.CommandText = "select distinct [cat_name] from inventory";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "cat");
            if (ds.Tables["cat"].Rows.Count > 0)
            {
                DropDownList1.Items.Add("--select--");
                int i;
                for (i = 0; i < ds.Tables["cat"].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables["cat"].Rows[i].ItemArray[0].ToString());
                }
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage delete.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage edit.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage product.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            
            c = new connect();
            c.cmd.CommandText = "select * from inventory where cat_name='" + DropDownList1.SelectedItem.Text.ToString() +"'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "cat");
            if (ds.Tables["cat"].Rows.Count > 0)
            {
                DataList1.DataSource = ds.Tables["cat"];
                DataList1.DataBind();
            }
            else
            {
                MessageBox.Show("no products in this selected category");
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
