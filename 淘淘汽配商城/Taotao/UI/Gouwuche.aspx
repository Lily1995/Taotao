<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gouwuche.aspx.cs" Inherits="UI.Gouwuche" %>

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
            width:1349px;
            height:630px;
            border:1px solid black;
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
            width:923px;
            height:139px;
            margin:0px auto;
        }
            #top ul {
                height:139px;
                line-height:139px;
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
            width:923px;
            height:300px;
            margin:0px auto;
        }
       #top ul li {
            float:left;
            list-style:none;
         }
        .a{
            padding-top:-60px;
            margin-left:200px;
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
         
        .btnMinus,.btnAdd {
            border: 1px solid black;
            background-color: white;
            width: 25px;
            height: 25px;
        }
        .txt {
            width: 60px;
            height: 30px;
            border: 1px solid black;
            text-align: center;
            font: bold 15px/30px Verdana,Geneva,sans-serif;
        }
        .txt:hover {
                border: 1px solid red;
            }
    </style>
</head>
    
<body>  
  <form id="form1" runat="server"> 
   <div id="wrapper">
     <div id="ttop">
         <ul>
             <li><a href="#">admin</a>已登录</li>
             <li><a href="zhuce.aspx">注册</a></li>
         </ul>
     </div>
    <div id="top">
        <ul>
            <li>
                  <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/logo.png" Width="200px" Height="110px" />
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
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/购物流程1.png" />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="淘淘网 全场满50元免运费"></asp:Label>
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/我的购物车.png" />
        <br />
           
        <asp:DataList ID="DataList1" runat="server">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <td>商品名称：</td>
                        <td>商品编号：</td>
                        <td>淘淘价：</td>
                        <td>数量：</td>
                        <td>操作：</td>
                    </tr>   
            </HeaderTemplate>
           <ItemTemplate>
             <tr>
                <td><%# Eval("ProductName") %></td>
                <td><%# Eval("ProductID") %></td>
                <td class="zi">￥<%# Eval("ProductPrice") %></td>
                <td>                    
                    <asp:Button ID="Button1" runat="server" Text="+" />
                    <asp:TextBox ID="num" runat="server" Width="30" Height="15" Text="1"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="-" />                   
                    <%--<input type="button" value="-" class="btn btnMinus" />
                    <input class="txt" type="text" value="1" />
                    <input class="btn btnAdd" type="button" value="+" />--%>
                    <%--<asp:LinkButton ID="LinkButton2" runat="server" CommandName="minus" CommandArgument='<%# Eval("ProductID") %>' BorderStyle="Outset">-</asp:LinkButton>
                    <input type="text" value="<%# Eval("ordersCount") %>" class="txt" disabled="disabled" />
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="add" CommandArgument='<%# Eval("ProductID") %>' BorderStyle="Outset">+</asp:LinkButton>--%>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">删除</asp:LinkButton>
                </td>

            </tr>

           </ItemTemplate>
           <FooterTemplate>
               </table>
           </FooterTemplate>
        </asp:DataList>           
   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%--商品总金额：<asp:Label ID="lblmessage1" runat="server" ForeColor="Red">￥</asp:Label><asp:Label ID="lblmessage2" runat="server" ForeColor="Red"></asp:Label>元--%> 应付总额：<span id="spanTotal"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></span> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%--<asp:Image ID="Image3" runat="server" ImageUrl="~/Image/继续购物.png" />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/去结算.png" />--%>
        <asp:ImageButton ID="ImageButton1" ImageUrl="~/Image/继续购物.png" runat="server" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButton2" ImageUrl="~/Image/去结算.png" runat="server" OnClick="ImageButton2_Click"/>        
    </div>
   </div>
      </form>
</body>
</html>
