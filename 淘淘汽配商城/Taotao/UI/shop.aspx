<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="UI.shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        * {
              list-style:none;
        }
        #all {
        width:1349px;
        height:5851px;
        border:1px solid #f3f3f3;
        margin:0px auto;
        background-color:#f3f3f3;
        }
        #nav {
        width:1349px;
        height:28px;
        border:1px solid #808080;
        margin:0px auto;
       
        }
            .text {
            margin-left:100px;
            color:black;
            font-family:微软雅黑;
            font-size:15px;
            }
        #intro {
        width:1349px;
        height:137px;
        background-color:#f3f3f3;
        border:1px solid #f3f3f3;
        }
        #logo {
        width:250px;
        height:135px;
 
        margin-left:130px;
        float:left;
        }
        #search {
     width:425px;
         height:39px;
         border:1px solid green;
         margin-left:600px;
         margin-top:45px;
        }
        #menu {
        width:105px;
         height:50px;
         margin-left:1028px;
         margin-top:-40px;
        }
        .word {
        color:black;
        font-family:微软雅黑;
        font-size:15px;
        margin-left:1028px;
        margin-top:-40px;
        }
        #navlist {
        width:1349px;
         height:47px;
        border:1px solid #71ca32;
        background-color:#71ca32;
        }
            #navlist ul li {
            list-style:none;
            text-decoration:none;
       padding:30px;
            color:white;
            float:left;
            margin-left:120px;
        margin-top:-32px;
            }
        #middle {
            
            width: 921px;
            height: 5499px;
            margin:0px auto;
            border:1px solid white;
            background-color:#e1dddd;
        }
        #shop {
        width:922px;
        height:304px;

        }
        #content {
        width:922px;
        height:5190px;

        }
        #image {
        width:229px;
        height:227px;
        float:left;
  
        }
        #introduce {
            width:329px;
        height:327px;
        float:left;
        margin-left:100px;  
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="all">
        <div id="nav"><a class="text">您好！欢迎来到淘淘商城!请&nbsp&nbsp&nbsp</a>
            <a href="#">登录</a>
            <a href="#">注册</a>
        </div>
        <div id="intro">
            <div id="logo">
                <img src="Image/logo.png" />
                </div>
            <div id="search">
                
            </div>
            <div id="menu">
                <img src="Image/blackmenu.jpg" /><a class="word"></a>
            </div>
            
        </div>
        <div id="navlist">
            <ul>
                <li>首页</li>
                <li>配件商城</li>
                <li>汽配安装店</li>
                <li>车友社区</li>
                <li>帮助</li>
            </ul>
        </div>
        <div id="middle">
             <div id="image">
               <ul>
                   <li>
                       <asp:Image ID="Image1" runat="server" Height="229px" Width="227px" ImageUrl="~/2011/634703634085781250.jpg"/>

                   </li>
               </ul>
           </div>
           <div id="introduce">
               <h3>
                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                   <br />
                    <br />
                   <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
               </h3>
               <hr />
               <asp:Label ID="Label3" runat="server" Text="商品编号："></asp:Label>
               <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
               <br />
                <br />
               <asp:Label ID="Label5" runat="server" Text="淘淘价："></asp:Label>
               <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
               <br />
                <br />
               <%--<asp:Label ID="Label7" runat="server" Text="库存里："></asp:Label>
               <asp:Label ID="Label8" runat="server" Text=""></asp:Label>--%>
               <p>
                   <a href="gouwuche.aspx?id=">
                       <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/add-to-cart.gif" OnClick="ImageButton1_Click" />

                   </a>
               </p>
           </div>
            <div id="content">
        <img src="Image/未标题-1.jpg" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
