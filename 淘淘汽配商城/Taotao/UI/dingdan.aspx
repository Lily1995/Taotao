<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dingdan.aspx.cs" Inherits="UI.dingdan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .body {
            margin:0px;
            left:0px;
        }
          #wrapper {
            width:1360px;
            height:630px;
            border:0px solid black;
        }
        #ttop {
            width:923px;
            height:27px;
            margin:0px auto;          
        }
            #ttop ul {                
                 list-style:none;
            }
        #ttop ul li {
            float:left;
            padding-right:20px;          
        }
            #ttop ul li a {
                text-decoration:none;
                color:#0731d3;
                height:25px;
                line-height:25px;
            }
        #top {
            width:924px;
            height:138px;
            margin:0px auto;
        }
         #allnav {
            width:100%;
            height:45px;
            background-color:#0a930c;
        }
        #nav {
            width:923px;
            height:45px;
            margin:0px auto;
        }
            #nav ul {
                list-style:none;
                height:45px;
            }
                #nav ul li {               
                    float:left;
                    padding-right:70px;               
                    line-height:45px;
                } 
        #mild {
            width:924px;
            margin:0px auto;
        }
       #top ul li {
            float:left;
            list-style:none;
         }
        .a{
            margin-top:50px;
            margin-left:200px;
        }
        #search {
            height :45px;
            width :1349px;
            background-color :#71ca32;
            line-height :45px;
            margin:0px auto; 
        }
        .b {
            margin:0px auto; 
            float :left;
            margin-left :100px;
            text-align :center;
            list-style-type:none;
        }
        a {
            text-decoration:none;
            color:white;
        }
        .zi {
            color:#f00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
        <div id="ttop">
         <ul>
             <li><a href="#">
                 <%=Session["UserName"] %></a>已登录</li>
             <li><a href="zhuce.aspx">注册</a></li>
         </ul>
     </div>
        <div id="top">
        <ul>
            <li>
                  <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/logo.png" Width="200px" Height="97px" />
            </li> 
            <li class="a">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="搜索" BackColor="#00CC00" Height="38px" Width="62px" />
            </li>
        </ul>
      </div>
        <div id="allnav">
            <div id="nav">
               <ul>
                   <li><a href="#">首页</a></li>
                   <li><a href="#">配件商城</a></li>
                   <li><a href="#">汽配安装店</a></li>
                   <li><a href="#">车友社区</a></li>
                   <li><a href="#">帮助</a></li>                
               </ul>
            </div>
        </div>
    <div id="mild">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/购物流程2.png" />
        <br />
        请确认以下信息，然后提交订单<br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="收货人信息"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%=Session["UserName"] %>
        <%=Session["UserPwd"] %>
        <%=Session["Phone"] %>
        <%=Session["Email"] %>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="送货方式"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="付款方式"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="货到付款"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="商品清单"></asp:Label>
        <asp:DataList ID="DataList1" runat="server">
            <HeaderTemplate>
                <table border="1" cellspacing="0" style="width:910px;border:dashed">
                    <tr style="height:50px">
                        <td>商品名称：</td>
                        <td>商品编号：</td>
                        <td>淘淘价;</td>
                        <td>数量：</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="height:35px">
                  <td align="center"><%# Eval("ProductName") %></td>
                  <td align="center"><%# Eval("ProductID") %></td>
                  <td class="zi">￥<%# Eval("OrderMoney") %></td>
                  <td align="center"><%# Eval("count") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:DataList>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您需要支付：<asp:Label ID="Label7" ForeColor="Red" runat="server">￥</asp:Label>
        <asp:Label ID="lblmessage2" runat="server" ForeColor="Red"></asp:Label>
        元<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" ImageUrl="~/Image/提交订单.png" runat="server" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;
    </div>
            </div>
    </form>
</body>
</html>
