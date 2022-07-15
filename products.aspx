<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="766px" Width="1352px" style="background-color: #ffffcc">
         <asp:Panel ID="Panel2" runat="server" Height="53px" Style="color: #990000; background-color: #990000"
                Width="1367px">
                &nbsp; &nbsp; &nbsp; &nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                    ID="Button1" runat="server" Text="HOME" style="color: #ffcc99; background-color: transparent; z-index: 104; left: 73px; position: absolute; top: 46px;" Font-Bold="True" Font-Size="12pt" OnClick="Button1_Click" />
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Text="ABOUT US" style="color: #ffcc99; background-color: transparent; z-index: 101; left: 708px; position: absolute; top: 48px;" Font-Bold="True" Font-Size="11pt" OnClick="Button3_Click" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
             <asp:Button ID="Button4" runat="server" Text="LOGIN" style="color: #ffcc99; background-color: transparent; z-index: 102; left: 182px; position: absolute; top: 47px;" Font-Bold="True" OnClick="Button4_Click" Font-Size="12pt" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" Style="z-index: 103; left: 855px; position: absolute;
                 top: 48px; color: #ffcc99; background-color: transparent;" Text="LOGOUT" Font-Bold="True" OnClick="Button2_Click" Font-Size="12pt" />
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </asp:Panel>
            <br />
            <asp:ImageButton ID="ImageButton2" runat="server" Height="35px" ImageUrl="~/img/addtocart.jpg"
                OnClick="ImageButton2_Click" Style="z-index: 100; left: 901px; background-image: url(IMG-7704.JPG);
                position: absolute; top: 99px" Width="35px" />
            <br />
            <strong><span style="font-size: 14pt; color: #ff9966">WELCOME<br />
            </span></strong>
            <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 127px; position: absolute;
                top: 128px" Text="Label" Font-Bold="True" Font-Size="12pt"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label" style="z-index: 104; left: 929px; position: absolute; top: 136px"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                Style="z-index: 103; left: 420px; position: absolute; top: 111px" AutoPostBack="True" Height="41px" Width="93px">
            </asp:DropDownList>
            <br />
            <br />
          
            <asp:DataList ID="DataList1" runat="server" DataKeyField="pid"  RepeatColumns ="6" RepeatDirection ="Horizontal" Height="318px" Width="966px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" OnItemCommand="DataList1_ItemCommand">
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
                   
                           <tr><td>Description</td>
                            <td><%#Eval ("description") %></td></tr>
                           
                            <tr>
                            <td>Price</td>
                            <td><%#Eval ("price") %></td></tr>
                            <tr>
                            </tr>
                            <tr>
                            <td>Quantity</td>
                            <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                            </td></tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height ="30px" Width ="100px" ImageUrl="~/img/addtocartimg.JPG" CommandName="addtocart" CommandArgument ='<%#Eval ("pid") %>'  />   </td>
                        </tr>
            </table></ItemTemplate>
    
           </asp:DataList><br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
          
            </asp:Panel>
   
    </div>
    </form>
</body>
</html>
