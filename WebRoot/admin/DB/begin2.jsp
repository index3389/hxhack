<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${ applicationScope.title} -- 后台管理 -- 数据库还原</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}">
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    	}
    	
    	#up_1
    	{
    		margin-top:100px;
    		margin-bottom:60px;
    		font-size:18px;
    		font-family:黑体;
    	}
    </style>

  </head>
  
  <body>
   	<jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
   	
   		<div id="up_1">
   			<div id="up_2">
   				<p>还原数据库的时候系统将会断开数据库的所有连接，</p>
   				<p>此时所有的用户都不能访问数据库，你确定还原数据库吗</p>
   				<p>点击下一步关闭数据库的所有连接,否则点击返回</p>
   				
   				<p>
   					<a href="admin.do?method=kill_all">下一步</a>&nbsp;&nbsp;&nbsp;
   					<a href="javascript:window.history.go(-1);">返回</a>
   				</p>
   			</div>
   		</div>
   	<br /><br />	<br /><br />
   	<jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>