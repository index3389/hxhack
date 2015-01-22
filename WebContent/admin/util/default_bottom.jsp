<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>admin</title>
    
    <style type="text/css">
    	a
    	{
    		text-decoration:none;
    	}
    </style>

  </head>
  
  <body>
    <center>
    	<p>
    		<a href="">关于本站</a>&nbsp;&nbsp;
    		<a href="">使用协议</a>&nbsp;&nbsp;
    		<a href="">隐私和版权</a>&nbsp;&nbsp;
    		<a href="">联系我们</a>&nbsp;&nbsp;
    		<a href="">招贤纳士</a>
    	</p>
    	<p>
    		华夏黑客联盟网版权所有 苏ICP备06018282号 Copyright © 2007-2009 
    	</p>
    	<p>
    		售后服务QQ：86171568   客户服务热线：010-62222137 
    	</p>
    </center>
  </body>
</html>
