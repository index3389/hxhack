<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>华夏黑客联盟---欢迎您！十分抱歉，您要查看的网页当前已过期，或已被更名或删除！</title>
<meta http-equiv=content-type content="text/html; charset=gb2312">
<style type=text/css>
input
 {
	font-size: 12px
}
td 
{
	font-size: 12px
}
.p2
 {
	font-size: 12px
}
.p6
{
	font-size: 12px; color: #1b6ad8
}
a 
{
	color: #1b6ad8; text-decoration: none
}
a:hover
 {
	color: red
}
</style>
</head>
<body oncontextmenu="return false" onselectstart="return false">
<p align="center">　</p>
<p align="center">　</p>
<table cellspacing="0" cellpadding="0" width="540" align="center" border="0">
	<tbody>
	<tr>
		<td valign="top" height="270"><div align="center"><br><img height="211" src="images/error/error.gif" width="329"><br><br>
		<table cellspacing="0" cellpadding="0" width="80%" border="0">
			<tbody>
			<tr>
				<td><font class="p2">&nbsp;&nbsp;&nbsp; <font color="#ff0000"><img height="13" src="images/error/emessage.gif" width="12">&nbsp;无法访问本页的原因是：</font></font></td>
			</tr>
			<tr>
				<td height="8"></td>
			<tr>
				<td><p><font color="#000000"><br>您所请求的页面不存在</font>! </p><br></td>
			</tr>
			</tbody>
		</table>
		</div></td>
	</tr>
	<tr>
		<td height="5"></td>
	</tr>
	<tr>
		<td align="middle"align="center">
		<table cellspacing="0" cellpadding="0" width="480" border="0">
			<tbody>
			<tr>
				<td width="7"><img height="26" src="images/error/left.gif" width="7"></td>
				<td background="images/error/bg.gif"><div align="center">
				<font class="p6"> 
				<a href="javascript:history.go(-1)">返回出错页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:window.close();">关闭本页</a></font>
				 </div></td>
				<td width="7"><img src="images/error/right.gif"></td>
			</tr>
			</tbody>
		</table>
		</center></td>
	</tr>
	</tbody>
</table>
<p align="center">　</p>
<p align="center">　</p>
</body>
</html>