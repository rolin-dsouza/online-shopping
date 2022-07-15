<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logistic edit.aspx.cs" Inherits="logistic_edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="background-color: #000000">
        <table style="z-index: 100; left: 621px; position: absolute; top: 308px">
            <tr>
                <td style="width: 100px; color: #000066; height: 24px;">
                    <strong style="color: #cccc99; background-color: #000000">&nbsp;Logistic EmailID</strong></td>
                <td style="width: 131px; height: 24px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
                <td style="width: 131px; height: 24px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000; height: 26px;">
                    <strong>Logistic ID</strong></td>
                <td style="width: 131px; height: 26px;">
                    <asp:TextBox ID="txtemail" runat="server" ReadOnly="True"></asp:TextBox></td>
                <td style="width: 131px; height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Select Logistic Email" Font-Bold="True" ForeColor="Black"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>Phone No</strong></td>
                <td style="width: 131px">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                <td style="width: 131px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone"
                        ErrorMessage="Enter valid Phone number" Font-Bold="True" ForeColor="Black" ValidationExpression="([0-9]{10})$"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtphone"
                        ErrorMessage="Enter phone number" Font-Bold="True" ForeColor="Black" Width="174px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>Address</strong></td>
                <td style="width: 131px">
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
                <td style="width: 131px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaddress"
                        ErrorMessage="Enter address" Font-Bold="True" ForeColor="Black"></asp:RequiredFieldValidator></td>
</tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>City</strong></td>
                <td style="width: 131px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
                <td style="width: 131px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcity"
                        ErrorMessage="Enter city" Font-Bold="True" ForeColor="Black"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000">
                    <strong>Pincode</strong></td>
                <td style="width: 131px">
                    <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox></td>
                <td style="width: 131px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode"
                        ErrorMessage="Enter valid Pincode" Font-Bold="True" ForeColor="Black" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode"
                        ErrorMessage="Enter pincode" Font-Bold="True" ForeColor="Black"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; color: #cccc99; background-color: #000000; height: 42px;">
                    <strong>Status</strong></td>
                <td style="width: 131px; height: 42px;">
                    <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox></td>
                <td style="width: 131px; height: 42px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtstatus"
                        ErrorMessage="Enter status" Font-Bold="True" ForeColor="Black"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 54px">
                    &nbsp; &nbsp;
                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" style="color: #660000" Font-Bold="True" OnClick="btnupdate_Click" Font-Size="14pt" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                        ID="Button6" runat="server" Text="CANCEL" style="color: #660000; z-index: 100; left: 197px; position: absolute; top: 276px;" Font-Bold="True" Font-Size="14pt" CausesValidation="False" OnClick="Button6_Click" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td colspan="1" style="height: 54px">
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
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                Style="z-index: 100; left: 650px; color: #003300; position: absolute; top: 139px;
                background-color: #ffffcc" Text="ADD" Font-Size="14pt" CausesValidation="False" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click"
                Style="z-index: 101; left: 752px; color: #003300; position: absolute; top: 139px;
                background-color: #ffffcc" Text="DELETE" Font-Size="14pt" CausesValidation="False" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click"
                Style="z-index: 104; left: 900px; color: #003300; position: absolute; top: 139px;
                background-color: #ffffcc" Text="VIEW" Font-Size="14pt" CausesValidation="False" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button4" runat="server" Text="BACK" style="color: #003300; z-index: 103; left: 1007px; position: absolute; top: 141px; background-color: #ffffcc;" Font-Bold="True" OnClick="Button4_Click" Font-Size="14pt" CausesValidation="False" /><br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label
                ID="Label2" runat="server" Font-Underline="True" Style="font-size: large; color: #ffffcc"
                Text="EDIT LOGISTIC" Font-Bold="True"></asp:Label>
            &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
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
