<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

	<title>华夏黑客联盟---注册</title>	
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
  
	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			padding:0px;
			cursor:auto;
		}
		a
		{
			text-decoration:none;
		}
		a:hover
		{
			color:#FF0000;
		}
		#reg
		{
			text-align:center;
			width:918px;
			height:400px;
			border:2px double #999999;
		}
		#reg_h
		{
			width:70%;
			position:relative;
			top:0px;
			clear:both;
			color:#333333;
			left:20px;
		}
		#reg_top
		{
			width:auto;
			height:50px;
			padding-top:60px;
			font-family:黑体;
			font-size:18px;
			float:left;
			padding-left:60px;
		}
		#sion
		{
			float:left;;
		}
	</style>
	<script type="text/javascript" src="dwr/interface/check.js"></script>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
    
	<script type="text/javascript">
		function checkName()
		{
			var reg=/[\u4E00-\u9FA5]/g;
			var u = document.all.hackName.value;
			
			if (reg.test(u))
			{
				document.all.hn.innerHTML = "<font color='red'>"+
					"<b>用户名不能含有中文</b></font>";
			}
			else if(u != "" && u.length > 5)
			{
			
				check.isRegister(u,function(e){
				if(e)
				{
					document.all.hn.innerHTML = "<font color='red'>"+
					"<b>此用户名已被注册，请换一个</b></font>";
					
				}
				else
				{
					document.all.hn.innerHTML = "<font color='blue'>"+
					"<b>用户名可以用</b></font>";
					document.all.butt.disabled = false;
				}
				});
			}
			else
			{
				document.all.butt.disabled = true;
				document.all.hn.innerHTML = "<font color='red'>"+
					"<b>用户名长度必须控制在6--16</b></font>";
			}
		}

	</script>
    
    <script type="text/javascript" src="script/validate.js"></script>
    <script type="text/javascript" src="script/tool.js"></script>

</head>
<c:if test="${ applicationScope.bbs_basic2 == 0}">
	<jsp:forward page="../../center/not_reg.jsp"></jsp:forward>
</c:if>
<body onload="validate()">
<jsp:include flush="true" page="../../public/t.jsp"></jsp:include>

	<div id="reg">
		<div id="reg_top">请填写以下必填信息完成注册</div>
		<hr id="reg_h"/>
		<div id="reg_main">
			<br />
			 <form action="user.do?method=saveUser" method="post" name="fm">
			 	<table border="0" width="800px">
				<tr>
					<td width="120px">用户名</td>
					<td align="left" width="230px">
						<input type="text" name="hackName" size="30" maxlength="16" onblur="checkName()"/>
					</td>
					<td align="left">
						<span id="hn">不能有空格，不能是中文，长度控制在 6-16 字节以内</span>
					</td>
				</tr>
				<tr>
					<td>密码</td>
					<td align="left">
					<input type="password" name="hackPass" size="30" maxlength="16" onblur="reg_pass(this)"/>
					</td>
					<td align="left"><span id="reg_p1">最小长度:6 最大长度:16</span></td>
				</tr>
				<tr>
					<td colspan="3"><hr color="#333333"/></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td align="left">
					<input type="password" name="hackPass1" size="30" maxlength="16" onblur="reg_pass1(this)"/>
					</td>
					<td align="left"><span id="reg_p2">请再输入一遍您上面填写的密码</span></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td align="left">
					<input type="text" name="hackMail" size="30" onblur="reg_m(this)" maxlength="30"/>
					</td>
					<td align="left"><span id="reg_mail">请填写真实并且最常用的邮箱</span> </td>
				</tr>
				<tr>
					<td>安全问题</td>
					<td align="left">
					<input type="text" name="question" size="30" onblur="reg_q(this)" maxlength="30"/>
					</td>
					<td align="left"><span id="reg_q">请认真填写，以便找回密码</span></td>
				</tr>
				<tr>
					<td>问题答案</td>
					<td align="left">
					<input type="text" name="answer" size="30" onblur="reg_a(this)" maxlength="30"/>
					</td>
					<td align="left"><span id="reg_a">答案务必要记住，以便找回密码</span></td>
				</tr>
				<tr>
					<td>验证码</td>
					<td align="left">
					<input type="text" name="validate" size="30" maxlength="4" onkeydown="on_enter()"/>
					</td>
					<td align="left">
					<span id="vali">
						<script language="javascript" src="script/validate.js"></script>
					</span>&nbsp;&nbsp;
					<a style="cursor:hand" onclick="validate2()">看不清楚，换一张</a>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
					<input type="checkbox" name="tong" id="wan"/>
					我已阅读并完全同意<a href="bbs/user/mustlook.jsp">条款内容</a>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<input type="button" value="注册" id="butt" style="width:80px;"  onClick="regcheck();"/>
						<input type="reset" value="重置" style="width:80px;" />
					</td>
				</tr>
			</table>
			 </form>
		</div>
	</div>
	<jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
</body>
</html>
