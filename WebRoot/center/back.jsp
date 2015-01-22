<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 论坛 -- 用户中心</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			text-align:center;
			font-family: Arial, Helvetica, Verdana, Sans-serif;
		}
		#user_main
		{
			width:920px;
			text-align:center;
		}
		.user_1
		{
			height:30px;
			text-align:center;
			background-color:8FBEF1;
			width:150px;
		}
		#user_2
		{
			float:left;
		}
		#user_3
		{
			float:left;
		}
		#user_left
		{
			margin-top:0px;
		}
	</style>
	<script type="text/javascript">
		function test(str)
		{
			document.getElementById("info_src").src = str;
		}
	</script>
  </head>

  <body>
  	<jsp:include flush="true" page="../public/t.jsp"></jsp:include>
   	<div id="user_main">
   		<div id="user_2">
   				<table cellspacing="0" border="1" bordercolor="6ABCEB" width="150px" id="user_left">
   					<tr>
			    		<td class="user_1"><img src="images/fanghu.gif" width="150px"/></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a onClick="test('center/userLeft.jsp')" class="user_a">个人设置</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a onClick="test('center/user2.jsp')" class="user_a">我的信息</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="bbs.do?method=f_byName" class="user_a">我的主题</a></td>
			    	</tr>
			    
			    	<tr>
			    		<td class="user_1"><a href="center/pass.jsp" class="user_a">修改密码</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="#" class="user_a">我的精华</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><img src="images/ad-01.gif" width="150px"/></td>
			    	</tr>
			    </table>
   		</div>
   		<div id="user_3">	
   			<iframe src="center/userCenter.jsp" width="764px" height="600px" frameborder="0" id="info_src"></iframe>
   		</div>
   	</div>
   <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
