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


   

public partial class customer_details : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            c.cmd.CommandText = "select custid,name,mobno,email,address,city,pincode,status from customer";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "cust");
            if (ds.Tables["cust"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["cust"];
                GridView1.DataBind();
            }
            else
            {
                MessageBox.Show("NO Customer");
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
        Response.Redirect("management.aspx");
    }
}
