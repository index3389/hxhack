<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 论坛 -- 回帖成功</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}">
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    	}
    	#add_1
    	{
    		margin-top:200px;
    		margin-buttom:50px;
    		padding-top:20px;
    		border:1px groove green;
    		width:600px;
    		height:120px;
    		text-align:center;
    		padding-bottom:20px;
    	}
    	.add_2
    	{
    		text-align:center;
    		margin-top:10px;
    	}
    	.add_3
    	{
    		margin-buttom:20px;
    		font-size:21px;
    		color:red;
    	}
    </style>

  </head>
  
  <body>
    	<div id="add_1">
    		<div class="add_2">华夏黑客联盟提示你</div>
    		<div class="add_2">回帖成功</div>
    		
    		<div class="add_3">回帖成功，系统已经为你加了${ applicationScope.huitie}分</div>
    		
    		<div class="add_2">
    			<a href="javascript:window.history.go(-1);">返回</a>&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="index.jsp">黑客首页</a>&nbsp;&nbsp;
    		</div>
    	</div>
    	<br /><br /><br /><br />
    	<%
    		response.addHeader("refresh","3;url=bbs.do?method=back");	
    	%>
  </body>
</html>
