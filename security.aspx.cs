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

public partial class security : System.Web.UI.Page
{

    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds;
    public static int countt = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void btnemail_Click(object sender, EventArgs e)
    {


        if (txtemail.Text == "")
        {
            MessageBox.Show("Please Enter Email Address");
        }
        else
        {
           
            
            Panel2.Visible = true;
            c = new connect();
            string st="active";
            c.cmd.CommandText = "select * from customer where email='" + txtemail.Text.ToString() +  "' and status='"+st+"'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "security");
            if (ds.Tables["security"].Rows.Count > 0)
            {
                lblsecqn.Text = ds.Tables["security"].Rows[0].ItemArray[9].ToString();
                Panel2.Visible = true;
            }
            else
            {
                MessageBox.Show("invalid email Address");
                Panel2.Visible = false;
                txtemail.Text = "";
            }
        }


    }
    protected void btnsec_Click(object sender, EventArgs e)
    {

        countt++;
        c = new connect();
        c.cmd.CommandText = "select * from customer where email='" + txtemail.Text.ToString() + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "security");
        if (ds.Tables["security"].Rows.Count > 0)
        {
            if (TextBox1.Text.ToString() == ds.Tables["security"].Rows[0].ItemArray[10].ToString())
            {
                Session["email"] = txtemail.Text.ToString();
                MessageBox.Show("Now you can change your password");
                Response.Redirect("change password.aspx");
            }
            else
            {
                if (countt == 1)
                {

                    MessageBox.Show("wrong answer.");
                    Panel2.Visible = true;
                    TextBox1.Text = "";
                }
                else if (countt == 2)
                {

                    MessageBox.Show("wrong answer..");
                    Panel2.Visible = true;
                    TextBox1.Text = "";
                }
                else if (countt == 3)
                {
                    string st = "inactive";
                    c.cmd .CommandText ="update customer set status='"+st+"' where email='"+txtemail .Text +"'";
                    c.cmd.ExecuteNonQuery();


                    MessageBox.Show("you are blocked..please register with another email address");
                    Panel2.Visible = false;
                    TextBox1.Text = "";
                    Response.Redirect("registration.aspx");
                }
            }
        }
    }
}
