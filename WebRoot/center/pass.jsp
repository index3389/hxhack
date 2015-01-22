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
		}
		#user_form
		{
			text-align:center;
			margin-top:80px;
		}
	</style>
	<script type="text/javascript" src="script/validate.js"></script>
	<script type="text/javascript">
		function pass_check()
		{
			var p1 = document.all.p1.value;
			var p2 = document.all.p2.value;
			var p3 = document.all.p3.value;
			var v = document.all.v.value;
			
			if(p1 == "")
			{
				alert("原密码不能为空！！！");
			}
			else if(p2 == "" || p3 == "")
			{
				alert("密码不能为空！！！");
			}
			else if(p2 != p3)
			{
				alert("两次密码不一样，无法提交！！！");
			}
			else if(v == "")
			{
				alert("验证码不能为空！！！");
			}
			else if(v != dati)
			{
				alert("验证码不正确！！！");
			}
			else
			{
				document.all.fm.submit();
			}
		}
	</script>
  </head>

  <body onload="validate3()"> 
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
   				<form action="" method="post" id="user_form" name="fm">
   					<table border="1" cellspacing="0" bordercolor="8FBEF1" width="600px" align="center">
	   					<tr>
	   						<td align="right" width="250px">原密码</td>
	   						<td width="350px"> <input type="password" size="24" name="p1"/></td>
	   					</tr>
	   					<tr>
	   						<td align="right">新密码</td>
	   						<td><input type="password" size="24" name="p2"/></td>
	   					</tr>
	   					<tr>
	   						<td align="right">确认密码</td>
	   						<td><input type="password" size="24" name="p3" /></td>
	   					</tr>
	   					<tr>
	   						<td align="right">验证码</td>
	   						<td><input type="text" size="10" name="v"/>
	   							<span id="vali"></span>&nbsp;&nbsp;<a onClick="validate3()" style="cursor:hand">换一张</a>
	   						</td>
	   					</tr>
	   					<tr>
	   						<td colspan="2" align="center">
	   							<input type="button" value="确定" class="i" onclick="pass_check()">&nbsp;&nbsp;
	   							<input type="reset" value="重置" class="i">
	   						</td>
	   					</tr>
	   				</table>
   				</form>
   			</dir>
   		</div>
   	</div>
   <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
