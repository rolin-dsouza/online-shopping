<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supplier details.aspx.cs" Inherits="supplier_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="background-color: #000000">
        <asp:Panel ID="Panel1" runat="server" Height="766px" Style="background-image: url(img/balloon1.jpg)"
            Width="1642px">
            &nbsp;&nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Style="font-size: x-large;
                z-index: 100; left: 658px; color: #ffff99; position: absolute; top: 58px; background-color: #000000"
                Text="SUPPLIER DETAILS" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" Style="z-index: 101; left: 801px; position: absolute;
                top: 105px; color: #660000; background-color: #ffffcc;" Text="EDIT" Font-Bold="True" OnClick="Button3_Click" Font-Size="14pt" CausesValidation="False" />
            <br />
            <asp:Button ID="button1" runat="server" Style="z-index: 102; left: 520px; position: absolute;
                top: 104px; color: #660000; background-color: #ffffcc;" Text="ADD" Font-Bold="True" OnClick="button1_Click" Font-Size="14pt" CausesValidation="False" />
            <asp:Button ID="Button2" runat="server" Style="z-index: 103; left: 652px; position: absolute;
                top: 104px; color: #660000; background-color: #ffffcc;" Text="DELETE" Font-Bold="True" OnClick="Button2_Click" Font-Size="14pt" CausesValidation="False" />
            <asp:Button ID="Button4" runat="server" Style="z-index: 104; left: 1008px; position: absolute;
                top: 107px; color: #660000; background-color: #ffffcc;" Text="BACK" OnClick="Button4_Click" CausesValidation="False" Font-Bold="True" Font-Size="14pt" />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
           
            <br />
            M &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Button ID="Button7" runat="server" Font-Bold="True" OnClick="Button7_Click1"
                Style="z-index: 105; left: 898px; color: #660000; position: absolute; top: 107px;
                background-color: #ffffcc" Text="VIEW" Font-Size="14pt" CausesValidation="False" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label2" runat="server" Style="font-size: large; color: #ffffcc; text-decoration: underline; z-index: 107; left: 750px; position: absolute; top: 182px;"
                Text="ADD SUPPLIER" Font-Bold="True"></asp:Label><br />
            <br />
            <table style="z-index: 100; left: 642px; position: absolute; top: 235px; width: 389px; height: 235px; color: #ff3399; background-color: transparent;">
                <tr>
                    <td style="width: 125px; color: #ff9999; height: 26px;">
                        <strong style="color: #ff6699">Supplier ID</strong></td>
                    <td style="width: 123px; height: 26px;">
                        <asp:TextBox ID="txtsupid" runat="server" ReadOnly="True"></asp:TextBox>
                        &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btngenerate" runat="server" Style="z-index: 100; left: 267px; position: absolute;
                            top: 2px; color: #990000; background-color: #ffffcc;" Text="Generate" Font-Bold="True" OnClick="Button7_Click" Font-Size="14pt" Height="30px" Width="92px" CausesValidation="False" />
                    </td>
                    <td style="width: 192px; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 125px; color: #ff6699">
                        <strong>Supplier Name</strong></td>
                    <td style="width: 123px">
                        <asp:TextBox ID="txtsupname" runat="server"></asp:TextBox></td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsupname"
                            ErrorMessage="Enter name"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 125px; color: #ff6699">
                        <strong>Email ID</strong></td>
                    <td style="width: 123px">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="Enter Email"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 125px; color: #ff6699; height: 40px;">
                        <strong>Phone No</strong></td>
                    <td style="width: 123px; height: 40px;">
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                    <td style="width: 192px; height: 40px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter Mobile number"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter valid phone number" ValidationExpression="([0-9]{10})$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width: 125px; color: #ff6699">
                        <strong>Address</strong></td>
                    <td style="width: 123px">
                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress"
                            ErrorMessage="Enter address"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 125px; color: #ff6699">
                        <strong>Pincode</strong></td>
                    <td style="width: 123px">
                        <asp:TextBox ID="txtpin" runat="server"></asp:TextBox></td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpin"
                            ErrorMessage="Enter pincode"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpin"
                            ErrorMessage="Enter valid pincode" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 64px">
                        &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="Button5" runat="server" Font-Bold="True" Text="DONE" style="color: #ffcc99; background-color: #330000" OnClick="Button5_Click" Font-Size="14pt" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
                        <asp:Button ID="Button6" runat="server" Font-Bold="True" Text="CANCEL" style="color: #ffcc99; background-color: #330000; z-index: 100; left: 214px; position: absolute; top: 299px;" OnClick="Button6_Click" Font-Size="14pt" CausesValidation="False" /></td>
                    <td colspan="1" style="width: 192px; height: 64px">
                    </td>
                </tr>
            </table>
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;
        </asp:Panel>
    
    </div>
    
    </form>
</body>
</html>
