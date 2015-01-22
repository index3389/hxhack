<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${ applicationScope.title} -- 后台管理 -- 编辑文章</title>   
	<meta http-equiv="keywords" content="${ applicationScope.title}">
  </head>
  
  <body>
    <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    
    
    
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
