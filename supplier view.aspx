<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supplier view.aspx.cs" Inherits="supplier_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #000000">
        <asp:Panel ID="Panel1" runat="server" Height="766px" Style="background-image: url(img/balloon1.jpg)"
            Width="1642px">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Style="font-size: large;
                color: #ffffff; text-decoration: underline" Text="VIEW SUPPLIER" Font-Bold="True"></asp:Label>
            &nbsp;&nbsp;<br />
            <br />
            <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click"
                Style="z-index: 100; left: 803px; color: #660000; position: absolute; top: 200px;
                background-color: #ffffcc" Text="EDIT" Font-Size="14pt" />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                Style="z-index: 101; left: 543px; color: #660000; position: absolute; top: 198px;
                background-color: #ffffcc" Text="ADD" Font-Size="14pt" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click"
                Style="z-index: 102; left: 648px; color: #660000; position: absolute; top: 198px;
                background-color: #ffffcc" Text="DELETE" Font-Size="14pt" />
            <asp:Button ID="Button4" runat="server" Font-Bold="True" OnClick="Button4_Click"
                Style="z-index: 103; left: 912px; color: #660000; position: absolute; top: 201px;
                background-color: #ffffcc" Text="BACK" Font-Size="14pt" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="211px" Style="z-index: 105; left: 271px;
                color: #ff3399; position: absolute; top: 262px" Width="924px" BackColor="#000000">
            </asp:GridView>
        </asp:Panel>
    
    </div>
    
    
    
    </form>
</body>
</html>
