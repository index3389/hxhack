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
    
    <title>${ applicationScope.title} -- 论坛 -- 更改图像</title>   
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
			text-align:center;
		}
		#user_left
		{
			margin-top:0px;
		}
		.i
		{
			width:90px;
			background-color:6ABCEB;
		}
		#user_pass
		{
			text-align:center;
			margin-top:50px;
		}
		#user_form
		{
			text-align:center;
			margin-top:80px;
		}
		.img_1
		{
			font-size:16px;
			font-family:黑体;
			color:6ABCEB;
			text-align:center;
		}
	</style>
	
	<script type="text/javascript">
		function upload()
		{
			
			var path = document.all.userfile.value;
			if(path == "")
			{
				alert("不能为空！！！");
			}
			else
			{
				document.all.fm.submit();
			}
		}
	</script>
  </head>
<c:if test="${ empty sessionScope.user}">
		<jsp:forward page="../bbs/user/login.jsp"></jsp:forward>
	</c:if>
  <body> 
  	<jsp:include flush="true" page="../public/t.jsp"></jsp:include>
   	<div id="user_main">
   		<div id="user_2">
   				<table cellspacing="0" border="1" bordercolor="6ABCEB" width="150px" id="user_left">
   					<tr>
			    		<td class="user_1"><img src="images/fanghu.gif" width="150px"/></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="user.do?method=img" class="user_a">个人设置</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="user.do?method=getUser" class="user_a">我的信息</a></td>
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
   			<dir id="user_pass">
   				<div class="img_1">请选择你要上传的图片</div><br /><br />
   				<div class="img_2"><img src="<%=path %>/images/user/${ requestScope.n.hackimg}" /></div>
   				<br /><br /><br />
   				<div>
   					<form action="img.do?method=img" enctype="multipart/form-data" name="fm" method="post">
   						<input type="file" size="40" name="userfile" />
   						<input type="button" onclick="upload()" value="上传" style="height:20px;"/>
   					</form>
   				</div>
   			</dir>
   		</div>
   	</div>
   <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
