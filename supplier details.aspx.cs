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

public partial class supplier_details : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

        if (txtsupid .Text  == "" || txtsupname.Text == "" || txtpin.Text == "" || txtemail .Text  == "" || txtphone .Text == ""||txtaddress .Text =="")

        {
            MessageBox.Show("Enter all fields");
        }
        else
        {
            try
            {
                c = new connect();
                string st = "active";

                c.cmd.CommandText = "select * from supplier where sname='" + txtsupname.Text + "'";
                SqlDataAdapter adp = new SqlDataAdapter();
                DataSet ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "supp");
                if (ds.Tables["supp"].Rows.Count > 0)
                {
                    MessageBox.Show("already exists..supplier name must be different");
                    txtsupname.Text = "";
                }
                else
                {


                    c.cmd.CommandText = "insert into supplier values(@sid,@sname,@saddr,@pcode,@phno,@mail,@status)";
                    c.cmd.Parameters.Add("@sid", SqlDbType.NVarChar).Value = txtsupid.Text;
                    c.cmd.Parameters.Add("@sname", SqlDbType.NVarChar).Value = txtsupname.Text;
                    c.cmd.Parameters.Add("@saddr", SqlDbType.NVarChar).Value = txtaddress.Text;
                    c.cmd.Parameters.Add("@pcode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpin.Text);
                    c.cmd.Parameters.Add("@phno", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                    c.cmd.Parameters.Add("@mail", SqlDbType.NVarChar).Value = txtemail.Text;
                    c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = st;


                    c.cmd.ExecuteNonQuery();
                    MessageBox.Show("Inserted supplier");
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
    
}
    protected void Button6_Click(object sender, EventArgs e)
    {
        txtsupid.Text = "";
        txtsupname.Text = "";
        txtaddress.Text = "";
        txtphone.Text = "";
        txtpin.Text = "";
        txtemail.Text = "";

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        c = new connect();
        string s = "S";
        int count;
        c.cmd.CommandText = "select count(sid) from supplier where sid like'S%'";
        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        txtsupid.Text = s + count.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier delete.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier edit.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier details.aspx");
    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
        Response.Redirect("supplier view.aspx");
    }
   
}
