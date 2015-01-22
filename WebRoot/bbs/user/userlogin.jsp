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
	
	<title>华夏黑客联盟---会员登录</title>
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			padding:0px;
			cursor:auto;
		}
		#main
		{
			text-align:center;
			width:920px;
			height:340px;
			padding:0px;
			overflow:hidden;
		}
		a
		{
			text-decoration:none;
		}
		a:hover
		{
			color:#FF0000;
		}
		
		#san
		{
			text-align:left;
			margin-left:8px;
			margin-top:5px;
		}
		#si
		{
			width:900px;
			padding-left:0px;
			margin-top:50px;		
		}
		#huan
		{
			cursor:hand;
			text-decoration:underline;
		}
	
		
		#sion
		{
			float:left;
		}
	</style>
  
    <script language="javascript">	
		function login()
		{
			var u  = document.all.hackName.value;
			var p  = document.all.hackPass.value;
			var v  = document.all.validate.value;
			if(u == "")
			{
				alert("用户名不能为空！！！");
				document.all.userName.onfocus();
				return false;
			}
			else if(p == "")
			{
				alert("密码不能为空！！！");
				document.all.passWord.onfocus();
				return false;
			}
			else if(v == "")
			{
				alert("验证码不能为空！！！");
				document.all.validate.onfocus();
				return false;
			}
			else if(v != dati)
			{
				alert("验证码错误！！！");
				document.all.validate.onfocus();
				return false;
			}
			else
			{
				document.all.fm.submit();
			}
		}
		
		function on_enter1()
		{
			if(event.keyCode == '13')
			{
				login();
			}
		}
	</script>
<script type="text/javascript" src="script/validate.js"></script>
</head>

<%
	if(session.getAttribute("user") != null)
	{
		response.sendRedirect("login2.jsp");
	}
%>

<body onload="validate2()">
<jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
    <div id="main">
    	<div id="san">
    		★●华夏黑客联盟论坛●★》》提示信息
    	</div>
        <div id="si">
        	★●华夏黑客联盟论坛●★ 提示信息
        </div>
        <hr width="750px" style="height:3px;" color="#333333"/>
        <div id="wu">
        	欢迎登陆华夏黑客联盟
        </div>
        <form action="user.do?method=userLogin" method="post" name="fm">
        	<table width="60%">
            	<tr>
                	<td width="130px" align="center">用户名</td>
                    <td align="left">
                    <input type="text" name="hackName" size="40" class="i" maxlength="16"/>
                    </td>
                </tr>
                <tr>
                	<td align="center">密&nbsp;&nbsp;码</td>
                    <td align="left">
                    <input type="password" name="hackPass" size="40" class="i" maxlength="16"/>
                    </td>
                </tr>
                <tr>
                	<td align="center">验证码</td>
                    <td align="left">
                    <input type="text" name="validate" size="28" class="i" onkeydown="on_enter1()" maxlength="4"/>
                    <span id="vali"></span>&nbsp;
                    <a id="huan" onclick="validate2()">换一张</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                    <input type="button" onclick="login();"
                     value="登录" style="width:70px;"/>
                     <input type="reset"
                     value="清空" style="width:70px;"/>
                    <input type="checkbox" name="nologin"/>记住我的登录状况
                    &nbsp;&nbsp;<a href="bbs/user/backpassword.jsp">找回密码</a>
                    </td>
                </tr>
            </table>
        </form>
        <hr width="750px" style="height:3px;" color="#333333"/>
    </div>
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
</body>
</html>
