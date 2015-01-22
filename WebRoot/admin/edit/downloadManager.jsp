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
    
    <title>${ applicationScope.title}--后台管理--下载管理</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			font-family: Arial, Helvetica, Verdana, Sans-serif;
			font-size:12px;
			padding:0px;
			margin:0px;
			text-align:center;
		}
		#topic_1
		{
			width:1024px;
			text-align:center;
			height:20px;
		}
		#topic_2
		{
			text-align:center;
			font-size:20px;
			font-family:黑体;
		}
		#news
		{
			width:60px;
		}
		#best
		{
			width:60px;
		}
		.e
		{
			cursor:hand;
		}
		#fen
		{
			text-align:center;
			width:880px;
			height:18px;
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
	</style>
	
	<script type="text/javascript">
		function topic_edit()
		{
			alert("s");
		}
		
		function topic_del()
		{
			var c = window.confirm("你确定要删除此文章！！！");
			alert(c);
		}
		
		function topic_new()
		{
			var c = window.confirm("你确定要把这篇文章评为最新文章");
			alert(c);
		}
		
		function topic_best()
		{
			var c = window.confirm("你确定要把这篇文章评为热门文章");
			alert(c);
		}
		
		function select_all()
		{
			var all3 = document.all.user;
			
			var is = document.all.isselect;
			
			var len1 = all3.length;
			var len2 = all3.length;
			
			if(is.checked == true)
			{
				
				for(var i=0;i<len1;i++)
				{
					if(all3[i].checked == false)
					{
						all3[i].checked = true;
					}
				}
			}
			else
			{
				for(var i=0;i<len2;i++)
				{
					if(all3[i].checked == true)
					{
						all3[i].checked = false;
					}
				}
			}
		}
		
	</script>
	
  </head>
  
  <body>
    <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    <br />
    <dir id="topic_1"></dir>
    <c:choose>
    	<c:when test="${ empty requestScope.list}">
    		<div id="topic_2">当前没有任何文章</div>
    	</c:when>	
    	<c:otherwise>
    		<table border="1" rules="rows" width="95%" >
    			<tr>
    				<td>
   					<input type="checkbox" onclick="select_all()" name="isselect">全选
   					</td>
    				<td>编号</td>
    				<td>标题</td>
    				<td>发表人</td>
    				<td>类型</td>
    				<td>语言</td>
    				<td>运行环境</td>
    				<td>发布时间</td>
    				<td>删除</td>
    			</tr>
    			<c:forEach var="t" items="${ requestScope.list}">
    				<tr>
    					<td>
   							<input type="checkbox"  name="user" value="${ t.downid}">
   						</td>
    					<td>${ t.downid}</td>
    					<td><a href="tedit.do?method=down&id=${ t.downid}">${ t.title}</a></td>
    					<td>${ t.adminName}</td>
    					<td>
    						<c:choose>
    							<c:when test="${ t.type == 1}">
    								<c:out value="漏洞扫描"></c:out>
    							</c:when>
    							<c:when test="${ t.type == 2}">
    								<c:out value="加密破解"></c:out>
    							</c:when>
    							<c:when test="${ t.type == 3}">
    								<c:out value="入侵攻击"></c:out>
    							</c:when>
    							<c:when test="${ t.type == 4}">
    								<c:out value="后门木马"></c:out>
    							</c:when>
    							<c:when test="${ t.type == 5}">
    								<c:out value="溢出程序"></c:out>
    							</c:when>
    							<c:when test="${ t.type == 6}">
    								<c:out value="综合攻击"></c:out>
    							</c:when>
    							<c:when test="${ t.type == 7}">
    								<c:out value="原创发布"></c:out>
    							</c:when>
    						</c:choose>
    					</td>
    					<td>${ t.language}</td>
    					<td>${ t.huan}</td>
    					<td>${ t.createTime}</td>
    					<td><a class="e" onclick="topic_del()">删除</a></td>
    				</tr>
    			</c:forEach>
    		</table>
    	</c:otherwise>
    </c:choose>
    <div id="fen">
    		共&nbsp;<font color="red">${ requestScope.all}</font>&nbsp;篇文章&nbsp;
    		<a href="admin.do?method=getContent&p=1&c=topic">首页</a>
    		<c:choose>
    			<c:when test="${ requestScope.p <= 1}">上一页</c:when>
    			<c:otherwise><a href="admin.do?method=getContent&c=topic&p=${ requestScope.p - 1}">上一页</a></c:otherwise>
    		</c:choose>
    		<c:choose>
    			<c:when test="${ requestScope.p>=requestScope.all_page}">下一页</c:when>
    			<c:otherwise><a href="admin.do?method=getContent&c=topic&p=${ requestScope.p + 1}">下一页</a></c:otherwise>
    		</c:choose>
    		<a href="admin.do?method=getContent&c=topic&p=${ requestScope.all_page}">尾页</a>&nbsp;
    		共&nbsp;<font color="red">${ requestScope.all_page}页</font>/第<font color="red">${ requestScope.p}</font>&nbsp;页
    	</div>
    	<br /><br /><br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
