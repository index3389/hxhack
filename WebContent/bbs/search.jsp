<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ application.title} -- 论坛 -- 搜索</title>   
	<meta http-equiv="keywords" content="${ application.search}">
	<style type="text/css">
		body
		{
			text-align:center;
			padding:0px;
			font-size:12px;
			margin:0px;
		}	
		#search_main
		{
			width:920px;
			text-align:center;
		}
		#search_2
		{
			text-align:center;
			font-size:16px;
			font-family:黑体;
		}
		#img_1
		{
			margin-top:10px;
		}
		#s_s
		{
			width:90px;
			background-color:6ABCEB;
			text-align:center;
		}
		#search_1
		{
			margin-top:40px;
			margin-bottom:40px;
		}
		#search_3
		{
			text-align:left;
		}
		#search_4
		{
			font-size:17px;
			margin-left:240px;
			margin-top:20px;
			display:block;
		}
		.search_5
		{

		}
		#search_6
		{
			margin-left:240px;
		}
		#search_6 a
		{
			font-size:16px;
			color:green;
		}
	</style>

	<script type="text/javascript">
		function search()
		{
			var content = document.all.search.value;
			
			if(content == "")
			{
				alert("条件不能为空！！！");
			}
			else
			{
				window.location.href = "../bbs.do?method=search&c="+content;
			}
		}
	</script>
  </head>
  <c:choose>
  		<c:when test="${ empty sessionScope.user}">
  			<c:if test="${ applicationScope.bbs_basic4 == 0}">
				<jsp:forward page="user/login.jsp"></jsp:forward>
			</c:if>
  		</c:when>
  </c:choose>
  <body>
  <jsp:include flush="true" page="../public/t.jsp"></jsp:include>
    <div id="search_main">
    	<div id="search_1">
    		<span id="search_2">论坛搜索</span> <input type="text" name="search" size="40"/> 
    		<input type="button" id="s_s" value="论坛搜索" onclick="search()"/>
    	</di>
    	<div id="search_3">
    		<span id="search_4">便捷搜索</span><br />
    		<div id="search_6">
    			<span class="search_5"><a href="bbs.do?method=quick&type=1">1小时内的帖子</a></span>&nbsp;&nbsp;
	    		<span class="search_5"><a href="bbs.do?method=quick&type=2">24小时内的帖子</a></span>&nbsp;&nbsp;
	    		<span class="search_5"><a href="bbs.do?method=quick&type=3">一个星期内的帖子</a></span>&nbsp;&nbsp;
	    		<span class="search_5"><a href="bbs.do?method=quick&type=4">一个月内的帖子</a></span>
    		</div>
    	</div>
    	<br /><br />
    	<hr width="70%" />
    </div>
    <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
