<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="UI.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mild">         
        <div id="yi">
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
        <div id="er">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/购物流程1.png" />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="淘淘网 全场满50元免运费"></asp:Label>
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/我的购物车.png" />
        <br />
           
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
            <HeaderTemplate>
                <table border="1" cellspacing="0" style="width:910px;border:dashed">
                    <tr style="height:50px">
                        <td>商品名称：</td>
                        <td>商品编号：</td>
                        <td>淘淘价：</td>
                        <td>数量：</td>
                        <td>操作：</td>
                    </tr>   
            </HeaderTemplate>
           <ItemTemplate>
             <tr style="height:35px">
                <td align="center"><%# Eval("ProductName") %></td>
                <td align="center"><%# Eval("ProductID") %></td>
                <td class="zi">￥<%# Eval("ProductPrice") %></td>
                <td align="center">                    
                    <%--<asp:Button ID="Button1" runat="server" Text="+" />
                    <asp:TextBox ID="num" runat="server" Width="30" Height="15" Text="1"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="-" />   --%>                
                   <%-- <input type="button" value="-" class="btn btnMinus" />
                    <input class="txt" type="text" value="1" />
                    <input class="btn btnAdd" type="button" value="+" />--%>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="minus" CommandArgument='<%# Eval("ProductID") %>' class="btn btnAdd" >-</asp:LinkButton>
                    <%--<input type="text" value="<%# Eval("count") %>" class="txt" disabled="disabled" />--%>
                     <%# Eval("count") %>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="add" CommandArgument='<%# Eval("ProductID") %>' class="btn btnMinus">+</asp:LinkButton>
                </td>
                <td >
                    <asp:LinkButton ID="LinkButton1" runat="server">删除</asp:LinkButton>
                </td>

            </tr>

           </ItemTemplate>
           <FooterTemplate>
               </table>
           </FooterTemplate>
        </asp:DataList>           
   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%--商品总金额：<asp:Label ID="lblmessage1" runat="server" ForeColor="Red">￥</asp:Label><asp:Label ID="lblmessage2" runat="server" ForeColor="Red"></asp:Label>元--%> 应付总额：<span id="spanTotal"><asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label></span> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%--<asp:Image ID="Image3" runat="server" ImageUrl="~/Image/继续购物.png" />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/去结算.png" />--%>
            <ul style="width:910px" class="abc">
                <li>
                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/Image/继续购物.png" runat="server" OnClick="ImageButton1_Click" />
                    <asp:ImageButton ID="ImageButton2" ImageUrl="~/Image/去结算.png" runat="server" OnClick="ImageButton2_Click"/> 
                </li>
            </ul>
               
        </div>
    </div>
</asp:Content>
