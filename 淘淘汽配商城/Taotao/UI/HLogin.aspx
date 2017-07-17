<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HLogin.aspx.cs" Inherits="UI.HLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            margin:0px;
            left:0px;
        }       
        #wrapper {
            width:1366px;
            height:604px;
        }
        #mild {
            width:604px;
            height:309px;
            margin:0px auto;
            background-image:url('Image/QQ图片20170329091734.jpg');
            background-repeat:no-repeat;
        }
        #yi {
            width:150px;
            height:20px;
            margin:0px auto;
        }
        #er {
            width:150px;
            height:150px;
            margin:0px auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">   
            <div id="mild">
        <div id="yi">
            <asp:Label ID="Label1" runat="server" Text="登陆网站后台管理"></asp:Label>   
        </div>  
                <br />
        <div id="er">
        <asp:Label ID="Label2" runat="server" Text="管理员："></asp:Label>
        <asp:TextBox ID="AdName" runat="server"></asp:TextBox>   
                <br />
        <asp:Label ID="Label3" runat="server" Text="密 码："></asp:Label>
&nbsp;<asp:TextBox ID="Adpwd" runat="server" TextMode="Password"></asp:TextBox>
                <br />
        <asp:Button ID="btnLogin" runat="server" Text="登陆" OnClick="btnLogin_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="Reset" runat="server" Text="取消" />
        </div>          
            </div>
       </div>
    </form>
</body>
</html>
