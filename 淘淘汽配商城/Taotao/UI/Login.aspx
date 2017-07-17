<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            margin:0px;
            left:0px;
            margin:0px auto;
        }
        #top {
            width:924px;
            height:135px;
            margin:0px auto;
        }
        #mild {
             width:924px;
             height:487px;
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
        #a {
            margin-top:30px;
            width:480px;
            height:300px;
            margin-left:50px;
            border:0px solid #808080;
            float:left;
        }
        #b {
            width:100px;
            height:100px;
            margin:0px;
            left:0px;
            float:left;
        }
        div#b {
            margin-top:30px;
            padding-left:20px;
        }
        .d {
            color:black;
            font-size:14px;
        }
        .x{
            color:#808080;
            font-size:14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div id="top">
          <img src="Image/logo.png" height="135" width="250" />
      </div>
        <div id="mild">
            <div id="yi">
                欢迎登录
            </div>
            <div id="a">
        <%--<asp:Image ID="Image1" ImageUrl="~/Image/logo.png" runat="server" Height="63px" Width="179px" />   --%>
        <br />
&nbsp;&nbsp;&nbsp;   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ForeColor="Red" ControlToValidate="name" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="name" runat="server" Height="23px" Width="193px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ForeColor="Red" ControlToValidate="pwd" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pwd" runat="server" Height="20px" Width="191px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server" BackColor="#00CC00" Height="33px" Text="登录" Width="191px" OnClick="btnLogin_Click" />
        <br />
&nbsp;&nbsp;&nbsp;
        </div>
        <div id="b">
               <p class="d">还不是淘淘汽配商城用户？</p>
               <p class="x">现在免费注册成为淘淘汽配商城用户，便能立刻享受便宜又放心的购物乐趣</p>
              <asp:Button ID="zhuce" runat="server" BackColor="#00CC00" Height="33px" Text="注册新用户" Width="191px" OnClick="zhuce_Click" CausesValidation="False" />    
            <p><asp:Image ID="Image1" ImageUrl="~/Image/wuyihuodong.png" runat="server" /></p>
             </div>
        </div>
         
    </form>
</body>
</html>
