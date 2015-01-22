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
		body
		{
			text-align:center;
		}
		#s
		{
			width:920px;
			text-align:center;
			height:400px;
		}	
	</style>
  </head>
  
  <body>
  <jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
    <div id="s">
    	<img src="images/user/regOK.jpg" />
    </div>
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
  </body>
</html>
