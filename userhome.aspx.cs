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

public partial class userhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Label2.Text = Session["login"].ToString();
            Button4.Visible = false;
        }
        else
        {
            Button7.Visible = false;
            Button6.Visible = false;
            Button5.Visible = false;
            Label2.Text = "";

        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("products.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        MessageBox.Show("LOGGED OUT");
        Response.Redirect("default.aspx");
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("my account.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("my order.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("about us.aspx");
    }
}
