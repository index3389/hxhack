<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="keywords" content="${ applicationScope.search}">
<title>${ applicationScope.title} -- 添加文章</title>

<script type="text/javascript" src="FCKeditor/fckeditor.js"></script> 
<script type="text/javascript" src="script/addnews.js"></script>
<script src="script/jsdate.js" type="text/javascript"></script>
<script type="text/javascript">
	function check()
	{
		var title = document.all.title.value;
		var author = document.all.author.value;
		var infoContent = document.getElementById("infoContent").value;
		var hot = document.all.hot.value;
		var pick = document.all.pick.value;
		
		if(title==""||author==""||infoContent=="")
		{
			alert("基本信息不能为空！！！");
			return false;
		}
		else 
		{
			document.all.fm.submit();
		}
	}
	
	function topic()
	{
		
	}
</script>

<style type="text/css">
	body
	{
		text-align:center;
		background-image:url(images/admin/ee.jpg);
	}
	#main
	{
		text-align:center;
	}
	.pick
	{
		width:120px;
	}
	.hot
	{
		width:120px;
	}
</style>

</head>
	<script type="text/javascript">
		function topic()
		{
			document.getElementById("ying").style.display = "none";
			document.getElementById("infoContent").value = document.getElementById("scontent").value;
		}
	</script>
<body onload="topic()">
<jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
<div id="main">
	<table border="1" width="800px" align="center">
		<form method="post" action="dedit.do?method=down" name="fm" >
			<input type="hidden" name="did" value="${ requestScope.t.downid}" />
			<tr>
				<td align="right">名称</td>
				<td width="200px"><input type="text" name="title" size="40" value="${ requestScope.t.title}"/></td>
				<td align="left">软件语言</td>
				<td>
					<select class="hot" name="language">
						<option value="0">请选择</option>
						<option value="简体中文" selected="selected">简体中文</option>
						<option value="english">english</option>
						<option value="其他">其他</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">解压密码</td>
				<td>	
					<input type="text" name="downpass" size="40" value="${ requestScope.t.downpass}"/>
				</td>
				<td align="left">更新时间</td>
				<td>
					<input name="updateTime" size="20" type="text" onclick="SelectDate(this,'yyyy-MM-dd')" readonly="readonly" value="${ requestScope.t.updateTime}"/>
				</td>
			</tr>
			<tr>
				<td align="right">文件上传</td>
				<td align="left"><input type="file" name="formFile" size="44"></td>
				<td>&nbsp;</td><td>&nbsp;</td>
			</tr>
			
			<tr>
				<td colspan="4">
					<FCK:editor id="infoContent" basePath="FCKeditor/"
		              width="100%"
		              height="600"
		              skinPath="/myhack/FCKeditor/editor/skins/silver/"
		              defaultLanguage="zh-cn"
		              tabSpaces="8" 
					  imageBrowserURL="/myhack/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Image&Connector=connectors/jsp/connector"
		              linkBrowserURL="/myhack/FCKeditor/editor/filemanager/browser/default/browser.html?Connector=connectors/jsp/connector"
		              flashBrowserURL="/myhack/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Flash&Connector=connectors/jsp/connector"
		              imageUploadURL="/myhack/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Image"
		              linkUploadURL="/myhack/FCKeditor/editor/filemanager/upload/simpleuploader?Type=File"
		              flashUploadURL="/myhack/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Flash">
		              
	      			</FCK:editor>	
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
				    <input type="button" value="修改" onclick="check()" style="width:80px;">
				    <input type="reset" value="重置" style="width:80px;">
	    		</td>
			</tr>
		</form>
	</table>
</div>
<div id="ying">
	<textarea rows="30" cols="96" id="scontent">${ requestScope.t.content}</textarea>
</div>
<jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
</body>
</html>