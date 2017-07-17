<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="UI.Class.List" %>

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
    margin:0px auto;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="wrap">
    <ul id="tags">
            <li class="selectTag" style="left: 0px; top: 0px"><a href="javascript:void(0)" onclick="selectTag('tagContent0',this)"
                onfocus="this.blur()">所有分类列表</a></li>
        
        </ul>
      <%--<asp:Label ID="Label1" runat="server" Text="所有分类列表"></asp:Label>
        <br />--%>       
         <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" CellPadding="2" ForeColor="Black" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
             <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <HeaderTemplate>
                <table border="1"  cellspacing="0" style="width:910px;border:dashed">                  
                    <tr  style="height:50px">
                        <td class="auto-style1">分类ID</td>
                        <td class="auto-style1">商品分类</td>
                        <td class="auto-style1">删除</td>
                        <td class="auto-style1">编辑</td>
                    </tr>
            </HeaderTemplate>
             <ItemTemplate>
             <tr style="height:35px">
                <td align="center"><%# Eval("ClassID") %></td>
                <td align="center"><%# Eval("ClassName") %></td>
                <td align="center">
                    <asp:LinkButton ID="LinkButton1" CommandName="delete" CommandArgument='<%# Eval("ClassID") %>' runat="server">删除</asp:LinkButton>
                </td>
                 <td align="center">
                     <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "ClassAdd.aspx?id="+Eval("ClassID") %>' runat="server">编辑</asp:HyperLink>
                 </td>
            </tr>
            </ItemTemplate>
             <AlternatingItemStyle BackColor="PaleGoldenrod" />
             <FooterStyle BackColor="Tan" />
             <FooterTemplate>
                 </table>
             </FooterTemplate>
             <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
         </asp:DataList>
    </div>
    </form>
</body>
</html>
