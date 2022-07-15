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

public partial class reorder_level : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            c.cmd.CommandText = "select pid,pname,qty,price,status from inventory where qty<25";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "logg");
            if (ds.Tables["logg"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["logg"];
                GridView1.DataBind();
            }
            else
            {
                MessageBox.Show("All items are in qty above 25");
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("place order.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("order details.aspx");
    }
}
