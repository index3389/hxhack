<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>华夏黑客联盟---不好意思注册失败</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
	<style type="text/css">
		#s
		{
			text-align:center;
		}	
		#t
		{
			width:120px;
		}
	</style>
  </head>
  
  <body>
  <jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
  	<br /><br />
    <div id="s">
    	<img src="images/user/isreg.jpg" /><br /><br />
    </div>
    <br />
    <center>
    	<button onClick="javascript:window.history.go(-1);" id="t">返回继续操作</button>
    </center>
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
  </body>
</html>
