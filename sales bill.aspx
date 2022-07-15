<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sales bill.aspx.cs" Inherits="sales_bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-color: #cc3300">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="756px" Style="z-index: 100; left: 0px;
            position: absolute; top: 0px; background-color: #ff6666" Width="1642px">
            <asp:Panel ID="Panel2" runat="server" Height="709px" Style="z-index: 100; left: 163px;
                position: absolute; top: 20px; background-color: #ffffff" Width="1018px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="font-size: xx-large;
                    z-index: 100; left: 415px; position: absolute; top: 10px" Text="INVOICE" Font-Underline="True"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 101; left: 35px;
                    position: absolute; top: 100px" Text="SALES BILL NO"></asp:Label>
                <asp:TextBox ID="txtsalesbillno" runat="server" Style="z-index: 102; left: 215px;
                    position: absolute; top: 96px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 103; left: 35px;
                    position: absolute; top: 143px" Text="SALES ORDER NO"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtsalesorderno" runat="server" Style="z-index: 104; left: 216px;
                    position: absolute; top: 140px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 105; left: 645px;
                    position: absolute; top: 104px" Text="CUSTOMER ID"></asp:Label>
                <asp:TextBox ID="txtcustid" runat="server" Style="z-index: 106; left: 824px; position: absolute;
                    top: 102px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="z-index: 107; left: 646px;
                    position: absolute; top: 147px" Text="CUSTOMER NAME"></asp:Label>
                <asp:TextBox ID="txtcustname" runat="server" Style="z-index: 108; left: 823px; position: absolute;
                    top: 140px" ReadOnly="True"></asp:TextBox>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Style="z-index: 109; left: 68px;
                    position: absolute; top: 536px" Text="TAX (%)"></asp:Label>
                <asp:TextBox ID="txttax" runat="server" Style="z-index: 110; left: 142px; position: absolute;
                    top: 537px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Style="z-index: 111; left: 633px;
                    position: absolute; top: 527px" Text="GRAND TOTAL" Font-Size="14pt"></asp:Label>
                <asp:TextBox ID="txtgrand" runat="server" Style="z-index: 112; left: 785px; position: absolute;
                    top: 525px" ReadOnly="True"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Style="z-index: 113; left: 440px;
                    position: absolute; top: 571px" Text="DONE" Height="36px" OnClick="Button2_Click" Width="72px" Font-Size="14pt" />
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="z-index: 114; left: 785px;
                    position: absolute; top: 57px" Text="DATE"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" ShowFooter="true" Style="z-index: 115; left: 313px; position: absolute;
                    top: 243px" Width="355px">
                </asp:GridView>
                <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 116; left: 848px; position: absolute;
                    top: 56px" ReadOnly="True"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 117; left: 142px; position: absolute;
                    top: 494px" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Style="z-index: 118; left: 67px;
                    position: absolute; top: 498px" Text="TOTAL"></asp:Label>
                <asp:Label ID="Label8" runat="server" Style="z-index: 119; left: 633px; position: absolute;
                    top: 493px" Text="DELIVERY CHARGES:  RS 50/-"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Style="z-index: 120; left: 721px;
                    position: absolute; top: 569px" Text="CASH ON DELIVERY"></asp:Label>
                <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/img/mothercare.jpg"
                    Style="z-index: 121; left: 3px; position: absolute; top: 3px" Width="122px" />
                <asp:Label ID="Label10" runat="server" Style="z-index: 122; left: 830px; position: absolute;
                    top: 184px" Text="Label"></asp:Label>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Style="z-index: 123; left: 653px;
                    position: absolute; top: 185px" Text="ADDRESS"></asp:Label>
                <asp:Label ID="Label12" runat="server" Style="z-index: 124; left: 832px; position: absolute;
                    top: 212px" Text="Label"></asp:Label>
                <asp:Label ID="Label15" runat="server" Style="z-index: 126; left: 907px; position: absolute;
                    top: 213px" Text="Label"></asp:Label>
            </asp:Panel>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
