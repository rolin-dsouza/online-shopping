<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supplier edit.aspx.cs" Inherits="supplier_edit" %>

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
            &nbsp; &nbsp;<br />
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
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Font-Italic="False" Style="font-size: large;
                color: #ffffff; text-decoration: underline; z-index: 105; left: 728px; position: absolute; top: 132px;" Text="EDIT SUPPLIER" Font-Bold="True"></asp:Label><br />
            <br />
            <table style="z-index: 100; left: 659px; position: absolute; top: 225px">
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Supplier Name</strong></td>
                    <td style="width: 95px">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList></td>
                    <td style="width: 184px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Supplier ID</strong></td>
                    <td style="width: 95px">
                        <asp:TextBox ID="txtsupname" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 184px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Email ID</strong></td>
                    <td style="width: 95px">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                    <td style="width: 184px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="Enter valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="Enter email"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Phone No</strong></td>
                    <td style="width: 95px">
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                    <td style="width: 184px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter valid phone number" ValidationExpression="([0-9]{10})$"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter phone number"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Address</strong></td>
                    <td style="width: 95px">
                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
                    <td style="width: 184px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaddress"
                            ErrorMessage="Enter address"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Pincode</strong></td>
                    <td style="width: 95px">
                        <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox></td>
                    <td style="width: 184px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode"
                            ErrorMessage="Enter valid pincode" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpincode"
                            ErrorMessage="Enter pincode"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 126px; color: #ff6699">
                        <strong>Status</strong></td>
                    <td style="width: 95px">
                        <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox></td>
                    <td style="width: 184px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtstatus"
                            ErrorMessage="Enter status"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 56px">
                        &nbsp; &nbsp;<asp:Button ID="btnupdate" runat="server" Font-Bold="True" Text="UPDATE" OnClick="btnupdate_Click" BackColor="#FFFF99" Font-Size="14pt" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button6" runat="server" Font-Bold="True"
                            Text="CANCEL" OnClick="Button6_Click" BackColor="#FFFF99" Font-Size="14pt" style="z-index: 100; left: 216px; position: absolute; top: 251px" CausesValidation="False" />
                        &nbsp;
                    </td>
                    <td colspan="1" style="width: 184px; height: 56px">
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" Style="z-index: 101; left: 574px; position: absolute;
                top: 176px; color: #660000; background-color: #ffffcc;" Text="ADD" Font-Bold="True" OnClick="Button1_Click" Font-Size="14pt" CausesValidation="False" />
            <asp:Button ID="Button2" runat="server" Style="z-index: 102; left: 688px; position: absolute;
                top: 174px; color: #660000; background-color: #ffffcc;" Text="DELETE" Font-Bold="True" OnClick="Button2_Click" Font-Size="14pt" CausesValidation="False" />
            <asp:Button ID="Button3" runat="server" Style="z-index: 103; left: 871px; position: absolute;
                top: 175px; color: #660000; background-color: #ffffcc;" Text="VIEW" Font-Bold="True" OnClick="Button3_Click" Font-Size="14pt" CausesValidation="False" />
            <asp:Button ID="Button4" runat="server" Style="z-index: 104; left: 993px; position: absolute;
                top: 172px; color: #660000; background-color: #ffffcc;" Text="BACK" Font-Bold="True" OnClick="Button4_Click" Font-Size="14pt" CausesValidation="False" />
        </asp:Panel>
    
    </div>
    
    
    </form>
</body>
</html>
