<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.hbsoft.hack.vo.LiterVO" %>
<%@ page import="com.hbsoft.hack.util.FormatString" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title></title>
	<style type="text/css">
		body
		{
			text-align:center;
			width:210px;
			margin:0px;
			padding:0px;
			background-image:url(images/bg.jpg);
			font-family: Arial, Helvetica, Verdana, Sans-serif;
		}
		a
		{
			text-decoration:none;
		}
		a:hover
		{
			color:red;
		}
		#right_1
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
			border-right:1px groove gray;
		}
		#right_2
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
		.right_3
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
			height:270;
		}
		#right_4
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
		#right_5
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
		.right_6
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
		.right_7
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
		.right_8
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
		.right_9
		{
			width:210px;
			text-align:left;
			margin:0px;
			padding-top:3px;
			padding-bottom:2px;
		}
		.right_9 a
		{
			color:white;
			font-size:12px;
		}
		.right_all
		{
			width:210px;
			text-align:center;
			margin:0px;
			padding:0px;
		}
	</style>
  </head>
  	<c:if test="${ empty requestScope.right1}">
  		<jsp:forward page="../topic.do?method=literRight"></jsp:forward>
  	</c:if>
  <body>
    <div id="right_1">
    	<div class="right_3">
    		<div><img src="images/left/user3.gif" width="216px"/></div>
    		<div id="right_7"><img src="images/left/xuixinwenzhang.jpg" width="215px" border="0" height="30px"/></div>
    		<br />
    		<c:choose>
    			<c:when test="${ empty requestScope.right1}">
    				<div id="right_8">此栏目下暂无文章</div>
    			</c:when>
    			<c:otherwise>
    				<c:forEach var="r1" items="${ requestScope.right1}">
    					<div class="right_9"><a href="topic.do?method=getliter&id=${ r1.literid}" target="_blank">
    						<%
								LiterVO news0 = (LiterVO)pageContext.getAttribute( "r1");
								out.print(FormatString.formatString(news0.getTitle(),15));
							%>	
    					</a></div>
    				</c:forEach>
    			</c:otherwise>
    		</c:choose>
    		<br />
    	</div>
    	<div><img src="images/left/user1.gif" width="216px"/></div>
    	<div class="right_3">
    		<div class="right_7"><img src="images/left/jingping.jpg" width="215px" border="0" height="30px"/></div>
    		<br />
    		<c:choose>
    			<c:when test="${ empty requestScope.right2}">
    				<div class="right_8">此栏目下暂无文章</div>
    			</c:when>
    			<c:otherwise>
    				<c:forEach var="r2" items="${ requestScope.right2}">
    					<div class="right_9"><a href="topic.do?method=getliter&id=${ r2.literid}" target="_blank">
    						<%
								LiterVO news1 = (LiterVO)pageContext.getAttribute( "r2");
								out.print(FormatString.formatString(news1.getTitle(),15));
							%>	
    					</a></div>
    				</c:forEach>
    			</c:otherwise>
    		</c:choose>
    		<br />
    	</div>
    	<div><img src="images/left/user6.gif" width="216px"/></div>
    </div>
  </body>
</html>

