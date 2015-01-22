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
    
    <title>${ applicationScope.title}--病毒公告</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
    <style type="text/css">
    	body
    	{
    		font-size:13px;
    		text-align:center;
    		color:#FFFFFF;
    	}
    	
    	#main3
    	{
    		text-align:left;
    		width:920px;
    		margin-top:5px;
    	}
    	#mleft
    	{
    		width:670px;
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
    		width:240px;
    		float:left;
    	}
    	.title
    	{
    		font-size:14px;
    		font-family:黑体;
    		margin-buttom:20px;
    		text-align:center;
    	}
    	.fu
    	{
    		text-align:center;
    		margin-buttom:8px;
    		margin-top:20px;
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
    		width:600px;
    		border:1px bule;
    		text-align:right;
    	}
    	.hh
    	{
    		cursor:hand;
    	}
    	.cartoon_wei
    	{
    		width:500px;
    		text-align:left;
    		margin-buttom:15px;
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
   		<div id="mleft">
   			<div class="title">${ requestScope.essay.title}</div>
   			<div class="fu">
   				www.hxhack.com &nbsp;&nbsp;时间:${ requestScope.essay.createTime} &nbsp;&nbsp;整理:${ requestScope.essay.adminName}
   			</div>
   			<div>---------------------------------------------------------------------------</div>
   			<div class="content">${ requestScope.essay.content}</div>
   			<div class="zhan">
   				<a class="hh" onClick="javascript:window.history.go(-1);">【返回】</a>&nbsp;&nbsp;&nbsp;
   				<a class="hh" onClick="javascript:window.close();">【关闭本页】</a>
   			</div>
   		</div>
   		<div id="mleft2">
   		<iframe src="util/cartoonRight.jsp" width="220px" height="940px" border="0" frameborder="no"></iframe>
   		</div>
   	</div>
   
   <jsp:include flush="true" page="../util/buttom.jsp"></jsp:include>
  </body>
</html>
