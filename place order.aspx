<%@ Page Language="C#" AutoEventWireup="true" CodeFile="place order.aspx.cs" Inherits="place_order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
      <div style="background-color: #000000">
        <asp:Panel ID="Panel1" runat="server" Height="766px" Width="1642px" style="background-image: url(img/imggg.jpg)">
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="BACK" OnClick="Button1_Click" style="z-index: 100; left: 37px; position: absolute; top: 41px" BackColor="#FFFFFF" ForeColor="#CC3300" Height="35px" Width="74px" Font-Size="14pt" CausesValidation="False" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="z-index: 101; left: 694px;
                color: #ff0000; position: absolute; top: 47px" Text="PLACE ORDER" Font-Underline="True" Font-Size="24pt" ForeColor="#FFFF99"></asp:Label>
            &nbsp;&nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <hr style="z-index: 100; left: -1px; position: absolute; top: 332px" />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="z-index: 102; left: 360px;
                color: #ffff99; position: absolute; top: 125px" Text="Purchase order no" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="txtpurorno" runat="server" Style="z-index: 103; left: 543px; position: absolute;
                top: 124px" ReadOnly="True"></asp:TextBox>
 <asp:Button ID="btngenerate" runat="server" Font-Bold="True" Style="z-index: 104; left: 583px;
                position: absolute; top: 153px" Text="Generate" OnClick="btngenerate_Click" CausesValidation="False" Font-Size="12pt" />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 105; left: 363px;
                color: #ffff99; position: absolute; top: 194px" Text="Supplier ID" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="txtsupid" runat="server" Style="z-index: 106; left: 545px; position: absolute;
                top: 199px" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="z-index: 107; left: 860px;
                color: #ffff99; position: absolute; top: 128px" Text="Supplier Name" Font-Size="14pt"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 108; left: 1017px;
                position: absolute; top: 129px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="z-index: 109; left: 883px;
                color: #ffff99; position: absolute; top: 202px" Text="Email ID" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="txtsupemail" runat="server" Style="z-index: 110; left: 1020px; position: absolute;
                top: 195px" ReadOnly="True"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btndone" runat="server" Font-Bold="True" Style="z-index: 111; left: 766px;
                position: absolute; top: 247px; color: #cc0000; background-color: #ffffff;" Text="Done" Font-Underline="True" OnClick="btndone_Click" CausesValidation="False" Font-Size="14pt" />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="z-index: 112; left: 744px;
                color: #ff0000; position: absolute; top: 357px" Text="PRODUCT" Font-Underline="True" Font-Size="24pt"></asp:Label>
            <asp:Label ID="Label7" runat="server" Style="z-index: 113; left: 393px; position: absolute;
                top: 431px; color: #ffff99;" Text="Date" Font-Bold="True" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" Style="z-index: 114;
                left: 502px; position: absolute; top: 430px" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="z-index: 115; left: 875px;
                color: #ffff99; position: absolute; top: 435px" Text="Product Name" Font-Size="14pt"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 116; left: 1003px;
                position: absolute; top: 435px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Style="z-index: 117; left: 392px;
                color: #ffff99; position: absolute; top: 510px" Text="Qty" Width="41px" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="txtqty" runat="server" Style="z-index: 118; left: 501px; position: absolute;
                top: 510px"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Style="z-index: 119; left: 878px;
                color: #ffff99; position: absolute; top: 511px" Text="Product ID" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="txtprodid" runat="server" Style="z-index: 120; left: 1007px; position: absolute;
                top: 508px" ReadOnly="True"></asp:TextBox>
            <asp:Button ID="btnadditem" runat="server" Font-Bold="True" Style="z-index: 121;
                left: 744px; color: #cc0000; position: absolute; top: 565px; background-color: #ffffff"
                Text="ADD ITEM" OnClick="btnadditem_Click" Font-Size="14pt" />
            &nbsp;
            <asp:Button ID="btn_finish" runat="server" Style="z-index: 122; left: 763px; position: absolute;
                top: 608px; color: #cc0000; background-color: #ffffff;" Text="FINISH" Font-Bold="True" OnClick="btn_finish_Click" CausesValidation="False" Font-Size="14pt" />
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtqty"
                ErrorMessage="Enter qty" Font-Bold="True" Style="z-index: 123; left: 576px; position: absolute;
                top: 567px"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtqty"
                ErrorMessage="Enter qty within range" Font-Bold="True" MaximumValue="250" MinimumValue="1"
                Style="z-index: 125; left: 577px; position: absolute; top: 542px" Type="Integer"></asp:RangeValidator>
        </asp:Panel>
    
    </div>
    
    
    </form>
</body>
</html>
