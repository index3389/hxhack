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
    
    <title>${ applicationScope.title}--软件下载</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
	
	<style type="text/css">
		body
		{
			text-align:center;
			font-family: Arial, Helvetica, Verdana, Sans-serif;
		}
		#main1
		{
			text-align:center;
			width:920px;
			height:auto;
			padding-top:6px;
			padding-buttom:30px;
		}
		#yi1
		{
			width:200px;
			height:520px;
			text-align:center;
			border-left:3px double #000000;
			float:left;
		}
		#er1
		{
			width:470px;
			height:520px;
			text-align:center;
			float:left;
		}
		#san1
		{
			width:240px;
			height:auto;
			text-align:center;
			float:left;
		}
		#fen
		{
			text-align:center;
			width:880px;
			height:18px;
			color:#FFFFFF;
			font-size:14px;
		}
		#fen a
		{
			font-size:14px;
		}
		#fen a:hover
		{
			color:red;
		}
		#mei
		{
			padding-left:220px;
			width:880px;
			height:auto;
			padding-top:20px;
			padding-buttom:20px;
			border-buttom:2px;
			text-align:left;
		}
		.notopic
		{
			font-size:16px;
		}
		#time
		{
			color:red;
		}
		.attact_1
		{
			font-size:15px;
			float:left:
			color:white;
			text-align:left;
			margin-buttom:5px;
		}
		.attact_1 a
		{
			font-size:15px;
			color:white;
		}
		.attact_2
		{
			font-size:15px;
			color:white;
		}
	</style>

  </head>
  
  <body>
    	<jsp:include flush="true" page="../util/maintop.jsp"></jsp:include>
    		<div class="attact_1">
	    		<span class="attact_2">你当前所在的位置:&nbsp;&nbsp;</span><a href="topic.do?method=index">首页</a>&gt;&gt;
	    		<span class="attact_2">软件下载</span>
	    	</div>
	    	<div id="main1">
    		<div id="yi1">
    			<div class="im"><img src="images/006.jpg" width="180px" height="87px"/></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="87px"/></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="87px"/></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="87px" /></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="87px" /></div>
    		</div>
    		<div id="er1">
    			<c:choose>
    				<c:when test="${ empty requestScope.topicList}">
    					<div class="notopic">当前没有任何文章</div>
    				</c:when>
    				<c:otherwise>
    					<table width="450px" align="center">
	    					<c:forEach items="${ requestScope.topicList}" var="t">
    							<tr>
    								<td><img src="images/left.gif" /></td>
    								<td><a href="topic.do?method=getdownload&id=${ t.downid}">${ t.title}</a></td>
    								<td align="right">
    									<span  id="time">
    										<fmt:formatDate value="${ t.createTime}" pattern="yyyy年MM月"/>
    									</span>
    								</td>
    							</tr>
	    					</c:forEach>
    					</table>
    				</c:otherwise>
    			</c:choose>
    		</div>
    		<div id="san1">
    			<iframe src="util/downloadRight.jsp" width="240px" height="520px" border="0" frameborder="no"></iframe>
    		</div>
    	</div>
    	<div id="fen">
    		共&nbsp;<font color="red">${ requestScope.len}</font>&nbsp;篇文章&nbsp;
    		<a href="topic.do?method=topic&e=1&c=1">首页</a>
    		<c:choose>
    			<c:when test="${ requestScope.p <= 1}">上一页</c:when>
    			<c:otherwise><a href="topic.do?method=topic&e=1&c=${ requestScope.p-1}">上一页</a></c:otherwise>
    		</c:choose>
    		<c:choose>
    			<c:when test="${ requestScope.p>=requestScope.count}">下一页</c:when>
    			<c:otherwise><a href="topic.do?method=topic&e=1&c=${ requestScope.p+1}">下一页</a></c:otherwise>
    		</c:choose>
    		<a href="topic.do?method=topic&e=1&c=${ requestScope.count}">尾页</a>&nbsp;
    		共&nbsp;<font color="red">${ requestScope.p}/${ requestScope.count}</font>&nbsp;页
    	</div>
    	<hr color="#000000" width="65%" height="3px"/>
    	<div id="mei">
    		<b><font color="#FFFFFF">精品技术文献图片</font></b>
    		<br /><br />
    		<img src="images/nopic.gif" />
    		<br /><b>没有任何图片文章</b>
    		<br /><br />
    	</div>
    	<jsp:include flush="true" page="../util/buttom.jsp"></jsp:include>
  </body>
</html>
