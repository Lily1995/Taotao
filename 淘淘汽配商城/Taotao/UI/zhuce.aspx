<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuce.aspx.cs" Inherits="UI.zhuce" %>

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
      
        #top {
            width:924px;
            height:135px;
            margin:0px auto;
        }
        #mild {
             width:924px;
             height:500px;
             border:1px solid #808080;
             margin:0px auto;
        }
        #yi {
            height:35px;
            border:1px solid #808080;
            background-color:#e4e0e0;     
            padding-top:17px;
            padding-left:20px;
        }
        #left {
            width:500px;
            height:350px;
            margin-left:20px;
            border:0px solid #808080;
        }
        #left,#right{
            float:left;
        }
        #right{
            padding-left:100px;
            padding-top:100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
    <div id="top">
          <img src="Image/logo.png" height="135" width="250" />
      </div>
        <div id="mild">
            <div id="yi">
                欢迎注册
            </div>
            <div id="left">   
        <%--<asp:Image ID="Image1" runat="server" Height="51px" ImageUrl="~/Image/logo.png" Width="136px" />--%>
        <br />
        <asp:Label ID="Label1" runat="server" Text=" 用户 名："></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="name" runat="server" Width="171px"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="设置密码："></asp:Label>
&nbsp;
        <asp:TextBox ID="pwd" runat="server" Width="172px" style="margin-left: 0px" TextMode="Password"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
&nbsp;
        <asp:TextBox ID="repwd" runat="server" Width="173px" TextMode="Password"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label4" runat="server" Text="注册邮箱："></asp:Label>
&nbsp;
        <asp:TextBox ID="email" runat="server" Width="173px"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label5" runat="server" Text="手机phone:"></asp:Label>
&nbsp;
        <asp:TextBox ID="phone" runat="server" Width="173px"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label6" runat="server" Text="  验 证 码："></asp:Label>
&nbsp;
        <asp:TextBox ID="ma" runat="server" Width="111px" Height="17px"></asp:TextBox>
        &nbsp;
        <asp:Image ID="Image2" ImageUrl="~/Image/code.gif" runat="server" />
        &nbsp;看不清？<a href="#">换一张</a><br /><br />
        <asp:Button ID="btnAdd" runat="server" BackColor="#00CC00" Height="30px" Text="注册" Width="247px" OnClick="btnAdd_Click" />
        </div>
         <div id="right">
             <asp:Image ID="Image3" ImageUrl="~/Image/phone-bg.jpg" runat="server" />
         </div>
      </div>
            </div>
    </form>
</body>
</html>
