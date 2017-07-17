<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainFrame.aspx.cs" Inherits="UI.Frame.MainFram" %>

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
 #bot {
            margin-top:500px;
        }
    </style>
</head>
<body>
     <div id="wrap">
        <ul id="tags">
            <li class="selectTag" style="left: 0px; top: 0px"><a href="javascript:void(0)" onclick="selectTag('tagContent0',this)"
                onfocus="this.blur()">版本信息</a></li>
        
        </ul>
        <div id="tagContent">

            </div>
            <div id="bot">
                Copyright (c)mstanford . All Rights Reserved .</div>
        </div>
</body>
</html>
