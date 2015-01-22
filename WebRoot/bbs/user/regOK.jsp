<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>华夏黑客联盟---注册成功</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
	<style type="text/css">
		#s
		{
			margin-top:20px;
			text-align:center;
			margin-buttom:20px;
		}	
		#t
		{
			width:120px;
		}
		#tt
		{
			width:80px;
		}
	</style>
  </head>
  
  <body>
  <jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
    <center>
    	<br /><br /><br />
    	<P><font size="6" color="green" face="黑体">注册成功</font></P>
    	<button onClick="javascript:window.history.go(-1);" id="t">返回继续操作</button>
    	&nbsp;&nbsp;
    	<button onClick="javascript:window.location.href='bbs/user/login.jsp'" id="tt">登陆</button>
    	<br /><br />
    	<hr width="920px"/>
    </center>
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
  </body>
</html>