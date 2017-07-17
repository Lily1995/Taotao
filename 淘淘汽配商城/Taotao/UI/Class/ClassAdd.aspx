<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassAdd.aspx.cs" Inherits="UI.Class.ClassAdd" %>

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
         #form1 {
            background-color:#e8e5e5;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" Text="编辑分类"></asp:Label>
        <br />
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ControlToValidate="ClassName" ForeColor="Red" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label1" runat="server" Text="分类名称："></asp:Label>
                 </td>
                <td class="auto-style2"><asp:TextBox ID="ClassName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;<asp:Button ID="btnAdd" runat="server" Text="保存" OnClick="btnAdd_Click" style="height: 21px" /></td>
                <td>
                    <asp:Button ID="close" runat="server" Text="关闭界面" CausesValidation="False" />
                </td>
            </tr>
        </table>
    
        <br />
       
    
    </div>
    </form>
</body>
</html>
