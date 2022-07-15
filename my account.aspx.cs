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

public partial class my_account : System.Web.UI.Page
{
   
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlDataAdapter adp2 = new SqlDataAdapter();
    DataSet ds2 = new DataSet();
    SqlDataAdapter adp3 = new SqlDataAdapter();
    DataSet ds3 = new DataSet();
    SqlDataAdapter adp1=new SqlDataAdapter();
    DataSet ds1=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        c = new connect();
        txtname.Text = Session["login"].ToString();
        TextBox1.Text = Session["email"].ToString();

       
      
        
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            c = new connect();
            string st = "active";
            if (DropDownList1.Items.Count == 0)
            {
                c.cmd.CommandText = "select distinct[city] from [logistic] where status='" + st + "'";
                adp3.SelectCommand = c.cmd;
                adp3.Fill(ds3, "log");
                if (ds3.Tables["log"].Rows.Count > 0)
                {
                    DropDownList1.Items.Add("--select--");
                    int i;
                    for (i = 0; i < ds3.Tables["log"].Rows.Count; i++)
                    {
                        DropDownList1.Items.Add(ds3.Tables["log"].Rows[i].ItemArray[0].ToString());
                    }
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
      try
        {
          
            
            c = new connect();
            c.cmd.CommandText = "select * from customer where email='" + Session["email"] + "'";
            adp1.SelectCommand=c.cmd;
            adp1.Fill(ds1, "editt");
            if(ds1.Tables["editt"].Rows.Count>0)
            {
                txtname.Text=ds1.Tables["editt"].Rows[0].ItemArray[1].ToString();
                txtphone.Text=ds1.Tables["editt"].Rows[0].ItemArray[2].ToString();
                TextBox1.Text=ds1.Tables["editt"].Rows[0].ItemArray[3].ToString();
                txtaddress.Text=ds1.Tables["editt"].Rows[0].ItemArray[6].ToString();
                DropDownList1 .Text =ds1.Tables["editt"].Rows[0].ItemArray[7].ToString();
                txtpincode.Text=ds1.Tables["editt"].Rows[0].ItemArray[8].ToString();
                
            }
        }
        catch (Exception)
        {
        }
        finally
        {
            c.cnn.Close();
        }
        
       
        txtphone.ReadOnly = false;
        txtaddress.ReadOnly = false;
        txtpincode.ReadOnly = false;
        


    }
    protected void btndone_Click(object sender, EventArgs e)
    {

    }
    protected void btndone_Click1(object sender, EventArgs e)
    {


        c = new connect();
        c.cmd.CommandText = "select * from customer where email ='" + Session["email"] + "'";
        ds = new DataSet();
        adp.SelectCommand = c.cmd;
        adp.Fill(ds, "editt1");
        if (ds.Tables["editt1"].Rows.Count > 0)
        {
            c.cmd.CommandText = "update customer set mobno='" + txtphone.Text + "',address='" + txtaddress.Text + "',city='" + DropDownList1.SelectedItem.Text + "',pincode='" + txtpincode.Text + "' where email='" + Session["email"] + "'";
           
            c.cmd.Parameters.Add("@mobno", SqlDbType.BigInt).Value = Convert.ToInt64(txtphone.Text);
            c.cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = txtaddress.Text;
            c.cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text.ToString();
            c.cmd.Parameters.Add("@pincode", SqlDbType.BigInt).Value = Convert.ToInt64(txtpincode.Text);
            c.cmd.ExecuteNonQuery();
            MessageBox.Show("customer details updated");
            Response.Redirect("userhome.aspx");
        }
       
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        Response.Redirect("change password.aspx");

    }
}
