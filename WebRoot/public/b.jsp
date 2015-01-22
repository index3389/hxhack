<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<title></title>
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
	
	<style type="text/css">
	body
	{
		text-align:center;
		margin:0px;
		padding:0px;
		font-size:14px;
	}
	#mains
	{
		background-image:url(images/bbs/bodybg.jpg);
		width:920px;
	}
	a
	{
		text-decoration:none;
	}
	a:hover
	{
		color:red;
	}
	#tops
	{
		width:920px;
	}
	#tops a
	{
		font-family:黑体;
	}
	#yi
	{
		text-align:center;
		margin-bottom:3px;		
		font-family:黑体;
	}
	.yi
	{
		text-align:center;
		margin-bottom:3px;		
		font-family:黑体;
		margin-top:5px;
	}
	.yii
	{
		text-align:center;		
		font-family:黑体;
		margin-top:5px;
	}
	.er
	{
		color:pink;
		font-family:黑体;
		margin-bottom:3px;		
	}
</style>
</head>

<body>
<div id="mains">
	<div id="tops">
		<a href="#">关于黑基网 |</a>&nbsp;&nbsp;
	    <a href="#">免责条款 |</a>&nbsp;&nbsp;
	    <a href="#">诚聘英才 |</a>&nbsp;&nbsp;
	    <a href="#">广告服务 |</a>&nbsp;&nbsp;
	    <a href="#">投稿指南 |</a>&nbsp;&nbsp;
	    <a href="#">联系我们</a>
	</div>
	<br />
	<div id="yi">版权所有 ©2003-2009 黑基网 保留全部权利</div>
	<div class="yi">Copyright ©2003-2009 HackBase International
	 Technology Co., Ltd. All rights reserved. </div>
	 <div class="yi">网站总机:（010）82896528 QQ:542764591（投稿广告） VIP报名专线:（010）51669144</div>
	 <div class="yi">法律顾问：李纪兵律师（法学博士）</div>
	 <div class="er">有害信息举报专用手机：13041293914（24小时）</div>
	 <div class="yii"><img src="images/bbs/bj.gif" /></div>
 </div>
</body>
</html>
