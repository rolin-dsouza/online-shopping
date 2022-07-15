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

public partial class management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer details.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("logistics details.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage product.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("order details.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("purchase bill.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("supplier details.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}
