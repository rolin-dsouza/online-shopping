<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer details.aspx.cs" Inherits="customer_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="781px" Style="background-color: #cc6699"
            Width="1646px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
                Font-Underline="True" Height="33px" Style="z-index: 100; left: 448px; position: absolute;
                top: 34px; text-align: center" Text="CUSTOMER DETAILS" Width="266px"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" BackColor="#000000" Font-Bold="True"
                ForeColor="#FFFFFF" Height="187px" Style="z-index: 101; left: 310px; position: absolute;
                top: 137px" Width="563px">
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="14pt"
                ForeColor="#CC0066" Height="39px" OnClick="Button1_Click" Style="z-index: 103;
                left: 60px; position: absolute; top: 39px" Text="BACK" Width="88px" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
