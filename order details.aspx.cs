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

public partial class order_details : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            c.cmd.CommandText = "select purchase_order.pono,date,purchase_order.sid,supplier.sname,purchase_order_details.pid,inventory.pname,purchase_order_details.qty from purchase_order,purchase_order_details,supplier,inventory where purchase_order.pono=purchase_order_details.pono and purchase_order.sid=supplier.sid and purchase_order_details.pid=inventory.pid ";
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
                MessageBox.Show("NO purchase order");
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("view sales order.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("reorder level.aspx");
    }
}
