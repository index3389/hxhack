<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title}--软件下载，黑客工具下载</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
    <style type="text/css">
    	body
    	{
    		font-size:13px;
    		text-align:center;
    		color:#FFFFFF;
    		font-family: Arial, Helvetica, Verdana, Sans-serif;
    	}
    	
    	#main3
    	{
    		text-align:left;
    		width:920px;
    		margin-top:5px;
    	}
    	#mleft
    	{
    		width:640px;
    		float:left;	
    		height:auto!important;
			height:580px;
			min-height:580px;			
			padding-top:50px;
			padding-buttom:50px;
			text-align:center;
			border:2px groove #000000;
    	}
    	#mleft2
    	{
    		width:230px;
    		float:left;
    	}
    	.title
    	{
    		font-size:18px;
    		font-family:黑体;
    		margin-buttom:20px;
    		text-align:left;
    		margin-left:30px;
    		color:red;
    	}
    	.fu
    	{
    		text-align:left;
    		margin-buttom:8px;
    		margin-top:20px;
    		margin-left:30px;
    	}
    	.content
    	{
    		text-align:left;
    		margin-top:40px;
    		font-size:11px;
    		margin-left:30px;
    		margin-right:30px;
    	}
    	.zhan
    	{
    		height:50px;
    		width:640px;
    		border:1px bule;
    		text-align:right;
    	}
    	.down
    	{
    		width:640px;
    		height:50px;
    		text-align:left;
    		margin-left:30px;
    	}
    	.h
    	{
    		text-align:left;
    		margin-left:30px;
    	}
    	.hh
    	{
    		cursor:hand;
    	}
    	.wei
    	{
    		width:500px;
    		text-align:left;
    		float:left;
    		margin-buttom:15px;
    		margin-left:9px;
    	}
    </style>


  </head>
  <body>
   <jsp:include flush="true" page="util/maintop.jsp"></jsp:include>
   <div class="wei">
	   <span class="zhans">你现在的位置</span>:&nbsp;&nbsp;<a href="topic.do?method=index">
	   <span class="zhans">网站首页</span></a> 
	   	&gt;&gt;<a href=""><span class="zhans">动画教程</span></a>
   	</div>
   	<div id="main3">
   		<div id="mleft">
   			<div class="title">${ requestScope.essay.title}</div>
   			<br />
   			<div class="h">---------------------------------------------------------------------------</div>
   			<br />
   			<div class="fu">
   				软件大小: &nbsp;&nbsp;&nbsp;${ requestScope.essay.downsize} K <br />
   				发&nbsp;表&nbsp;人: &nbsp;&nbsp;&nbsp;${ requestScope.essay.adminName}<br />
   				软件语言: &nbsp;&nbsp;&nbsp;${ requestScope.essay.language}<br />
   				发布时间: &nbsp;&nbsp;&nbsp;${ requestScope.essay.createTime}<br />
   				运行环境: &nbsp;&nbsp;&nbsp;${ requestScope.essay.huan}<br />
   				解压密码: &nbsp;&nbsp;&nbsp;${ requestScope.essay.downpass}<br />
   				更新时间: &nbsp;&nbsp;&nbsp;${ requestScope.essay.updateTime}<br />
   				下载次数: &nbsp;&nbsp;&nbsp;${ requestScope.essay.downcount}<br />
   			</div>
   			<br />
   			<div class="h">---------------------------------------------------------------------------</div>
   			<div class="content">
   				<font size="3">资源描述</font><br />
   				${ requestScope.essay.content}
   			</div>
   			<div class="down">
   				<a href="util/down.jsp?type=${ requestScope.essay.type}&filename=${  requestScope.essay.downName}" border="0">
   					<img src="images/xia.jpg" border="0"/>
   				</a>
   			</div>
   			<div class="zhan">
   				<a class="hh" onClick="javascript:window.history.go(-1);">【返回】</a>&nbsp;&nbsp;&nbsp;
   				<a class="hh" onClick="javascript:window.close();">【关闭本页】</a>
   			</div>
   		</div>
   		<div id="mleft2">
   			<iframe src="util/downloadRight.jsp" width="240px" height="520px" border="0" frameborder="no"></iframe>
   		</div>
   	</div>
   
   <jsp:include flush="true" page="util/buttom.jsp"></jsp:include>
  </body>
</html>
