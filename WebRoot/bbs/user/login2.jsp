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
	
	<title>华夏黑客联盟---你已经登录了</title>
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
		#main
		{
			text-align:center;
			width:920px;
			height:210px;
			margin-top:10px;
			padding:0px;
			overflow:hidden;
		}
		a
		{
			text-decoration:none;
		}
		a:hover
		{
			color:#FF0000;
		}
	
		#san
		{
			text-align:left;
			margin-left:8px;
			margin-top:5px;
		}
		#si
		{
			width:900px;
			padding-left:0px;
			margin-top:50px;		
		}
		#wu
		{
			padding-top:20px;
			font-size:25px;
			font-family:黑体;
		}
		#sion
		{
			float:left;;
		}
		#shut a
		{
			font-size:24px;
			margin-left:3px;
			margin-right:3px;
		}
		
	</style>


</head>

<body>
<jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
    <div id="main">
    	<div id="san">
    		★●华夏黑客联盟论坛●★》》提示信息
    	</div>
        <div id="si">
        	★●华夏黑客联盟论坛●★ 提示信息
        </div>
        <hr width="750px" style="height:3px;" color="#333333"/>
        <div id="wu">
        	不能重复登陆，你想现在就<span id="shut"><a href="bbs/user/shutdown.jsp">注销</a></span>吗
        </div>
        
    </div>
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
</body>
</html>
