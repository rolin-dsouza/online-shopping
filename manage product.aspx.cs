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
using System.Windows .Forms ;
using System.Data .SqlClient ;
public partial class manage_product : System.Web.UI.Page
{
    connect c;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("management.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage edit.aspx");

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage view.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage delete.aspx");
    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedItem.Text == "toys")
        {
            c = new connect();
            string t = "T";
            int count;
            c.cmd.CommandText = "select count(pid) from inventory where pid like'T%'";
            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
            txtprodid.Text = t + count.ToString();
        }
        else
            if (DropDownList1.SelectedItem.Text == "flowers")
            {
                c = new connect();
                string f = "F";
                int count;
                c.cmd.CommandText = "select count(pid) from inventory where pid like'F%'";
                count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
                txtprodid.Text = f + count.ToString();
            }
            else
                if (DropDownList1.SelectedItem.Text == "card")
                {
                    c = new connect();
                    string g = "G";
                    int count;
                    c.cmd.CommandText = "select count(pid) from inventory where pid like'G%'";
                    count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
                    txtprodid.Text = g + count.ToString();
                }
                else
                    if (DropDownList1.SelectedItem.Text == "frames")
                    {
                        c = new connect();
                        string fr = "FR";
                        int count;
                        c.cmd.CommandText = "select count(pid) from inventory where pid like'FR%'";
                        count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
                        txtprodid.Text = fr + count.ToString();
                    }
                    else
                        if (DropDownList1.SelectedItem.Text == "babypro")
                        {
                            c = new connect();
                            string bp = "BP";
                            int count;
                            c.cmd.CommandText = "select count(pid) from inventory where pid like'BP%'";
                            count = Convert.ToInt16(c.cmd.ExecuteScalar()) + 1;
                            txtprodid.Text = bp + count.ToString();
                        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int qty = 0;
            c = new connect();
            string st = "out of stock";
            if (txtprodid.Text == "" || txtprodname.Text == "" || txtdesc.Text == "" || txtprice.Text == "" || FileUpload2.FileName == "" || FileUpload1.FileName == "" || FileUpload3.FileName == "")
            {
                MessageBox.Show("Enter all fields");
            }
            else
            {
                c.cmd.CommandText = "select * from inventory where pname='" + txtprodname.Text + "'";
                SqlDataAdapter adp = new SqlDataAdapter();
                DataSet ds = new DataSet();
                adp.SelectCommand = c.cmd;
                adp.Fill(ds, "stock");
                if (ds.Tables["stock"].Rows.Count > 0)
                {
                    MessageBox.Show("already exists..product name must be different");
                    txtprodname.Text = "";
                }
                else
                {
                    c.cmd.CommandText = "insert into inventory values(@pid,@pname,@cat_name,@image1,@image2,@image3,@qty,@description,@price,@status)";
                    c.cmd.Parameters.Add("@pid", SqlDbType.NVarChar).Value = txtprodid.Text;
                    c.cmd.Parameters.Add("@pname", SqlDbType.NVarChar).Value = txtprodname.Text;
                    c.cmd.Parameters.Add("@cat_name", SqlDbType.NVarChar).Value = DropDownList1.SelectedItem.Text;
                    if (FileUpload1.HasFile)
                    {
                        string str = FileUpload1.FileName;
                        FileUpload1.PostedFile.SaveAs(Server.MapPath(str));
                        string img = str.ToString();
                        c.cmd.Parameters.AddWithValue("@image1", img);
                        Image1.ImageUrl = FileUpload1.FileName;
                    }
                    else
                    {
                        string noimg = "null";
                        c.cmd.Parameters.AddWithValue("@image1", noimg);
                    }
                    if (FileUpload2.HasFile)
                    {
                        string str = FileUpload2.FileName;
                        FileUpload2.PostedFile.SaveAs(Server.MapPath(str));
                        string img = str.ToString();
                        c.cmd.Parameters.AddWithValue("@image2", img);
                        Image2.ImageUrl = FileUpload2.FileName;
                    }
                    else
                    {
                        string noimg = "null";
                        c.cmd.Parameters.AddWithValue("@image1", noimg);
                    }
                    if (FileUpload3.HasFile)
                    {
                        string str = FileUpload3.FileName;
                        FileUpload3.PostedFile.SaveAs(Server.MapPath(str));
                        string img = str.ToString();
                        c.cmd.Parameters.AddWithValue("@image3", img);
                        Image3.ImageUrl = FileUpload3.FileName;
                    }
                    else
                    {
                        string noimg = "null";
                        c.cmd.Parameters.AddWithValue("@image3", noimg);
                    }
                    c.cmd.Parameters.Add("@description", SqlDbType.NVarChar).Value = txtdesc.Text;


                    c.cmd.Parameters.Add("@qty", SqlDbType.Int).Value = qty;
                    c.cmd.Parameters.Add("@price", SqlDbType.Decimal).Value = Convert.ToDecimal(txtprice.Text);
                    c.cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = st;
                    c.cmd.ExecuteNonQuery();
                    MessageBox.Show(" item inserted");
                    

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtprodid.Text = "";
        txtprodname.Text = "";
        txtdesc.Text = "";
        txtprice.Text = "";



    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        Response.Redirect("manage product.aspx");
    }
}
    