<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 论坛 -- 发帖失败</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}">
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    	}
    	#add_1
    	{
    		margin-top:200px;
    		padding-top:20px;
    		border:1px groove green;
    		width:600px;
    		height:120px;
    		text-align:center;
    	}
    	.add_2
    	{
    		text-align:center;
    		margin-top:10px;
    	}
    </style>

  </head>
  
  <body>
  <jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
    	<div id="add_1">
    		<div class="add_2">华夏黑客联盟提示你</div>
    		<div class="add_2">发帖失败</div>
    		<div class="add_2">
    			<a href="javascript:window.history.go(-1);">返回</a>&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="index.jsp">黑客首页</a>&nbsp;&nbsp;
    		</div>
    	</div>
    	<jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
  </body>
</html>
