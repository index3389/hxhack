<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
	
	<title>华夏黑客联盟---正在安全的退出，请稍后</title>
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			padding:0px;
			cursor:auto;
		}
		#main
		{
			text-align:center;
			width:920px;
			height:210px;
			margin-top:200px;
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
			font-size:30px;
			font-family:华文新魏;
			padding-top:20px;
			color:blue;
			text-align:center;
		}
	
	</style>



</head>

<body >

    <div id="main">
        <div id="si">
        	★●华夏黑客联盟论坛●★ 提示信息
        </div>
        <hr width="750px" style="height:3px;" color="#333333"/>
        <div id="wu">
        	正在安全的退出，请稍后.......
        </div>
        
        <%
    		session.invalidate();
    		response.addHeader("refresh","2;url=../../bbs.do?method=bbs");
		%>
        
    </div>
</body>
</html>



