<%@ Page Language="C#" AutoEventWireup="true" CodeFile="security.aspx.cs" Inherits="security" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #cc6633">
        <asp:Panel ID="Panel1" runat="server" Height="636px" Width="1258px">
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="265px" Style="background-color: transparent; z-index: 100; left: 163px; position: absolute; top: 200px;"
                Width="658px">
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Style="color: #990000;
                    font-style: normal; background-color: #cc9966; z-index: 100; left: 134px; position: absolute; top: 76px;" Text="Security Question " Font-Underline="True"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="lblsecqn" runat="server" Width="172px" style="z-index: 101; left: 398px; position: absolute; top: 74px" Font-Size="16pt"></asp:Label><br />
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" Style="color: #990000; background-color: #cc9966; z-index: 102; left: 136px; position: absolute; top: 147px;"
                    Text="Security Answer" Width="148px" Font-Underline="True"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1"
                    runat="server" style="z-index: 103; left: 400px; position: absolute; top: 137px"></asp:TextBox><br />
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;
                <asp:Button ID="btnsec" runat="server" Font-Bold="True" Height="27px" Style="color: #660000;
                    background-color: #ffffcc; z-index: 104; left: 310px; position: absolute; top: 212px;" Text="OK" Width="75px" OnClick="btnsec_Click" Font-Size="14pt" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </asp:Panel>
            &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Underline="True" Height="31px"
                Style="font-size: large; z-index: 101; left: 316px; color: #ffff99; font-style: normal;
                position: absolute; top: 150px; text-align: center" Text="Enter Your Email Address"
                Width="222px" Font-Size="16pt"></asp:Label>
                <asp:Button ID="Button2" runat="server"
                    Font-Bold="True" Height="27px" OnClick="Button2_Click" Style="color: #660000;
                    background-color: #ffffcc; z-index: 106; left: 49px; position: absolute; top: 112px;" Text="BACK" Width="74px" Font-Size="14pt" />
                &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp;
            <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl="~/img/giftreg.jpg"
                Width="227px" style="z-index: 102; left: 411px; position: absolute; top: 471px" />
            <asp:TextBox ID="txtemail" runat="server" Style="z-index: 103; left: 580px; position: absolute;
                top: 156px"></asp:TextBox>
            <asp:Button ID="btnemail" runat="server" Font-Bold="True" Style="z-index: 104; left: 836px;
                color: #660000; position: absolute; top: 153px; background-color: #ffffcc" Text="ok"
                Width="65px" OnClick="btnemail_Click" Font-Size="16pt" />
            &nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="81px" ImageUrl="~/login/MOTHERCARE.jpg"
                Style="z-index: 106; left: 1180px; position: absolute; top: 17px" Width="118px" />
        </asp:Panel>
    
    
    </div>
    
    </form>
</body>
</html>
