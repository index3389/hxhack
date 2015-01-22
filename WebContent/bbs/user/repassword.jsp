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
    
<title>华夏黑客联盟---请重新输入密码</title>
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
			height:170px;
			border:2px double #FF9900;
		}
		#top
		{
			height:30px;
			font-family:黑体;
			padding-top:5px;
			width:920px;
			background-color:#CC6600;
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
			var u = document.all.hackPass.value;
			var m = document.all.hackPass1.value;
			
			if(u==""||m=="")
			{
				alert("不能为空！！！");
			}
			else if(u != m)
			{
				alert("两次密码不一样！！！");
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
	<div id="top">请重新输入密码</div>
    <form action="user.do?method=updatePassword" method="post" name="fm">
    	<table border="0" width="45%" align="center">
            <tr>
            	<td align="right">密码:</td>
                <td><input type="password" name="hackPass" size="40" maxlength="16"/></td>
            </tr>
            <tr>
            	<td align="right">确认密码:</td>
                <td><input type="password" name="hackPass1" size="40" maxlength="16"/></td>
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

