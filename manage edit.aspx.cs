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

public partial class Default2 : System.Web.UI.Page
{
    connect c;
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        c = new connect();
        if (DropDownList1.Items.Count == 0)
        {
            c.cmd.CommandText = "select distinct[pname] from [inventory]";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage product.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage delete.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage view.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from inventory where pname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "editt");
            if (ds.Tables["editt"].Rows.Count > 0)
            {
                c.cmd.CommandText = "update inventory set image1='" + FileUpload1.FileName + "',image2='" + FileUpload2.FileName + "',image3='" + FileUpload3.FileName + "',qty='" + TextBox2.Text + "',description='" + TextBox3.Text + "',status='" + TextBox4.Text + "',price='" + TextBox5.Text + "' where pname='" + DropDownList1.SelectedItem.Text.ToString() + "'";
                if (FileUpload1.HasFile)
                {
                    String str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
                    String image1 = str.ToString();
                    c.cmd.Parameters.AddWithValue("@image1", image1);
                    Image1.ImageUrl = FileUpload1.FileName;
                }
                else
                {
                    c.cmd.Parameters.AddWithValue("@image1", ds.Tables["editt"].Rows[0].ItemArray[3].ToString());
                }
                if (FileUpload2.HasFile)
                {
                    String str = FileUpload2.FileName;
                    FileUpload2.PostedFile.SaveAs(Server.MapPath(str));
                    String image2 = str.ToString();
                    c.cmd.Parameters.AddWithValue("@image2", image2);
                    Image2.ImageUrl = FileUpload2.FileName;
                }
                else
                {
                    c.cmd.Parameters.AddWithValue("@image2", ds.Tables["editt"].Rows[0].ItemArray[4].ToString());
                }
                if (FileUpload3.HasFile)
                {
                    String str = FileUpload3.FileName;
                    FileUpload3.PostedFile.SaveAs(Server.MapPath(str));
                    String image3 = str.ToString();
                    c.cmd.Parameters.AddWithValue("@image3", image3);
                    Image3.ImageUrl = FileUpload3.FileName;
                }
                else
                {
                    c.cmd.Parameters.AddWithValue("@image3", ds.Tables["editt"].Rows[0].ItemArray[5].ToString());
                }
                c.cmd.Parameters.Add("@description", SqlDbType.NVarChar).Value = TextBox3.Text;
                c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = Convert.ToInt16(TextBox2.Text);
                c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = TextBox4.Text;
                c.cmd.Parameters.Add("@price", SqlDbType.Decimal).Value = Convert.ToDecimal(TextBox5.Text);
                c.cmd.ExecuteNonQuery();
                MessageBox.Show("item" + TextBox1.Text + "updated");
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            c = new connect();
            c.cmd.CommandText = "select * from inventory where pname='" + DropDownList1.SelectedItem.Text + "'";
            ds = new DataSet();
            adp.SelectCommand = c.cmd;
            adp.Fill(ds, "editt");
            if (ds.Tables["editt"].Rows.Count > 0)
            {
                TextBox1.Text = Convert.ToString(ds.Tables["editt"].Rows[0].ItemArray[0]);
                TextBox3.Text = Convert.ToString(ds.Tables["editt"].Rows[0].ItemArray[7]);
                TextBox2.Text = Convert.ToString(ds.Tables["editt"].Rows[0].ItemArray[6]);
                TextBox5.Text = Convert.ToString(ds.Tables["editt"].Rows[0].ItemArray[8]);
                TextBox4.Text = Convert.ToString(ds.Tables["editt"].Rows[0].ItemArray[9]);
            }
            else
            {
                MessageBox.Show("product with entered name does not exists");
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
