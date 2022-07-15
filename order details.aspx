<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order details.aspx.cs" Inherits="order_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
      <div style="background-color: #000000">
        <asp:Panel ID="Panel1" runat="server" Height="766px" Width="1642px" style="background-image: url(img/giftt.JPG)">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="14pt" OnClick="Button3_Click"
                Style="z-index: 106; left: 445px; color: #cc0000; position: absolute; top: 157px"
                Text="Reorder" />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                ID="Button1" runat="server" Font-Bold="True" Style="color: #cc0000; z-index: 101; left: 286px; position: absolute; top: 156px;" Text="Back " OnClick="Button1_Click" Font-Size="14pt" ForeColor="#CC0000" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Button
                ID="Button2" runat="server" Font-Bold="True" Style="color: #cc0000; z-index: 102; left: 612px; position: absolute; top: 159px;" Text="Place order" OnClick="Button2_Click" Font-Size="14pt" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:Button
                ID="Button4" runat="server" Font-Bold="True" Style="color: #cc0000; z-index: 103; left: 825px; position: absolute; top: 159px;" Text="View sales order" OnClick="Button4_Click" Font-Size="14pt" /><br />
            <br />
            <br />
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Style="color: #ffffcc; z-index: 104; left: 420px; position: absolute; top: 228px;"
                Text="View purchase order details" Font-Size="24pt" Font-Underline="True" ForeColor="#FF3300"></asp:Label>
            &nbsp; &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp;
            <asp:GridView ID="GridView1" runat="server" Style="z-index: 105; left: 269px; color: #ffff99;
                position: absolute; top: 292px" Height="178px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="678px" BackColor="#000000" Font-Bold="True">
            </asp:GridView>
        </asp:Panel>
    
    </div>
    
     
    </form>
</body>
</html>
