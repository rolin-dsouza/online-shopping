<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my account.aspx.cs" Inherits="my_account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #993300">
        <asp:Panel ID="Panel1" runat="server" Height="766px" Style="background-color: #660000; background-image: url(img/reg.jpg);"
            Width="1642px">
             <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True"
                Style="font-size: xx-large; z-index: 100; left: 469px; position: absolute; top: 53px; color: #ff3399;"
                Text="MY ACCOUNT" ForeColor="#FF0099"></asp:Label>
                
                 <table style="z-index: 100; left: 376px; width: 440px; position: absolute; top: 119px" id="TABLE1" onclick="return TABLE1_onclick()">
                <tr>
                    <td style="width: 100px; height: 42px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Name" Font-Bold="True" Font-Size="14pt" style="z-index: 100; left: 14px; position: absolute; top: 10px; text-align: center" BackColor="#FFCC99" Height="30px" Width="75px"></asp:Label>
                        &nbsp;&nbsp;<strong> </strong></td>
                    <td style="width: 100px; height: 42px">
                        <asp:TextBox ID="txtname" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 100px; height: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 42px">
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>&nbsp; 
                            <asp:Label ID="Label3" runat="server" Text="Mobno" style="z-index: 100; left: 15px; position: absolute; top: 105px; text-align: center;" Font-Size="14pt" BackColor="#FFFFCC" Height="30px" Width="75px"></asp:Label></strong></td>
                    <td style="width: 100px; height: 42px">
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 100px; height: 42px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter valid mobile number" ForeColor="White" Style="z-index: 100;
                            left: 288px; position: absolute; top: 99px" ValidationExpression="([0-9]{10})$"
                            Width="167px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 12px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Email" style="z-index: 100; left: 14px; position: absolute; top: 57px; text-align: center; background-color: #ffcc99;" BackColor="#FFCC99" Font-Size="14pt" Height="30px" Width="75px"></asp:Label></td>
                    <td style="width: 100px; height: 12px">
                        &nbsp;<asp:TextBox ID="txtphone" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    <td style="width: 100px; height: 12px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone"
                            ErrorMessage="Enter mobile number" ForeColor="White" Style="z-index: 100; left: 288px;
                            position: absolute; top: 116px" Width="180px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 42px">
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Address" style="z-index: 100; left: 15px; position: absolute; top: 150px; text-align: center" BackColor="#FFFFCC" Font-Size="14pt" Height="30px" Width="75px"></asp:Label>
                        &nbsp;&nbsp;
                    </td>
                    <td style="width: 100px; height: 42px">
                        <asp:TextBox ID="txtaddress" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 100px; height: 42px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaddress"
                            ErrorMessage="Enter address" ForeColor="White"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 42px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;<strong> <asp:Label ID="Label6" runat="server" Text="City" style="z-index: 100; left: 15px; position: absolute; top: 195px; text-align: center" BackColor="#FFFFCC" Font-Bold="True" Font-Size="14pt" Height="30px" Width="75px"></asp:Label>
                        </strong></td>
                    <td style="width: 100px; height: 42px">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList></td>
                    <td style="width: 100px; height: 42px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 42px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Pincode" style="z-index: 100; left: 17px; position: absolute; top: 242px; text-align: center" BackColor="#FFFFCC" Font-Size="14pt" Height="30px" Width="75px"></asp:Label>&nbsp;
                    </td>
                    <td style="width: 100px; height: 42px">
                        <asp:TextBox ID="txtpincode" runat="server" ReadOnly="True"></asp:TextBox></td>
                    <td style="width: 100px; height: 42px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode"
                            ErrorMessage="Enter valid pincode" ForeColor="White" ValidationExpression="[0-9]{6}" Width="149px"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpincode"
                            ErrorMessage="Enter Pincode" ForeColor="White"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 95px">
                        <asp:Button ID="btndone" runat="server" Font-Bold="True" Text="DONE" OnClick="btndone_Click1" style="z-index: 103; left: 133px; position: absolute; top: 314px" Height="30px" Width="67px" BackColor="#FFFF99" Font-Size="12pt" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                        
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnback" runat="server" Font-Bold="True" Text="BACK" OnClick="btnback_Click" style="z-index: 101; left: 655px; position: absolute; top: 520px" Height="37px" Width="73px" BackColor="#FFFF99" Font-Size="12pt" CausesValidation="False" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Button ID="btnchange" runat="server" Font-Bold="True" OnClick="btnchange_Click"
                            Text="CHANGE PASSWORD" style="z-index: 102; left: 346px; position: absolute; top: 518px" BackColor="#FFFF99" Font-Size="12pt" Height="34px" Width="178px" CausesValidation="False" />
                    
            &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EDIT" style="z-index: 102; left: 855px; position: absolute; top: 84px" Font-Bold="True" Height="34px" Width="73px" BackColor="#FFFFFF" Font-Size="14pt" ForeColor="#CC0000" CausesValidation="False" />
            &nbsp;
            
            
            </asp:Panel>
    
    </div>
    
    </form>
</body>
</html>
