<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reorder level.aspx.cs" Inherits="reorder_level" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="782px" Style="background-color: #999900"
            Width="1357px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" Font-Underline="True"
                Style="z-index: 100; left: 434px; position: absolute; top: 56px" Text="REORDER LEVEL"></asp:Label>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Size="14pt"
                Height="37px" OnClick="Button1_Click" Style="z-index: 101; left: 34px; position: absolute;
                top: 49px" Text="BACK" Width="90px" />
            <asp:GridView ID="GridView1" runat="server" Font-Bold="True" Height="210px" Style="z-index: 102;
                left: 293px; position: absolute; top: 150px" Width="631px">
            </asp:GridView>
            <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Size="14pt"
                Height="47px" OnClick="Button2_Click" Style="z-index: 104; left: 540px; position: absolute;
                top: 450px" Text="PURCHASE ORDER" Width="215px" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
