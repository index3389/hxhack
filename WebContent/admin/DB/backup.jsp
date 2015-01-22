<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 后台管理 -- 数据库备份</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}">
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    	}
    	
    	#up_1
    	{
    		margin-top:100px;
    		margin-bottom:100px;
    	}
    	#up_2 p
    	{
    		font-size:16px;
    		font-family:黑体;
    	}
    </style>

  </head>
  
  <body>
   	<jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
   	
   		<div id="up_1">
   			<div id="up_2">
   				<p>在数据库备份之前，系统将断开所有的数据库连接，这将导致所有的用户都不能访问，你确定要备份数据库吗</p>
   				<br />
   				<p><a href="admin.do?method=backup">确定</a></p>
   			</div>
   		</div>
   		<br /><br /><br />
   	<jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>