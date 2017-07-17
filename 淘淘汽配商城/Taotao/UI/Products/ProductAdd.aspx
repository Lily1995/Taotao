<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductAdd.aspx.cs" Inherits="UI.Products.ProductAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 218px;
        }
        .auto-style4 {
            height: 20px;
            width: 218px;
        }
        .auto-style5 {
            width: 218px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 498px;
        }
        .auto-style8 {
            height: 20px;
            width: 498px;
        }
        .auto-style9 {
            height: 23px;
            width: 498px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="编辑商品信息"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="background-color: #66CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ForeColor="Red" ControlToValidate="name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label2" runat="server" Text="商品名称："></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #66CCFF">
                    <asp:Label ID="Label3" runat="server" Text="商品描述："></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="desc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #66CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ForeColor="Red" ControlToValidate="num" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label4" runat="server" Text="数量："></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="num" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #66CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ForeColor="Red" ControlToValidate="price" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label5" runat="server" Text="单价："></asp:Label>
                </td>
                <td class="auto-style7">￥<asp:TextBox ID="price" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" style="background-color: #66CCFF">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="*" ForeColor="Red" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label6" runat="server" Text="所属种类："></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4" style="background-color: #66CCFF">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/2011/暂无图片.png" />
                    <asp:Label ID="lblpic0" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #66CCFF">
                    <asp:Label ID="Label8" runat="server" Text="商品图片："></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:FileUpload ID="fileUpload" runat="server" />
                    <asp:Button ID="Upload" runat="server" Text="上传图片" OnClick="Upload_Click" CausesValidation="False" />
                    <asp:Label ID="lblPic" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #66CCFF">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnSure" runat="server" Text="保存" OnClick="btnSure_Click" />
&nbsp;
                    <asp:Button ID="close" runat="server" Text="关闭页面" CausesValidation="False" OnClick="close_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
