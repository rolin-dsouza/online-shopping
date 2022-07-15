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


public partial class logistics_details : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {
        c = new connect();
        string l = "L";
        int count;
        c.cmd.CommandText = "select count(logid) from logistic where logid like'L%'";
        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        txtlogid.Text = l + count.ToString();
    }
    protected void btndone_Click(object sender, EventArgs e)
    {

        
            try
            {
                c = new connect();
                string st = "active";
                if (txtemail.Text == "" || txtaddress.Text == "" || txtcity.Text == "" || txtphone.Text == "" || txtpincode.Text == "")
                {
                    MessageBox.Show("Enter all fields");
                }
                else
                {
                    c.cmd.CommandText = "select * from logistic where emailid='" + txtemail.Text + "'";
                    SqlDataAdapter adp = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    adp.SelectCommand = c.cmd;
                    adp.Fill(ds, "logg");
                    if (ds.Tables["logg"].Rows.Count > 0)
                    {
                        MessageBox.Show("already exists..logistic email must be different");
                        txtemail.Text = "";
                    }
                    else
                    {
                        c.cmd.CommandText = "insert into logistic values(@logid,@emailid,@phoneno,@address,@city,@pincode,@status)";
                        c.cmd.Parameters.Add("@logid", SqlDbType.NVarChar).Value = txtlogid.Text;
                        c.cmd.Parameters.Add("@emailid", SqlDbType.NVarChar).Value = txtemail.Text;
                        c.cmd.Parameters.Add("@phoneno", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
                        c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtaddress.Text;
                        c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = txtcity.Text;
                        c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpincode.Text);
                        c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = st;
                        c.cmd.ExecuteNonQuery();
                        MessageBox.Show("Inserted logistic");
                        Response.Redirect("logistics details.aspx");
                    }
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
        Response.Redirect("logistic delete.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("logistic edit.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("logistic view.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        txtcity.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        txtpincode.Text = "";
        txtlogid.Text = "";
        
    }
}
