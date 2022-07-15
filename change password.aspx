<%@ Page Language="C#" AutoEventWireup="true" CodeFile="change password.aspx.cs" Inherits="change_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="634px" Width="1350px" style="background-image: url(img/IMG-7591.JPG); background-color: #666633">
            &nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" Height="44px"
                Style="z-index: 100; left: 508px; position: absolute; top: 65px; text-align: center"
                Text="CHANGE PASSWORD" Width="343px" Font-Italic="True" Font-Underline="True" ForeColor="#FF0099"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 101; left: 640px; position: absolute;
                top: 156px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 102; left: 459px;
                position: absolute; top: 159px" Text="Email ID" Width="104px" Font-Size="14pt" ForeColor="Yellow" Height="23px"></asp:Label>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Panel ID="Panel2" runat="server" Height="293px" Style="z-index: 103; left: 408px;
                position: absolute; top: 197px" Width="663px">
                &nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 100; left: 244px; position: absolute;
                    top: 106px" TextMode="Password" Height="26px" Width="158px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Yellow"
                    Style="z-index: 101; left: 42px; position: absolute; top: 43px" Text="New Password" Height="30px" Width="146px"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Yellow"
                    Style="z-index: 102; left: 37px; position: absolute; top: 104px" Text="Confirm Password" Height="33px" Width="160px"></asp:Label>
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" ForeColor="#FF0099"
                    OnCheckedChanged="CheckBox1_CheckedChanged" Style="z-index: 103; left: 357px;
                    position: absolute; top: 151px" Text="Show Password" Font-Bold="True" />
                <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Font-Bold="True" ForeColor="#990000"
                    OnClick="Button1_Click" Style="z-index: 104; left: 254px; position: absolute;
                    top: 315px" Text="DONE" Height="38px" Width="100px" Font-Size="14pt" />
                
                <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 106; left: 238px; position: absolute;
                    top: 40px" TextMode="Password" Height="26px" Width="158px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                    ControlToValidate="TextBox3" ErrorMessage="New Password and Confirm Password should be same"
                    Font-Bold="True" ForeColor="White" Style="z-index: 107; left: 429px; position: absolute;
                    top: 65px"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Enter Password" Font-Bold="True" ForeColor="White" Style="z-index: 108;
                    left: 433px; position: absolute; top: 37px"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="Enter Confirm Password" Font-Bold="True" ForeColor="White" Style="z-index: 110;
                    left: 432px; position: absolute; top: 111px"></asp:RequiredFieldValidator>
            </asp:Panel>
            <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" Font-Bold="True" ForeColor="#990000"
                    OnClick="Button2_Click" Style="z-index: 105; left: 58px; position: absolute;
                    top: 87px" Text="BACK" Height="38px" Width="100px" CausesValidation="False" Font-Size="14pt" />
            <asp:Button ID="btnemailok" runat="server" BackColor="#FF9999" Font-Bold="True" OnClick="btnemailok_Click"
                Style="z-index: 104; left: 820px; position: absolute; top: 157px" Text="OK" Width="90px" Height="35px" Font-Size="14pt" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
