<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="keywords" content="${ applicationScope.search}" />
<title>${ applicationScope.title}--后台管理首页</title>
	
	<style type="text/css">
		body
		{
			text-align:center;
		}
		#admin_1
		{
			margin-top:50px;
			font-size:20px;
		}
		.admin_2
		{
			width:920px;
			text-align:center;
		}
		.admin_3
		{
			text-align:left;
			width:650px;
			padding-top:5px;
			padding-bottom:5px;
			height:25px;
			font-size:16px;
			font-family:黑体;
			background-color:6ABCEB;
		}
	</style>

</head>

<body>
<jsp:include flush="true" page="util/default_top.jsp"></jsp:include>

	<div id="admin_1">欢迎来到华夏黑客联盟</div>
	<div class="admin_2">
		<div class="admin_3">系统基本信息</div>
		<table border="1" bordercolor="6ABCEB" cellspacing="0" width="650px">
			<tr>
				<td width="100px" height="25px">服务器名</td>
				<td width="150px"><%=request.getServerName()%></td>
			</tr>
			<tr>
				<td width="100px" height="25px">当前WEB服务器</td>
				<td width="150px" height="25px"><%=application.getServerInfo() %></td>
			</tr>
			<tr>
				<td width="100px" height="25px">当前数据库服务器</td>
				<td width="150px">Microsoft SQL 2000</td>
			</tr>
			<tr>
				<td width="100px" height="25px">服务器的IP地址</td>
				<td width="150px"><%=request.getServerName() %></td>
			</tr>
			<tr>
				<td width="100px" height="25px">服务器的IP端口号</td>
				<td width="150px"><%=request.getServerPort() %></td>
			</tr>
			<tr>
				<td width="200px" height="25px">网站根目录</td>
				<td width="400px"><%=request.getRealPath("/") %></td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
<jsp:include flush="true" page="util/default_bottom.jsp"></jsp:include>
</body>

</html>

