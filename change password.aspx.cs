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

public partial class change_password : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c = new connect();
        c.cmd.CommandText = "select email from customer where email='" + TextBox1.Text + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "change");
        if (ds.Tables["change"].Rows.Count > 0)
        {
            Panel2.Visible = true;
            c.cmd.CommandText = "update customer set setpassword='" + TextBox2.Text + "',confpassword='" + TextBox3.Text + "' where email='" + TextBox1.Text + "'";
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("Password changed");
            Response.Redirect("default.aspx");
        }
        else
        {
            MessageBox.Show("invalid email address");
        }


    }
    protected void btnemailok_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            MessageBox.Show("Please Enter Email Address");
        }
        else
        {
            Panel2.Visible = true;
            string st2="active";
            c = new connect();
            c.cmd.CommandText = "select * from customer where email='" + TextBox1.Text.ToString() + "' and status='" + st2 + "'";

            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "ch");
            if (ds.Tables["ch"].Rows.Count > 0)
            {

                Panel2.Visible = true;
            }
            else
            {
                MessageBox.Show("invalid email Address");
                Panel2.Visible = false;
                TextBox1.Text = "";
            }
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            string pass = TextBox2.Text;
            TextBox2.TextMode = TextBoxMode.Password;
            TextBox2.Attributes.Add("value", pass);
            string passw = TextBox3.Text;
            TextBox3.TextMode = TextBoxMode.Password;
            TextBox3.Attributes.Add("value", passw);
            Panel2.Visible = true;
        }
        if (CheckBox1.Checked)
        {
            TextBox2.TextMode = TextBoxMode.SingleLine;
            TextBox3.TextMode = TextBoxMode.SingleLine;
            Panel2.Visible = true;
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
}
