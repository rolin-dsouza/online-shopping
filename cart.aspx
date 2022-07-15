<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" Height="766px" Width="1352px" style="background-color: #ffffcc">
         <asp:Panel ID="Panel2" runat="server" Height="53px" Style="color: #990000; background-color: #990000"
                Width="1367px">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                    ID="Button1" runat="server" Text="HOME" style="color: #ffcc99; background-color: transparent" Font-Bold="True" OnClick="Button1_Click" Font-Size="14pt" />
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Text="ABOUT US" style="color: #ffcc99; background-color: transparent; z-index: 100; left: 184px; position: absolute; top: 31px;" Font-Bold="True" Font-Size="14pt" OnClick="Button3_Click" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                  </asp:Panel>
        &nbsp;
        <br />
        <asp:Label ID="Label1" runat="server" Height="25px" Style="z-index: 101; left: 23px;
            position: absolute; top: 112px" Text="Label" Width="71px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"
            ForeColor="#FF9900" Height="45px" Style="z-index: 102; left: 331px; position: absolute;
            top: 94px; text-align: center" Text="YOUR  CART" Width="329px"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Height="31px" Style="z-index: 103; left: 896px;
            position: absolute; top: 116px" Text="Label" Width="88px"></asp:Label>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Style="z-index: 104; left: 386px; position: absolute;
            top: 157px" Width="185px" NavigateUrl="~/products.aspx" Font-Bold="True" Font-Size="16pt">continue shopping</asp:HyperLink>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" ImageUrl="~/img/addtocart.jpg"
            Style="z-index: 105; left: 852px; position: absolute; top: 87px" Width="31px" />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Height="25px" OnClick="LinkButton1_Click"
            Style="z-index: 106; left: 1172px; position: absolute; top: 267px" Width="77px" Font-Size="Large">Clear Cart</asp:LinkButton>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 107; left: 8px; position: absolute;
            top: 196px" Visible="False"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 108; left: 10px; position: absolute;
            top: 189px" Visible="False"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Style="z-index: 114;
            left: 12px; position: absolute; top: 200px" Visible="False"></asp:TextBox>
         <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns ="false"   EmptyDataText="no products available in cart" ShowFooter ="true" style="z-index: 110; left: 127px; position: absolute; top: 250px" Height="318px" Width="969px" OnRowDeleting="GridView1_RowDeleting1"  >
        <Columns>
        <asp:BoundField DataField="cartid" HeaderText="Sl No" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="pid" HeaderText="Product No" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="pname" HeaderText="Product Name" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:ImageField DataImageUrlField ="image1" HeaderText ="image">
        <ControlStyle  Height="100px" Width ="100px" />
        <ItemStyle HorizontalAlign ="center" />
        </asp:ImageField>
        <asp:BoundField DataField="price" HeaderText="Price" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="qty" HeaderText="Quantity" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="totalprice" HeaderText="Total Price" >
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        </asp:GridView>
        
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Style="z-index: 111;
            left: 1141px; position: absolute; top: 306px" Text="CONFIRM ORDER" Height="44px" Width="164px" BackColor="#FFCC00" Font-Bold="True" Font-Size="Large" />
        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" Style="z-index: 112;
            left: 10px; position: absolute; top: 193px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 113; left: 11px; position: absolute;
            top: 197px" Visible="False"></asp:TextBox>
                  
                   </asp:Panel>
    
    </div>
    </form>
</body>
</html>
