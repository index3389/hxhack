<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 后台管理 -- 添加用户</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			text-align:center;
		}
		#basic_1
		{
			text-align:center;
			margin-top:50px;
		}
		#basic_2
		{
			font-size:18px;
			font-family:黑体;
			color:6ABCEB;
		}
		#basic_3
		{
			margin-top:8px;
			margin-bottom:4px;
		}
		tr
		{
			text-align:center;
		}
		#all
		{
			width:100px;
		}
		.s
		{
			width:40px;
			float:left;
		}
	</style>
	<script type="text/javascript" src="dwr/interface/lap.js"></script>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
	<script type="text/javascript">
		var ys;
		function sub()
		{
			var user = document.all.user.value;
			var pass = document.all.pass.value;
			var pass1 = document.all.pass1.value;
			
			if(user == "" || pass == "" || pass1 == "")
			{
				alert("不能为空！！！");
			}
			else if(pass != pass1)
			{
				alert("两次密码不一样");
			}
			else if(!ys)
			{
				alert("用户名已存在！！！");
			}
			else
			{
				document.all.fm.submit();
			}
			
		}
		function nul()
		{
			document.all.fm.reset();
		}
		
		function ise()
		{
			
			var u = document.all.user.value;
			if(u != "")
			{
				lap.exist(u,function(e)
				{
					if(e)
					{
						ys = false;
						document.getElementById("is").innerHTML = "<font color='red'>此用户已存在</font>";
					}
					else
					{
						ys = true;
						document.getElementById("is").innerHTML = "<font color='blue'>可以用</font>";
					}
				});
			}
		}
	</script>
  </head>
  
  <body>
  <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    
    <div id="basic_1">
    	<div id="basic_2">添加管理员</div>
    	<form action="init.do?method=add_user" method="post" name="fm">
    		<table border="1" bordercolor="6ABCEB" cellspacing="0">
    			<tr>
    				<td width="150px">用户名</td>
    				<td width="420px" align="left">
	    				<div class="s"></div><input type="text" name="user" size="19" onblur="ise()"/>
	    				<span id="is"></span>
    				</td>
    			</tr>
    			<tr>
    				<td>密码</td>
    				<td align="left"><div class="s"></div><input type="password" name="pass" size="19"/></td>
    			</tr>
    			<tr>
    				<td>确认密码</td>
    				<td align="left"><div class="s"></div><input type="password" name="pass1" size="19"/></td>
    			</tr>
    			<tr>
    				<td>邮箱</td>
    				<td align="left"><div class="s"></div><input type="text" name="mail" size="19"/></td>
    			</tr>
    			<tr>
    				<td>积分</td>
    				<td align="left"><div class="s"></div><input type="text" name="jifen" size="19"/></td>
    			</tr>
    			<tr>
    				<td>安全问题</td>
    				<td align="left"><div class="s"></div><input type="text" name="answer" size="19"/></td>
    			</tr>
    			<tr>
    				<td>问题答案</td>
    				<td align="left"><div class="s"></div><input type="text" name="question" size="19"/></td>
    			</tr>
    			<tr>
    				<td colspan="2">
    					<div id="basic_3">
	    					<a style="cursor:hand;" onclick="sub()">添加</a>&nbsp;&nbsp;&nbsp;
	    					<a style="cursor:hand;" onClick="nul()">重置</a>
	    				</div>
    				</td>
    			</tr>
    		</table>
    	</form>
    </div>
    
    <br /> <br /> <br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
