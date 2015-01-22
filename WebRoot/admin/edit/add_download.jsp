<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="keywords" content="${ applicationScope.search}">
<title>${ applicationScope.title} -- 添加软件下载</title>

<script type="text/javascript" src="FCKeditor/fckeditor.js"></script> 
<script src="script/jsdate.js" type="text/javascript"></script>
<script type="text/javascript">
	function check()
	{
		var name = document.all.title.value;
		var author = document.all.adminName.value;
		var content = document.all.content.value;
		var language = document.all.language.value;
		var downpass = document.all.downpass.value;
		var updateTime = document.all.updateTime.value;
		var filename = document.all.formFile.value;
		var huan = document.all.huan.value;

		var type = document.all.type.value;
		
		if(name==""||author==""||content==""||language==""||downpass==""||updateTime==""||filename=="")
		{
			alert("基本信息不能为空！！！");
			return false;
		}
		else if(type == "0")
		{
			alert("添加的类型不能不选择！！！");
			return false;
		}
		else if(huan == "0")
		{
			alert("软件运行环境不能为空！！！");
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
<jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
<div id="main">
	<table border="1" width="800px" align="center" rules="none">
		<form method="post" action="download.do?method=addObj" name="fm" enctype="multipart/form-data">
			<tr>
				<td align="right">名称</td>
				<td width="200px"><input type="text" name="title" size="40"/></td>
				<td align="left">最新推荐</td>
				<td align="left">
					<select name="isnew" class="pick" align="left">
						<option value="0">请选择</option>
						<option value="1">是</option>
						<option value="2">否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">作者</td>
				<td><input type="text" name="adminName" size="40" value="admin"/></td>
				<td align="left">热门推荐</td>
				<td>
					<select name="hot" class="hot">
						<option value="0">请选择</option>
						<option value="1">是</option>
						<option value="2">否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">更新时间</td>
				<td>
					<input name="updateTime"  size="40" type="text" onclick="SelectDate(this,'yyyy-MM-dd')" readonly="readonly"/>
				</td>
				<td align="left">发布类型</td>
				<td>
					<select class="hot" name="type">
						<option value="0">请选择</option>
						<option value="1">漏洞扫描</option>
						<option value="2">加密破解</option>
						<option value="3">入侵攻击</option>
						<option value="4">后门木马</option>
						<option value="5">溢出程序</option>
						<option value="6">综合工具</option>
						<option value="7">安全防护</option>
						<option value="8">原创发布</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="right">解压密码</td>
				<td>
					
					<input type="text" name="downpass" size="40" value="www.hx58.com"/>
				</td>
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
				<td align="right">文件上传</td>
				<td align="left"><input type="file" name="formFile" size="44"></td>
				<td align="left">运行环境</td>
				<td>
					<select class="hot" name="huan">
						<option value="0">请选择</option>
						<option value="windows" selected="selected">windows</option>
						<option value="linux">linux</option>
						<option value="unix">unix</option>
						<option value="其他">其他</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="4">
						<center>软件描述</center>
					<FCK:editor id="content" basePath="FCKeditor/"
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
<jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
</body>
</html>