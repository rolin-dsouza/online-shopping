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
using System.Data .SqlClient ;
using System.Windows .Forms ;

public partial class supplier_view : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            
            c = new connect();
            c.cmd.CommandText = "select * from supplier ";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "sup");
            if (ds.Tables["sup"].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables["sup"];
                GridView1.DataBind();
            }
            else
            {
                MessageBox.Show("no active suppliers");
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier edit.aspx");
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
