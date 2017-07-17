<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeftFrame.aspx.cs" Inherits="UI.Frame.LeftFrame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            background-color:#d9fbf8;
            height:800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">   
         <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1" ImageSet="BulletedList3" ShowExpandCollapse="False">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="siteMapNode" NavigateUrlField="url" TextField="title" Target="Main" />
            </DataBindings>
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" ForeColor="#5555DD" />
        </asp:TreeView>  
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/menu.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
