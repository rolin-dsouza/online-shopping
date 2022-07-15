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

public partial class products : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["addproduct"] = "false";
        c = new connect();
        c.cmd.CommandText = "select count(*) from cart where email='" + Session["email"] + "'";
        int n = Convert.ToInt32(c.cmd.ExecuteScalar());
        if (n == 0)
        {
            Label2.Text = "0";
        }
        else
        {
            Label2.Text = n.ToString();
        }
        if (Session["login"] == null)
        {
            Label2.Visible = false;
            Label1.Text = "";
            Button2.Visible = false;
         
        }
        else
        {
            Button4.Visible = false;
            Label1.Text = Session["login"].ToString();
            Label2.Visible = true;
            
        }
        if (DropDownList1.Items.Count == 0)
        {
            c = new connect();
            c.cmd.CommandText = "select distinct[cat_name] from [inventory]";
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
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            string st = "in stock";
            c.cmd.CommandText = "select * from inventory where cat_name='" + DropDownList1.SelectedItem.Text.ToString() + "'and status='" + st + "'";
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
                MessageBox.Show("no items in this category");
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
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");

    }
   
    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["addproduct"] = "true";
        if (e.CommandName == "addtocart")
        {
            DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList2"));
            Response.Redirect("cart.aspx?id="+e.CommandArgument .ToString ()+"&qty="+list.SelectedItem.ToString ());
         
        }

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
     
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        MessageBox.Show("LOGGED OUT");
        Response.Redirect("default.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("about us.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}
