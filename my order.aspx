<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my order.aspx.cs" Inherits="my_order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="797px" Style="background-color: #cccc99"
            Width="1504px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="24pt"
                Font-Underline="True" Height="44px" Style="z-index: 100; left: 563px; position: absolute;
                top: 99px" Text="MY ORDER" Width="186px"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="14pt"
                ForeColor="#660000" OnClick="Button1_Click" Style="z-index: 101; left: 71px;
                position: absolute; top: 92px" Text="BACK" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Font-Bold="True" Height="228px" Style="z-index: 103;
                left: 386px; position: absolute; top: 208px" Width="616px">
            </asp:GridView>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
