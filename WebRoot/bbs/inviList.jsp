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
    <meta http-equiv="keywords" content="${ applicationScope.search}">
    <title> ${ applicationScope.title}-- 论坛 -- 新手求助区</title>
	<style type="text/css">
		body
		{
			text-align:center;
			font-size:12px;
		}
		 .inviList_2
		 {
		 }
		  .inviList_3
		 {
		 	font-size:22px;
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
		 #inviList_10
		 {
		 	width:920px;
		 	text-align:center;
		 }
		 #inviList_11
		 {
		 	width:918px;
		 	text-align:right;
		 	float:right;
		 }
		 .f_i
		 {
		 	color:red;
		 }
		 #i_fen
		 {
		 	width:920px;
		 	font-size:14px;
		 	text-align:right;
		 	paddint-right:10px;	
		 }
		 #i_fen a
		 {
		 	font-size:14px;
		 }
	</style>
  </head>
  
  <body>
  <jsp:include flush="true" page="../public/t.jsp"></jsp:include>
  	<div id="inviList_10">
    	<div id="inviList_11">
    		<a href="bbs/invitation/invitation.jsp"><img src="images/bbs/post.jpg" border=0"/></a>
    	</div>
    </div>
    <div class="inviList_2">
    	<img src="images/bbs/1.jpg" width="922px" /><br />
    	<c:choose>
    		<c:when test="${ empty requestScope.tie_1}">
    			<div class="inviList_3">当前还没有任何帖子！！！</div>
    		</c:when>
    		<c:otherwise>
    			<table border="1" width="92%" cellspacing="0" bordercolor="6ABCEB">
    				<tr>
    					<td>&nbsp;</td>
    					<td align="center">类型</td>
    					<td>标题</td>
    					<td align="center">作者</td>
    					<td align="center">回复</td>
    					<td align="center">最后发表</td>
    				</tr>
    				<c:forEach var="i" items="${ requestScope.tie_1}">
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
    <br />
    <div id="i_fen">
    	共<span class="f_i">${ requestScope.all}</span>条记录/每页显示<span class="f_i">${ requestScope.p_m}</span>条&nbsp;&nbsp;&nbsp;
    	第<span class="f_i">${ requestScope.p}</span>页/共<span class="f_i">${ requestScope.p_a}</span>页
    	<a href="bbs.do?method=get_invitation&t=${ requestScope.t}&p=1">首页</a>
    	
    	<c:choose>
			<c:when test="${ requestScope.p <= 1}">上一页</c:when>
			<c:otherwise><a href="bbs.do?method=get_invitation&t=${ requestScope.t}&p=${ requestScope.p - 1}">上一页</a></c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${ requestScope.p == requestScope.p_a}">下一页</c:when>
			<c:otherwise><a href="bbs.do?method=get_invitation&t=${ requestScope.t}&p=${ requestScope.p + 1}">下一页</a></c:otherwise>
		</c:choose>
    	
    	<a href="bbs.do?method=get_invitation&t=${ requestScope.t}&p=${ requestScope.p_a}">尾页</a>
    </div>
    <br />
    <jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
