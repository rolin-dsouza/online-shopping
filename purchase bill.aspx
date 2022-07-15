<%@ Page Language="C#" AutoEventWireup="true" CodeFile="purchase bill.aspx.cs" Inherits="purchase_bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #000000">
        <asp:Panel ID="Panel1" runat="server" Height="634px" Style="background-image: url(img/pimg.jpg)"
            Width="1350px">
            <asp:Label ID="Label1" runat="server" Style="font-weight: bold; font-size: x-large;
                z-index: 100; left: 706px; color: #ffffff; position: absolute; top: 36px; text-decoration: underline"
                Text="PURCHASE BILL DETAILS" Font-Size="24pt"></asp:Label>
            <asp:Label ID="Label2" runat="server" Style="font-weight: bold; font-size: x-large;
                z-index: 101; left: 788px; color: #ffff99; position: absolute; top: 82px" Text="Ordered Item"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="z-index: 102; left: 355px;
                color: #ffffcc; position: absolute; top: 501px" Text="Item ID" Font-Size="14pt"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 103;
                left: 353px; position: absolute; top: 546px" Text="Item Name" Font-Size="14pt"></asp:Label>
            &nbsp;
            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 104;
                left: 1064px; position: absolute; top: 151px" Text="Serial No" Font-Size="Large"></asp:Label>
            <asp:Label ID="Label7" runat="server" Style="z-index: 105; left: 1184px; position: absolute;
                top: 152px" Text="Label" ForeColor="#FF6600"></asp:Label>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 106;
                left: 1071px; position: absolute; top: 190px" Text="Date" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 107; left: 584px;
                position: absolute; top: 215px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 108; left: 586px; position: absolute;
                top: 549px" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 109; left: 586px; position: absolute;
                top: 593px" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 110; left: 1181px; position: absolute;
                top: 195px" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 111;
                left: 354px; position: absolute; top: 216px" Text="Purchase Order No" Font-Size="14pt"></asp:Label>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 112;
                left: 356px; position: absolute; top: 266px" Text="Supplier ID" Font-Size="14pt"></asp:Label>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 113;
                left: 356px; position: absolute; top: 320px" Text="Supplier Name" Font-Size="14pt"></asp:Label>
            <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 114;
                left: 356px; position: absolute; top: 370px" Text="Bill No" Font-Size="14pt" Font-Strikeout="False"></asp:Label>
            <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 115;
                left: 355px; position: absolute; top: 590px" Text="Ordered Qty" Font-Size="14pt"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 116; left: 587px;
                position: absolute; top: 503px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 117; left: 585px; position: absolute;
                top: 270px" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 118; left: 583px; position: absolute;
                top: 319px" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 119; left: 585px; position: absolute;
                top: 371px" ReadOnly="True"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 120;
                left: 1071px; position: absolute; top: 402px" Text="Price" Font-Size="14pt"></asp:Label>
            <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 121;
                left: 1071px; position: absolute; top: 451px" Text="Total" Font-Size="14pt"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 122; left: 1172px; position: absolute;
                top: 398px" ReadOnly="True"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 123; left: 1174px; position: absolute;
                top: 452px" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#FFFFCC" Style="z-index: 124;
                left: 1067px; position: absolute; top: 495px" Text="Grand Total" Font-Size="14pt"></asp:Label>
            <asp:Button ID="Button2" runat="server" Height="32px" OnClick="Button2_Click" Style="z-index: 125;
                left: 898px; position: absolute; top: 594px" Text="DONE" BackColor="#FFFF99" Font-Bold="True" ForeColor="#CC0000" Width="87px" Font-Size="14pt" />
            &nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFFF" Font-Bold="True" ForeColor="#CC0000"
                Height="32px" OnClick="Button1_Click1" Style="z-index: 126; left: 903px; position: absolute;
                top: 542px" Text="NEXT" Font-Size="14pt" />
            &nbsp;
            <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="#FF9900" Style="z-index: 127;
                left: 1196px; position: absolute; top: 501px" Width="47px"></asp:Label>
            <asp:Button ID="btnback" runat="server" BackColor="#FFFFFF" Font-Bold="True" ForeColor="#FF3300"
                Height="35px" Style="z-index: 129; left: 216px; position: absolute; top: 114px"
                Text="BACK" Width="76px" OnClick="btnback_Click" Font-Size="14pt" />
           
        </asp:Panel>
    
    </div>
    
    
    </form>
</body>
</html>
