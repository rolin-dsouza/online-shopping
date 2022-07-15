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

public partial class delivery : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Label1.Text = Session["login"].ToString();
            
        }
        else
        {
            
            Label1.Text = "";

        }
        try
        {

            c = new connect();
            TextBox1.Text = Session["city"].ToString();
            c.cmd.CommandText = "select * from logistic where city='" + TextBox1 .Text  + "'";
            adp.SelectCommand = c.cmd;
            DataTable dt1 = new DataTable();
            adp.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                txtaddress.Text = dt1.Rows[0].ItemArray[3].ToString();
                txtemail.Text = dt1.Rows[0].ItemArray[1].ToString();
                txtphone.Text = dt1.Rows[0].ItemArray[2].ToString();
                Label5.Text = dt1.Rows[0].ItemArray[4].ToString();
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}
