<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; chaRset=gb2312" />
<meta http-equiv="keywords" content="${ applicationScope.search}" />
<title>${ applicationScope.title} -- 管理员登陆</title> 
<link rel="stylesheet" href="style/admin_style_4.css" type="text/css" media="all" />
<style type="text/css">
body {
	/*background-color: #3669A0;
	background-image: url(images/login/newasp_admin_bg.gif);*/
	margin-left: 0px;
	margin-top: 100px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {color: #42bfbf}
body,td,th {
	font-size: 12px;
	background-image: url(images/login/bg1.jpg);
}
.logininput{border:1px solid #7E94C7;background:#C0F8CA;}
.mainTableborder {
	border: 2px #fff solid ; 
	width: 600px;
}
</style>
</head>
<script type="text/javascript" src="script/validate.js"></script>
<script language="javascript">
	function SetFocus()
	{
		if (document.myform.AdminName.value=="")
			document.myform.AdminName.focus();
		else
			document.myform.AdminName.select();
	}
	function CheckForm()
	{
		if(document.myform.AdminName.value=="")
		{
			alert("请输入您的用户名！");
			document.myform.AdminName.focus();
			return false;
		}
		else if(document.myform.PassWord.value == "")
		{
			alert("请输入您的密码！");
			document.myform.PassWord.focus();
			return false;
		}
		else if (document.myform.verifycode.value==""){
	       alert ("请输入您的验证码！");
	       document.myform.verifycode.focus();
	       return false;
	    }
	    else if(document.myform.verifycode.value != dati)
	    {
	    	alert("验证码错误!!!");
	    	return false;
	    }
	    else
	    {
	    	var user2 = document.myform.AdminName.value;
			var pass2 = document.myform.PassWord.value;
			
			var str = "u="+user2+"&p="+pass2+"&r=1"		
			window.location.href = "../admin.do?method=checkName&"+str;
	    }
	}
	function CheckBrowser()
	{
	  var app=navigator.appName;
	  var verStr=navigator.appVersion;
	  if (app.indexOf('Netscape') != -1) {
	    alert("黑客软件园友情提示：\n    你使用的是Netscape浏览器，可能会导致无法使用后台的部分功能。建议您使用 IE6.0 或以上版本。");
	  }
	  else if (app.indexOf('Microsoft') != -1) {
	    if (verStr.indexOf("MSIE 3.0")!=-1 || verStr.indexOf("MSIE 4.0") != -1 || verStr.indexOf("MSIE 5.0") != -1 || verStr.indexOf("MSIE 5.1") != -1)
	      alert("黑客软件园友情提示：\n    您的浏览器版本太低，可能会导致无法使用后台的部分功能。建议您使用 IE6.0 或以上版本。");
	  }
	}
	
	function check()
	{
		var user1 = document.all.AdminName.value;
		var pass1 = document.all.PassWord.value;
		var vali1 = document.all.verifycode.value;
		if(user1 == "" || pass1 == "")
		{
			alert("用户名或密码不能为空！！！");
		}
		else if( vali1 == "")
		{
			alert("验证码不能为空!!!");
		}
		else if(vali1 != dati)
		{
			alert("验证码错误！！！");
		}
		else
		{	
			var str = "u="+user1+"&p="+pass1;	
			window.location.href = "../admin.do?method=checkName&"+str;
		}
	}
	
	function enter()
	{
		if(event.keyCode=='13')
		{
			this.check();
		}
	}
</script>
<body onload="validate3();">
<div align="center">
<form id="myform" name="myform" method="post" action="admin.do?method=checkName" target="_top" onSubmit="return CheckForm();">
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" class="mainTableborder">
  <tr>
    <td colspan="4" height="72"><a href="#" target="_blank"><img src="images/login/newasp_admin2_r1_c1.jpg" border="0" width="600" height="72" /></a></td>
  </tr>
  <tr>
    <td width="223"><img src="images/login/newasp_admin2_r2_c1.jpg" width="223" height="204" /></td>
    <td width="102" valign="bottom" background="images/login/newasp_admin2_r2_c2.jpg">
    <a href="#" target="_blank"><img src="images/login/logo1.gif" alt="黑客软件园" width="88" height="31" border="0" /></a></td>
    <td width="245" background="images/login/newasp_admin2_r2_c3.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="5">
      <tr>
        <td><span class="STYLE1">用户名称：
              <input name="AdminName" type="text" class="logininput" id="AdminName" size="22" maxlength="16" onFocus="this.select();" />
              </span>
          </td>
      </tr>
      <tr>
        <td><span class="STYLE1">用户密码：
          <input name="PassWord" type="password" class="logininput" id="PassWord" size="22" maxlength="16" onFocus="this.select();" />
        </span></td>
      </tr>
	  
      <tr>
        <td><span class="STYLE1">验 证 码：
          <input name="verifycode" type="text" class="logininput" id="verifycode" size="10" maxlength="4" onFocus="this.select();" onkeydown="enter()"/>
		  &nbsp;</span><span id="vali"></span>
          </td>
      </tr>
      <tr>
        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>
          <a onclick="check()"><img src="images/login/admin_submit.gif" /></a>
           <a href="#"><img  src="images/login/admin_home.gif" border="0" width="80" height="24" /></a>
        </label></td>
      </tr>
    </table></td>
    <td width="30"><img src="images/login/newasp_admin2_r2_c4.jpg" width="30" height="204" /></td>
  </tr>
  <tr>
    <td colspan="4" height="44"><a href="#" target="_blank">
    <img src="images/login/newasp_admin2_r3_c1.jpg" border="0" width="600" height="44" /></a></td>
  </tr>
</table>
</form>
<script language="JavaScript">
<!--
CheckBrowser();
SetFocus();
-->
</script>

</div>

</body>
</html>

