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

public partial class registration : System.Web.UI.Page
{
    connect c;
    DataSet ds = new DataSet();
    SqlDataAdapter adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        c = new connect();
        ds = new DataSet();
        string st = "active";
        if (DropDownList2.Items.Count == 0)
        {
            c.cmd.CommandText = "select distinct[city] from [logistic] where status='"+st+"'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "log");
            if (ds.Tables["log"].Rows.Count > 0)
            {
                DropDownList2.Items.Add("--select--");
                int i;
                for (i = 0; i < ds.Tables["log"].Rows.Count; i++)
                {
                    DropDownList2.Items.Add(ds.Tables["log"].Rows[i].ItemArray[0].ToString());
                }
            }
        }


       
        txtid.Visible = false;
        c = new connect();
        c.cmd.CommandText = "select count(*) from customer";
        int count;
        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
        txtid.Text = count.ToString();


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == false)
        {
            string setpass = txtsetpass.Text;
            txtsetpass.TextMode = TextBoxMode.Password;
            txtsetpass.Attributes.Add("value", setpass);
            string confpass = txtconfpass.Text;
            txtconfpass.TextMode = TextBoxMode.Password;
            txtconfpass.Attributes.Add("value", confpass);

        }
        if (CheckBox1.Checked)
        {
            txtsetpass.TextMode = TextBoxMode.SingleLine;
            txtconfpass.TextMode = TextBoxMode.SingleLine;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text == "--select--")
        {
            MessageBox.Show("Enter all fields");
        }
        else
        {
            try
            {

                c = new connect();
                c.cmd.CommandText = "select email from customer where email='" + txtemail.Text + "'";
                SqlDataAdapter adp = new SqlDataAdapter();
                DataSet ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "register");
                if (ds.Tables["register"].Rows.Count > 0)
                {
                    MessageBox.Show("already exists");
                    txtemail.Text = "";
                }
                else
                {
                    string st = "active";
                    c.cmd.CommandText = "insert into customer values(@custid,@name,@mobno,@email,@setpassword,@confpassword,@address,@city,@pincode,@secqn,@secans,@status)";
                    c.cmd.Parameters.Add("@custid", SqlDbType.SmallInt).Value = Convert.ToInt16(txtid.Text);
                    c.cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = txtname.Text;
                    c.cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(txtmobno.Text);
                    c.cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtemail.Text;
                    c.cmd.Parameters.Add("@setpassword", SqlDbType.VarChar).Value = txtsetpass.Text;
                    c.cmd.Parameters.Add("@confpassword", SqlDbType.VarChar).Value = txtconfpass.Text;
                    c.cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = txtaddress.Text;
                    c.cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = DropDownList2.SelectedItem.Text;
                    c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpincode.Text);
                    c.cmd.Parameters.Add("@secqn", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
                    c.cmd.Parameters.Add("@secans", SqlDbType.VarChar).Value = txtsecans.Text;
                    c.cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = st;
                    c.cmd.ExecuteNonQuery();
                    MessageBox.Show("Welcome to Mother Care...you are successfully registered");
                    Response.Redirect("default.aspx");
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
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtmobno.Text = "";
        txtemail.Text = "";
        txtsetpass.Text = "";
        txtconfpass.Text = "";
        txtaddress.Text = "";
        txtpincode.Text = "";
        txtsecans.Text  = "";
        DropDownList1.SelectedValue = "-1";
        DropDownList2.SelectedValue = "--select--";
    }
    protected void txtid_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
    }
}