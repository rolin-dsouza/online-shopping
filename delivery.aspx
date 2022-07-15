<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delivery.aspx.cs" Inherits="delivery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #66cccc">
        <asp:Panel ID="Panel1" runat="server" Height="768px" Width="1646px">
            <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/login/MOTHERCARE.jpg"
                Style="z-index: 100; left: 829px; position: absolute; top: 26px" Width="135px" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Height="26px" Style="z-index: 101;
                left: 437px; position: absolute; top: 105px" Text="Label" Width="78px"></asp:Label>
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;<em> </em><strong><em>THANK YOU &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; FOR
                SHOPPING WITH US...<br />
            </em></strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="274px" Style="z-index: 102; left: 310px;
                position: absolute; top: 263px; background-color: #ccff99" Width="548px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Height="30px" Style="z-index: 100;
                    left: 126px; position: absolute; top: 48px" Text="ADDRESS" Width="54px"></asp:Label>
                <asp:Label ID="txtaddress" runat="server" Style="z-index: 101; left: 307px; position: absolute;
                    top: 48px" Text="Label"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 102; left: 131px;
                    position: absolute; top: 166px" Text="EMAIL"></asp:Label>
                <asp:Label ID="txtemail" runat="server" Style="z-index: 103; left: 311px; position: absolute;
                    top: 164px" Text="Label"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="z-index: 104; left: 121px;
                    position: absolute; top: 226px" Text="PHONE NO"></asp:Label>
                <asp:Label ID="txtphone" runat="server" Style="z-index: 105; left: 312px; position: absolute;
                    top: 226px" Text="Label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Height="26px" Style="z-index: 106;
                    left: 129px; position: absolute; top: 109px" Text="CITY" Width="61px"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Style="z-index: 108; left: 309px;
                    position: absolute; top: 109px" Text="Label"></asp:Label>
            </asp:Panel>
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 103; left: 14px; position: absolute;
                top: 17px" Visible="False"></asp:TextBox>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #ff66cc">
                <span style="color: #663300">YOUR ORDER HAS BEEN PLACED.<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; YOUR ITEMS BE DELIVERIED
                    WITHIN 3DAYS.<br />
                    <br />
                </span></span>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Height="23px" OnClick="LinkButton1_Click"
                Style="z-index: 105; left: 785px; position: absolute; top: 505px" Width="76px">HOME</asp:LinkButton>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
