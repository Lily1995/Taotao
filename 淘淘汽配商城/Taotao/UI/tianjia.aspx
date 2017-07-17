<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tianjia.aspx.cs" Inherits="UI.tianjia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        .zi {
            color:#f00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="5">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                <dl>
                    <dt><asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/2011/"+Eval("ProductPic") %>' Width="200px" Height="150px"/></dt>
                    <dd>"><%# Eval("ProductName") %></dd>
                    <dd><%# Eval("ProductDesc") %></dd>
                    <dd class="zi">￥<%# Eval("ProductPrice") %></dd>
                </dl>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
    </div>
    </form>
</body>
</html>
