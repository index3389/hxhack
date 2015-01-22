<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	
	<title>华夏黑客联盟---信息有误</title>	
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			background-image:url(images/bbs/nave.jpg);
			padding:0px;
			cursor:auto;
		}
		a
		{
			text-decoration:none;
		}
		a:hover
		{
			color:#FF0000;
		}
		
		#call
		{
			width:920px;
			height:35px;
			margin:0px;
			padding-top:15px;
			text-align:left;
			font-family:黑体;
			background-image:url(images/bbs/mainbg.jpg);
		}
		#fail
		{
			width:920px;
			height:220px;
			background-image:url(images/bbs/mainbg.jpg);
			margin-top:3px;
		}
		#fail_yi
		{
			width:920px;
			height:40px;
			font-family:黑体;
			padding-top:20px;
			text-align:center;
		}
		#fail_er
		{
			width:920px;
			height:60px;
			font-family:黑体;
			padding-top:20px;
			color:blue;
			text-align:center;
			border-bottom:2px double #999999;
		}
		#fail_san
		{
			margin-top:15px;
		}
		#goback
		{
			width:150px;
			background-color:#CCCCCC;
			margin-top:12px;
		}
	</style>



</head>

<body >
<jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
	<div id="call">华夏黑客联盟论坛》》论坛提示</div> 
	<div id="fail">
		<div id="fail_yi">华夏黑客联盟论坛 提示信息</div>
		<div id="fail_er">你填写的信息有误，请重新填写</div>
		<div id="fail_san">
			<input type="button" value="返回继续操作" id="goback" onclick="javascript:window.history.go(-1);" />
		</div>
	</div>
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
</body>
