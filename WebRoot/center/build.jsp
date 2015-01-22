<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 建设中</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">

	<style type="text/css">
		body
		{
			text-align:center;
		}
		#build_1
		{
			text-align:center;
			margin-top:80px;
		}
		#build_3
		{
			text-align:center;
		}
	</style>
  </head>
  
  <body>
    <dir id="build_1">
    	<div id="build_2">
    		<img src="<%=path %>/images/build.gif" />
    	</div>
    	<div id="build_3">
    		<p><a href="#">返回首页</a></p>
    	</div>
    </dir>
  </body>
</html>
