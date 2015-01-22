<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 你的帖子里面含有非法的语句，请修改后在发帖</title>
       
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			text-align:center;
		}
		#key_1
		{
			margin-top:200px;	
			text-align:center;
		}
		#key_2
		{
			border:1px groove gray;
			width:400px;
			margin-top:50px;
			text-align:center;
		}
	</style>

  </head>
  
  <body>
   <div id="key_1">
   		<div id="key_2">
   			<br /><br />
   			<p>你的帖子里面含有非法的语句，请修改后在发帖</p>
   			<p>
   				<a href="javascript:window.history.go(-1);">返回</a>&nbsp;&nbsp;&nbsp;
   				<a href="#">黑客首页</a>&nbsp;&nbsp;&nbsp;
   				<a href="bbs.do?method=bbs">论坛首页</a>
   			</p>
   			<br />
   		</div>
   </div>
  </body>
</html>
