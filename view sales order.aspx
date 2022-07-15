<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view sales order.aspx.cs" Inherits="view_sales_order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
        <asp:Panel ID="Panel1" runat="server" Height="634px" Style="background-image: url(img/giftt.JPG);
            background-color: #66cccc" Width="1350px" BackColor="#80FFFF">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="z-index: 100; left: 29px;
                position: absolute; top: 79px" Text="BACK" OnClick="Button1_Click" BackColor="#FFFFCC" Font-Size="14pt" ForeColor="#663300" Height="35px" Width="77px" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Height="31px" Style="z-index: 101;
                left: 548px; position: absolute; top: 104px; color: #ffffcc;" Text="VIEW SALES ORDER" Width="356px" Font-Size="24pt" Font-Italic="True" Font-Underline="True"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" BackColor="#000000" Font-Bold="True"
                ForeColor="#FFFFFF" Height="182px" Style="z-index: 103; left: 427px; position: absolute;
                top: 172px" Width="633px">
            </asp:GridView>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
