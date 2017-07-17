<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UI.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>淘淘汽配后台管理系统</title>
</head>
     <frameset rows="120,*" cols="*" frameborder="no" border="0" framespacing="0" id="a">
        <frame src="Frame/TopFrame.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
	    <frameset cols="220,*" rows="*" id="setFrame" frameborder="no" border="0" framespacing="0">
            <frame src="Frame/LeftFrame.aspx" name="leftFrame" noresize scrolling="auto" id="leftFrame" title="leftFrame" />
            <frame src="Frame/MainFrame.aspx" name="Main" noresize scrolling="auto" id="Main" title="mainFrame" />
        </frameset>
    </frameset>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
