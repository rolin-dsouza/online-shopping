using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for connect
/// </summary>
public class connect
{
    public SqlConnection cnn = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
    public connect()
    {
        cnn.ConnectionString = "Data Source=LAPTOP-2M3FVDJ5\\SQLEXPRESS;Initial Catalog=giftshop;Integrated Security=true";
        cnn.Open();
        cmd.Connection = cnn;
    }

}
