<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liebiao.aspx.cs" Inherits="UI.liebiao" %>

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
    
        <asp:Label ID="Label1" runat="server" Font-Size="14" ForeColor="black" Text="商品列表"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <dl>
                    <dt>
                        <asp:Image ID="Image1" ImageUrl='<%# "~/2011/"+Eval("ProductPic") %>' runat="server" Width="200" Height="200"/>
                    </dt>
                    <dd><a href="shop.aspx?id=<%# Eval("ProductID") %>"><%# Eval("ProductName") %></a></dd>
                    <dd><%# Eval("ProductDesc") %></dd>
                    <dd class="zi">￥<%# Eval("ProductPrice") %></dd>
                </dl>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
