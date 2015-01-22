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
    
<title>华夏黑客联盟---找回密码</title>
<meta http-equiv="keywords" content="${ applicationScope.search}" />

	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			padding:0px;
		}
		#main
		{
			text-align:center;
			width:920px;
			height:260px;
			margin-top:0px;
		}
		#top
		{
			height:30px;
			font-family:黑体;
			width:920px;
			font-size:16px;
		}
		.content
		{
			text-align:center;
			width:600px;
		}
	</style>
    
    <script type="text/javascript">
		function backpassword()
		{
			var u = document.all.hackName.value;
			var m = document.all.hackMail.value;
			var q = document.all.question.value;
			var a = document.all.answer.value;
			
			if(u==""||m==""||q==""||a=="")
			{
				alert("不能为空");
			}
			else
			{
				document.all.fm.submit();
			}
		}
	</script>
</head>

<body>
<jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
<div id="main">
	<br /><br />
	<div id="top">找回密码程序</div>
    <form action="user.do?method=backpass" method="post" name="fm">
    	<table border="0" width="45%" align="center">
    		<tr>
            	<td align="right">用户名:</td>
                <td><input type="text" name="hackName" size="40"  maxlength="16"/></td>
            </tr>
            <tr>
            	<td align="right">Email:</td>
                <td><input type="text" name="hackMail" size="40" maxlength="16"/></td>
            </tr>
            <tr>
            	<td align="right">安全问题:</td>
                <td><input type="text" name="question" size="40" maxlength="30"/></td>
            </tr>
            <tr>
            	<td align="right">您的答案:</td>
                <td>
                <input type="text" name="answer" size="40" maxlength="30"/>
                </td>
            </tr>
            <tr>
            	<td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                	<input type="button" value="提交" 
                    style="width:80px;" onclick="backpassword();" />
                    <input type="reset" value="清空" style="width:80px;" />
                </td>
            </tr>
    	</table>
    </form>
</div>
<jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
</body>
</html>
