<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirm order.aspx.cs" Inherits="confirm_order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="671px" Style="background-color: #ffcc99"
            Width="1642px" Font-Size="Medium">
            <asp:Panel ID="Panel2" runat="server" Height="238px" Style="z-index: 100; left: 373px;
                position: absolute; top: 79px; background-color: #ff9966;" Width="490px">
                <asp:TextBox ID="txtemail" runat="server" Style="z-index: 100; left: 284px; position: absolute;
                    top: 196px" Height="24px" Width="161px" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 101; left: 284px; position: absolute;
                    top: 105px" Height="24px" Width="161px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 102;
                    left: 50px; position: absolute; top: 65px" Text="Your Address"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 103;
                    left: 59px; position: absolute; top: 106px" Text="City"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 104;
                    left: 55px; position: absolute; top: 148px" Text="Pincode"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 105;
                    left: 51px; position: absolute; top: 194px" Text="Email"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Style="z-index: 106;
                    left: 52px; position: absolute; top: 24px" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Style="z-index: 108; left: 282px;
                    position: absolute; top: 18px" Width="161px" ReadOnly="True"></asp:TextBox>
            </asp:Panel>
            <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 101; left: 657px; position: absolute;
                top: 228px" Height="24px" Width="161px" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 102; left: 658px; position: absolute;
                top: 138px" Height="24px" OnTextChanged="TextBox4_TextChanged" Width="161px" ReadOnly="True"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" ShowFooter ="true"  Height="180px" Style="z-index: 103; left: 357px;
                position: absolute; top: 372px" Width="510px" Font-Bold="True">
            </asp:GridView>
            <asp:Button ID="btnconfirmorder" runat="server" Height="36px" Style="z-index: 104; left: 980px;
                position: absolute; top: 248px" Text="PROCEED" Width="98px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="#990000" OnClick="btnconfirmorder_Click" />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="24pt" Font-Underline="True"
                ForeColor="#CC0000" Height="36px" Style="z-index: 105; left: 477px; position: absolute;
                top: 27px; text-align: center" Text="CONFIRM ORDER" Width="293px"></asp:Label>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"
                ForeColor="#990000" Height="36px" OnClick="Button1_Click" Style="z-index: 106;
                left: 978px; position: absolute; top: 187px" Text="BACK" Width="98px" />
            <asp:TextBox ID="txtvisisble" runat="server" Style="z-index: 107; left: 12px; position: absolute;
                top: 16px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="txtpid" runat="server" Style="z-index: 108; left: 13px; position: absolute;
                top: 16px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="txtprice" runat="server" Style="z-index: 109; left: 12px; position: absolute;
                top: 15px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="txtqty" runat="server" Style="z-index: 110; left: 14px; position: absolute;
                top: 17px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 111; left: 10px; position: absolute;
                top: 15px" Visible="False"></asp:TextBox>
            <asp:Button ID="btnchangeaddress" runat="server" BackColor="#FFCC33" Font-Bold="True"
                Font-Size="Medium" Height="29px" OnClick="btnchangeaddress_Click" Style="z-index: 113;
                left: 554px; position: absolute; top: 326px" Text="CHANGE ADDRESS" Width="171px" />
        </asp:Panel>
   
    </form>
</body>
</html>
