<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<!-- saved from url=(0022)http://www.hxhack.com/ -->
<html>
<head>

	 <base href="<%=basePath%>" />
	 <title>华夏黑客联盟——中国最具影响力的黑客网站！ - 为中国网络安全导航！</title>
	 <meta http-equiv="keywords" content="" />
	 <style type="text/css">
	 	body
	 	{
	 		text-align:center;
	 		background-image:url(images/scan.gif);
	 	}
	 	.main
	 	{
	 		text-align:center;
	 		font-size:33px;
	 		margin-top:30px;
	 		margin-buttom:30px;
	 		color:red;
	 	}
	 </style>

</head>
<body>
<c:if test="${ empty applicationScope.title}">
	<jsp:forward page="init.do?method=initSystem"></jsp:forward>
</c:if>

<bgsound src="images/hack.mid" loop="-1">
<br /><br /><br /><br />
<dir class="main"><b>▲◥华夏黑客联盟◤▲</b></dir>
<div class="main">◆侠者风范★正义之神◆</div>
<div class="main">welcome to  hacker union of china.</div>
<div class="main">《=◆天赋异能 谁与争锋 你的电脑 我的权限◆=》</div>
<div class="main">
	<a href="topic.do?method=index">&gt;&gt;点此进入华夏黑客联盟主站 &gt;&gt; enter</a>
</div>
<div class="main">
	<a href="bbs.do?method=bbs">&gt;&gt;点此进入华夏黑客联盟论坛 &gt;&gt; enter</a>
</div>
</body>
</html>

