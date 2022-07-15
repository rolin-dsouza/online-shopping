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

public partial class view_sales_order : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            c.cmd.CommandText = "select sales_order.sono,date,sales_order.email,customer.name,sales_order_details.pid,inventory.pname,sales_order_details.qty from sales_order,sales_order_details,customer,inventory where sales_order.sono=sales_order_details.sono and sales_order.email=customer.email and sales_order_details.pid=inventory.pid ";
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
                MessageBox.Show("NO Sales Order");
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("order details.aspx");
    }
}
