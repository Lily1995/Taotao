<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="UI.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #all {
    width:100%;
    height:1420px;
}
ul {
    list-style:none;
}

a {
    text-decoration:none;
}
*{
    margin:0px;
    padding:0px;
}
#allcontent {
    height:1329px;
    width:1418px;
     border-bottom:2px dashed #ccc;
    margin:0px auto;
    background-color:#f3f3f3;
}
#login {
    height:30px;
    width:1418px;
    border: 1px dashed #999;
    background-color:#ececec;
}
#login ul {
    list-style:none;
}
    #login ul li {
        float:left;
    }
#login ul li.a1 {
    margin-left:212px;
    line-height:25px;
    color:#000000;
}
#login ul li.a2 {
    line-height:25px;
    margin-left:18px;
}
#login ul li a {
    text-decoration:none;
    color:#999999;
}
#logo {
    width:1418px;
    height:138px;
    background-color:#f3f3f3;
}
    #logo ul {
        list-style:none;
    }
    #logo ul li {
        float:left;
    }
        #logo ul li img {
            margin-left:224px;
        }
        #logo ul li.ce {
            margin-left:174px;
            line-height:130px;
        }
        #logo ul li.sou {
            
            line-height:130px;
        }
#nav{
    height:44px;
    width:1418px;
    background-color:#71ca32;
}
    #nav ul li {
        float:left;
        margin-left:60px;
    }
#nav ul li.menulist {
    margin-left:224px;
}
#nav ul li a {
    color:white;
    line-height:40px;
}
/*p {
    font-weight:bold;
    font-size:20px;
    color:black;
    margin-top:13px;
}*/
#search {
    width:917px;
    height:1060px;
    margin:0px auto;
    background-color:#ffffff;
}
#font {
    color:red;
}
#font1 {
    color:#800c1d;
    font-weight:bold;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="all">
        <div id="allcontent">
            <div id="login">
                <ul>
                    <li class="a1">亲，欢迎来到淘淘汽配网上汽配商城！ 请</li>
                    <li class="a2"><a href="#"><%=Session["UserName"] %></a>已登录</li></a></li>
                    <li class="a2"><a href="#">注册</a></li>
                </ul>
            </div>
            <%--LOGO--%>
            <div id="logo">
                <ul>
                    <li><img src="Image/logo.png"/></li>
                    <li class="ce"><asp:TextBox ID="TextBox1" runat="server" Width="400" Height="30"></asp:TextBox></li>
                    <li class="sou">   
                         <asp:Button ID="Button1"  BackColor="#2f9800"  CssClass="souss" runat="server" Text="搜索"  Height="34px" Width="75px" OnClick="Button1_Click"/>
                    </li>
                </ul>
            </div>
            <%--导航菜单--%>
            <div id="nav">
                <ul>
                  <li class="menulist"><a href="#">配件分类</a>
                  </li>
                  <li><a href="shouye.aspx">首页</a></li>
                  <li><a href="#">配件商城</a></li>
                  <li><a href="#">汽配安装店</a></li>
                  <li><a href="group.html">车友社区</a></li>
                  <li><a href="group.html">帮助</a></li>
                </ul>
            </div>
            <div id="search">
                <%--<p>搜索商品</p>--%>
                <asp:Label ID="Label1" runat="server" Text="搜索商品" Font-Bold="true" Font-Size="Large"></asp:Label>
                <asp:DataList ID="DataList1" runat="server">
                    <HeaderTemplate>
                        <img src="Image/search-bg.png" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td></td>
                                <td></td>
                                <td colspan="2" id="font1"><%# Eval("ProductName") %>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <asp:Image ID="Image1" runat="server"  ImageUrl='<%# "~/2011/" +Eval("ProductPic") %>' Width="170" Height="175"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td id="font"> 
                                    ￥<%# Eval("productprice") %><asp:HyperLink ID="HyperLink1" ImageUrl="Image/购买.png"   runat="server"></asp:HyperLink>                            
                                    <asp:HyperLink ID="HyperLink2" ImageUrl="Image/结账.png"  runat="server"></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
