<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 论坛正在维护中请稍后再注册</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">

	<style type="text/css">
		body
		{
			text-align:center;
		}
		#build_1
		{
			text-align:center;
			margin-top:120px;
		}
		#build_3
		{
			text-align:center;
			font-size:15px;
		}
		#build_3 p
		{
			text-align:center;
			font-size:18px;
		}
	</style>
  </head>
  
  <body>
    <dir id="build_1">
    	<div id="build_3">
    		<p>论坛正在维护中请稍后再注册</p>
    		<p><a href="#">返回首页</a></p>
    	</div>
    </dir>
  </body>
</html>