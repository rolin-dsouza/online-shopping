<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="userhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        <asp:Panel ID="Panel1" runat="server" Height="634px" Style="background-color: #ffcc99; z-index: 100; left: 10px; position: absolute; top: 15px;"
            Width="1350px">
            <asp:Panel ID="Panel2" runat="server" Height="53px" Style="color: #990000; background-color: #990000"
                Width="1367px">
                &nbsp; &nbsp; &nbsp; &nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button
                    ID="Button1" runat="server" Text="HOME" style="color: #ffcc99; background-color: transparent; z-index: 100; left: 44px; position: absolute; top: 12px;" Font-Bold="True" Font-Size="12pt" OnClick="Button1_Click" />
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Text="PRODUCTS" style="color: #ffcc99; background-color: transparent; z-index: 101; left: 147px; position: absolute; top: 13px;" Font-Bold="True" OnClick="Button2_Click" Font-Size="12pt" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Text="ABOUT US" style="color: #ffcc99; background-color: transparent; z-index: 102; left: 1105px; position: absolute; top: 13px;" Font-Bold="True" Font-Size="12pt" OnClick="Button3_Click1" />
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="LOGIN" style="color: #ffcc99; background-color: transparent; z-index: 103; left: 304px; position: absolute; top: 13px;" Font-Bold="True" OnClick="Button4_Click" Font-Size="12pt" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                <asp:Button ID="Button7" runat="server" Font-Bold="True" Font-Size="12pt" OnClick="Button7_Click"
                    Style="z-index: 106; left: 581px; color: #ffcc99; position: absolute; top: 14px;
                    background-color: transparent" Text="MY ORDER" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Style="z-index: 105; left: 1253px; position: absolute;
                    top: 14px; background-color: transparent;" Text="LOGOUT" Font-Bold="True" ForeColor="#FF9999" OnClick="Button5_Click" Font-Size="12pt" />
            </asp:Panel>
            &nbsp; &nbsp; &nbsp;<br />
            &nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="105px" Style="z-index: 100; left: 1192px;
                background-image: url(img/mothercare.jpg); position: absolute; top: 58px" Width="168px" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="37px"
                Style="z-index: 101; left: 455px; color: #660000; font-style: italic; position: absolute;
                top: 111px; text-align: center" Text="WELCOME " Width="98px" Font-Italic="True" Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Height="27px" Style="z-index: 102; left: 644px;
                position: absolute; top: 121px" Text="Label" Width="149px"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="428px" Style="z-index: 104; left: 260px;
                background-image: url(img/IMG-7564.jpg); position: absolute; top: 178px" Width="696px" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
         <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Size="12pt" OnClick="Button6_Click"
             Style="z-index: 102; left: 407px; color: #ffcc99; position: absolute; top: 28px;
             background-color: transparent" Text="MY ACCOUNT" />
    
    </div>
    
    
    </form>
</body>
</html>
