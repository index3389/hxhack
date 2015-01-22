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
			margin-top:40px;
			text-align:center;
		}
		 .inviList_4
		 {
		 	color:6ABCEB;
		 	font-size:16px;
		 	font-family:黑体;
		 }
		 .inviList_5 a
		 {
		 	font-size:14px;
		 }
		 .inviList_6
		 {
		 	font-size:12px;
		 }
	</style>
	
	
	<script type="text/javascript">
		function search2()
		{
			var content = document.all.searchs.value;
			
			if(content == "")
			{
				alert("条件不能为空！！！");
			}
			else
			{
				window.location.href = "bbs.do?method=search&c="+content;
			}
		}
	</script>

  </head>
  
  	
  
  <body>
  <jsp:include flush="true" page="../public/t.jsp"></jsp:include>
    <div id="search_main">
    	<div id="search_1">
    		<span id="search_2">论坛搜索</span> <input type="text" name="searchs" size="40"/> 
    		<input type="button" value="论坛搜索" id="s_s"  onClick="search2()" />
    	</div>
    	
    	<div id="search_3">
    		<c:choose>
    			<c:when test="${ empty requestScope.res}">
    				<font size="5" color="green">没有找到你要搜索的内容</font>
    			</c:when>
    			<c:otherwise>
    				<table border="1" width="99%" cellspacing="0" bordercolor="6ABCEB">
    				<tr>
    					<td>&nbsp;</td>
    					<td align="center">类型</td>
    					<td>标题</td>
    					<td align="center">作者</td>
    					<td align="center">回复</td>
    					<td align="center">最后发表</td>
    				</tr>
    				<c:forEach var="i" items="${ requestScope.res}">
    					<tr>
	    					<td width="50px"><img src="images/invi/t_3.jpg" width="50px"/></td>
	    					<td width="50px">
	    						<c:choose>
	    							<c:when test="${ i.xtype == 1}">
	    								<div class="inviList_4">[求助]</div>
	    							</c:when>
	    							<c:when test="${ i.xtype == 2}">
	    								<div class="inviList_4">[原创]</div>
	    							</c:when>
	    							<c:when test="${ i.xtype == 3}">
	    								<div class="inviList_4">[讨论]</div>
	    							</c:when>
	    							<c:when test="${ i.xtype == 4}">
	    								<div class="inviList_4">[分享]</div>
	    							</c:when>
	    							<c:otherwise>
	    								<div class="inviList_4">[转载]</div>
	    							</c:otherwise>
	    						</c:choose>
	    					</td>
	    					<td><div class="inviList_5"><a href="bbs.do?method=invitation&id=${ i.tieid}">${ i.title}</a></div></td>
	    					<td align="center">${ i.hackName}</td>
	    					<td align="center">${ i.count}</td> 
	    					<td align="center" width="150px">
	    						<div class="inviList_6">${ i.lasthui}<br />${ i.createTime}</div>
	    					</td>
	    				</tr>
    				</c:forEach>
    			</table>
    			</c:otherwise>
    		</c:choose>
    	</div>
    </div>
    <br />
    <br />
    <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
