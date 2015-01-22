<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 论坛 -- 此邮箱已被使用</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			text-align:center;
			font-family: Arial, Helvetica, Verdana, Sans-serif;
		}
		#only_1
		{
			text-align:center;
		}
		#only_2
		{
			
			margin-top:70px;
			font-size:16px;
			width:300px;
			height:100px;
			text-align:center;
		}
		#only_2 a
		{
			font-size:14px;
		}
	</style>
  </head>

  <body> 
  	<jsp:include flush="true" page="../public/t.jsp"></jsp:include>
   	<div id="only_1">
   		<div id="only_2">
   			<p>此邮箱已被使用，请换一个邮箱在试一次</p>
   			<p>
   				<a href="javascript:window.history.go(-1);">返回</a>&nbsp;&nbsp;
   				<a href="#">黑客首页</a>
   			</p>
   		</div>
   	</div>
   <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
