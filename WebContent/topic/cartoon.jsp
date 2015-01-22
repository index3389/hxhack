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
    
    <title>${ applicationScope.title}--动画下载</title>
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
    		width:920px;
    		margin-top:5px;
    		text-align:center;
    		padding:0px;
    		margin:0px;
    	}
    	.title
    	{
    		font-size:18px;
    		font-family:黑体;
    		text-align:left;
    		margin-left:30px;
    		color:red;
    		padding-top:30px;
    		padding-left:20px;
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
    		width:630px;
    		border:1px bule;
    		text-align:right;
    	}
    	.down
    	{
    		width:610px;
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
    	.cartoon_wei
    	{
    		width:500px;
    		text-align:left;
    		margin-buttom:1px;
    		margin-left:2px;
    		font-size:15px;
    		color:white;
    		float:left;
    	}
    	.cartoon_zhans
    	{
    		color:white;
    		font-size:15px;
    	}
    	#left_110
    	{
    		border:3px groove #000000;
    		float: left;
    		width:674px;
    	}
    	#left_119
    	{
    		margin:0px;
    		padding:0px;
    		float: left;
    	}
    </style>


  </head>
  <body>
   <jsp:include flush="true" page="../util/maintop.jsp"></jsp:include>
   <div class="cartoon_wei">
	   <span class="cartoon_zhans">你现在的位置</span>:&nbsp;&nbsp;<a href="topic.do?method=index">
	   <span class="cartoon_zhans">网站首页</span></a> 
	   	&gt;&gt;<span class="cartoon_zhans">动画教程</span>
   	</div>
   	<div id="main3">
		<div id="left_110">
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
				下载次数: &nbsp;&nbsp;&nbsp;${ requestScope.essay.downcount}<br />
			</div>
			<br />
			<div class="h">---------------------------------------------------------------------------</div>
			<div class="content">
				<font size="3">资源描述</font><br />
				${ requestScope.essay.content}
			</div>
			<div class="down">
				<a href="util/cartoon.jsp?type=${ requestScope.essay.type}&filename=${  requestScope.essay.downName}" border="0">
					<img src="images/xia.jpg" border="0"/>
				</a>
			</div>
			<div class="zhan">
				<a class="hh" onClick="javascript:window.history.go(-1);">【返回】</a>&nbsp;&nbsp;&nbsp;
				<a class="hh" onClick="javascript:window.close();">【关闭本页】</a>
			</div>
		</div>
   		<dir id="left_119">
   			<iframe src="util/newsRight.jsp" width="220px" height="1010px" border="0" frameborder="no"></iframe>
   		</dir>		
   					
   		
   	</div>
   
   <jsp:include flush="true" page="../util/buttom.jsp"></jsp:include>
  </body>
</html>
