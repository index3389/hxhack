<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="keywords" content="${ applicationScope.search}" />
<title>在线文本编辑器</title>

<script type="text/javascript" src="FCKeditor/fckeditor.js"></script> 
<script type="text/javascript" src="script/addnew.js"></script>
<script type="text/javascript">
	function check()
	{
		var title = document.all.title.value;
		var author = document.all.author.value;
		var infoContent = document.all.infoContent.value;
		var hot = document.all.hot.value;
		var pick = document.all.pick.value;		
		var a = document.all.type1.value;
		var b = document.all.type2.value;
		
		if(title==""||author==""||infoContent=="")
		{
			alert("基本信息不能为空！！！");
			return false;
		}
		else if(a == "0" || b == "0")
		{
			alert("添加的类型不能不选择！！！");
			return false;
		}
		else 
		{
			document.all.fm.submit();
		}
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

<body>
<div id="main">
	<table border="1" width="800px" align="center">
		<form method="post" action="admin.do?method=addObj" name="fm">
			<tr>
				<td align="right">标题</td>
				<td width="300px"><input type="text" name="title" size="40"/></td>
				<td align="right">精华帖子</td>
				<td>
					<select name="pick" class="pick">
						<option value="0">请选择</option>
						<option value="1">是</option>
						<option value="2">否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">作者</td>
				<td><input type="text" name="author" size="40"/></td>
				<td align="right">热门帖子</td>
				<td>
					<select name="hot" class="hot">
						<option value="0">请选择</option>
						<option value="1">是</option>
						<option value="2">否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">发布类型</td>
				<td>
					<select class="hot" name="type1" onchange="ChangeCity()">
						<option value="0">请选择</option>
						<option value="1">文章</option>
						<option value="2">新闻资讯</option>
						<option value="3">安全公告</option>
						<option value="4">下载</option>
						<option value="5">动画教程</option>
						<option value="6">黑客文学</option>
					</select>
				</td>
				<td align="right">子类型</td>
				<td>
					<select class="hot"  name="type2" >
						<option value="0">请选择</option>
					</select>
				</td>
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
				    <input type="button" value="提交" onclick="check()" style="width:80px;">
				    <input type="reset" value="重置" style="width:80px;">
	    		</td>
			</tr>
		</form>
	</table>
</div>
</body>
</html>