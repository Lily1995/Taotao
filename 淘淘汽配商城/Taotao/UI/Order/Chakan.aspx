<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chakan.aspx.cs" Inherits="UI.Order.Chakan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         html ,body {
    padding:0;
	margin:0;
	text-align: center;
	font:12px Tahoma, Arial, Helvetica, sans-serif;
	color:#333;
    background: #e0e4e4;
	line-height:18px;
}
        #tags { 
    height:23px;
	margin:0;
	padding:0;
	}
#tags li {
    float:left;
	margin-right:3px;
	background:#c7dae4 url(../images/title-bg2.gif) repeat-x top;
	height:22px;
	list-style-type:none;
	border:1px solid #778e99;
	border-bottom:0;
}
#tags li a {
    text-decoration:none;
	padding:0px 15px;
	line-height:23px;
	color:#333;
}
#tags li.selectTag {
    background:#fff;
	position:relative;
	line-height:24px;
	height:23px;
	margin-bottom:-1px;
	font-weight:bold;
}
#tagContent {
    padding:10px;
	background:#fff;
	border:1px solid #778e99;
	margin-bottom:5px;
}
.tagContent {
    display:none;
	width:100%;
}
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div id="wrap">
    <ul id="tags">
            <li class="selectTag" style="left: 0px; top: 0px"><a href="javascript:void(0)" onclick="selectTag('tagContent0',this)"
                onfocus="this.blur()">查看订单</a></li>
        
        </ul>
       <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="178px" style="margin-right: 2px" CellPadding="2" ForeColor="Black" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <HeaderTemplate>
                <table border="1" cellspacing="0" style="width:910px;border:dashed">                  
                   <%-- <tr>                       
                        <td class="auto-style1">订单号：</td>                                        
                        <td class="auto-style1">用户名：</td>    
                    </tr>
                    <tr>
                        <td class="auto-style1">商品名称：</td>
                        <td class="auto-style1">购买数量：</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">商品单价：</td>
                        <td class="auto-style1">选择物流：</td>                                           
                    </tr>--%>
            </HeaderTemplate>
             <ItemTemplate>
             <tr style="height:35px">
                <td style="width:200px" class="auto-style1">订单号：</td>  
                <td style="width:200px" class="auto-style1"><%# Eval("OrderID") %></td>
                <td style="width:200px" class="auto-style1">用户名：</td>    
                <td style="width:200px" class="auto-style1"><%# Eval("UserName") %></td>                                
            </tr>
            <tr  style="height:35px">
                <td style="width:200px" class="auto-style1">商品名称：</td>
                <td style="width:200px" class="auto-style1"><%# Eval("ProductName") %></td>
                <td style="width:200px" class="auto-style1">购买数量：</td>
                <td style="width:200px" class="auto-style1"><%# Eval("Num") %></td> 
            </tr>
            <tr  style="height:35px">
                <td style="width:200px" class="auto-style1">商品单价：</td>
                <td style="width:200px" class="auto-style1"><%# Eval("ProductPrice") %></td>
                <td style="width:200px" class="auto-style1">选择物流：</td>
                <td style="width:200px" class="auto-style1"><%# Eval("Convery") %></td>                              
            </tr>
            </ItemTemplate>
             <AlternatingItemStyle BackColor="PaleGoldenrod" />
             <FooterStyle BackColor="Tan" Font-Bold="True" />
             <FooterTemplate>
                 </table>
             </FooterTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
         </asp:DataList>      
    </div>
    </form>
</body>
</html>
