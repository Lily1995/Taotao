<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopFrame.aspx.cs" Inherits="UI.Frame.TopFrame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            background-color:#d1fafc;
            height:120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/adminimage/logo.png" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>管理员：<%=Session["UserName"] %></strong>你好，欢迎登录&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Image ID="Image2" runat="server" ImageUrl="~/adminimage/out.gif" />
        </div>
    </form>
</body>
</html>
