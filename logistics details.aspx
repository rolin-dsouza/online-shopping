<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logistics details.aspx.cs" Inherits="logistics_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #000000">
        <table style="z-index: 100; left: 579px; position: absolute; top: 272px">
            <tr>
                <td style="width: 100px; color: #000066; height: 45px;">
                    <strong style="color: #cccc99; background-color: #000000">&nbsp;Logistic ID</strong></td>
                <td style="width: 100px; height: 45px;">
                    <asp:TextBox ID="txtlogid" runat="server" ReadOnly="True"></asp:TextBox>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="btngenerate" runat="server" Font-Bold="True" OnClick="btngenerate_Click"
                        Style="z-index: 100; left: 307px; color: #006600; position: absolute; top: 7px;
                        background-color: #ffcc99" Text="Generate" Font-Size="12pt" CausesValidation="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlogid"
                        ErrorMessage="Please genarate ID" Font-Bold="True" ForeColor="Black" Width="131px"></asp:RequiredFieldValidator>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 173px; height: 45px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000; height: 40px;">
                    <strong>Email ID</strong></td>
                <td style="width: 100px; height: 40px;">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                <td style="width: 173px; height: 40px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Email" ForeColor="Black" Font-Bold="True"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter valid Email" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>Phone No</strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                <td style="width: 173px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone"
                        ErrorMessage="Enter phone number" ForeColor="Black" Font-Bold="True"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone"
                        ErrorMessage="Enter valid Phone number" ForeColor="Black" ValidationExpression="([0-9]{10})$" Font-Bold="True"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>Address</strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
                <td style="width: 173px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress"
                        ErrorMessage="Enter address" ForeColor="Black" Font-Bold="True"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>City</strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
                <td style="width: 173px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcity"
                        ErrorMessage="Enter city" ForeColor="Black" Font-Bold="True"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>Pincode</strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox></td>
                <td style="width: 173px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpincode"
                        ErrorMessage="Enter pincode" ForeColor="Black" Font-Bold="True"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode"
                        ErrorMessage="Enter valid pincode" ForeColor="Black" ValidationExpression="[0-9]{6}" Font-Bold="True"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 54px">
                    &nbsp; &nbsp;
                    <asp:Button ID="btndone" runat="server" Text="DONE" style="color: #660000" Font-Bold="True" OnClick="btndone_Click" Font-Size="14pt" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                        ID="Button6" runat="server" Text="CANCEL" style="color: #660000" Font-Bold="True" Font-Size="14pt" OnClick="Button6_Click" CausesValidation="False" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td colspan="1" style="width: 173px; height: 54px">
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" Height="766px" Style="background-image: url(img/phooa.jpeg)"
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
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                Style="z-index: 100; left: 501px; color: #003300; position: absolute; top: 137px;
                background-color: #ffffcc" Text="DELETE" Font-Size="14pt" CausesValidation="False" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click"
                Style="z-index: 101; left: 736px; color: #003300; position: absolute; top: 139px;
                background-color: #ffffcc" Text="VIEW" Font-Size="14pt" CausesValidation="False" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click"
                Style="z-index: 102; left: 640px; color: #003300; position: absolute; top: 140px;
                background-color: #ffffcc" Text="EDIT" Font-Size="14pt" CausesValidation="False" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label
                ID="Label2" runat="server" Font-Underline="True" Style="font-size: large; color: #ffffcc; z-index: 103; left: 654px; position: absolute; top: 206px;"
                Text="ADD LOGISTIC"></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Style="font-size: x-large;
                z-index: 104; left: 613px; color: #ffffff; position: absolute; top: 69px" Text="LOGISTICS DETAILS" Font-Bold="True" Font-Underline="True"></asp:Label>
            &nbsp;&nbsp;<br />
            <asp:Button ID="Button4" runat="server" Font-Bold="True" OnClick="Button4_Click"
                Style="z-index: 106; left: 831px; color: #003300; position: absolute; top: 137px;
                background-color: #ffffcc" Text="BACK" Font-Size="14pt" CausesValidation="False" />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        </asp:Panel>
    
    </div>
    
    
    </form>
</body>
</html>
