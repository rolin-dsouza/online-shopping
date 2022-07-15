<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage view.aspx.cs" Inherits="manage_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #000000">
        <asp:Panel ID="Panel1" runat="server" Height="766px" Style="background-image: url(img/tamanna-rumee-5n2XtbvekO8-unsplash.jpg)"
            Width="1642px">
            <br />
            
            <br />
            &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True"
                Text="ADD" OnClick="Button1_Click" Font-Size="14pt" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="DELETE" OnClick="Button2_Click" Font-Size="14pt" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Text="EDIT" OnClick="Button3_Click" Font-Size="14pt" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Text="BACK" OnClick="Button4_Click" Font-Size="14pt" /><br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Style="font-size: large; color: #ffffff;
                text-decoration: underline" Text="VIEW ITEM" Font-Bold="True" Font-Underline="True"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 100; left: 723px;
                position: absolute; top: 164px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 101; left: 586px;
                color: #ff99ff; position: absolute; top: 164px" Text="select category" Font-Size="Large"></asp:Label>
            
            <br />
            <asp:DataList ID="DataList1" runat="server" RepeatColumns ="5" RepeatLayout ="table" Style="z-index: 102; left: 10px; position: absolute;
                top: 225px; color: #ffff66;" Height="413px" Width="1283px">
                <ItemTemplate >
                <table >
                <tr>
                <td><b>Product name</b></td><br />
                <td><%#Eval ("pname") %></td></tr>
                <tr>
                <td><b>Product ID</b></td><br />
                <td><%#Eval ("pid") %></td></tr>
                <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl ='<%#Eval ("image1") %>' Height ="100px" Width ="100px" /></td></tr>
                    <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl ='<%#Eval ("image2") %>' Height ="100px" Width ="100px"  /></td></tr>
                        <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl ='<%#Eval ("image3") %>' Height ="100px" Width ="100px"  /></td></tr>
                            <tr>
                            <td>Description</td>
                            <td><%#Eval ("description") %></td></tr>
                            <tr>
                            <td>Qty</td>
                            <td><%#Eval ("qty") %></td></tr>
                            <tr>
                            <td>Price</td>
                            <td><%#Eval ("price") %></td></tr>
                            <tr>
                            <td>Status</td>
                            <td><%#Eval ("status") %></td></tr></table></ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
