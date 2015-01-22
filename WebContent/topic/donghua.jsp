<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.hbsoft.hack.vo.DonghuaVO" %>
<%@ page import="com.hbsoft.hack.util.FormatString" %>
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
    
    <title>${ applicationScope.title}-动画教程</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    		font-size:12px;
    	}
    	
    	.main_news
    	{
    		width:940px;
    		height:805px;
    		margin-top:10px;
    		margin-left:20px;
    	}
    	.news_3
    	{
    		height:400px;
    		width:950px;
    		margin-left:9px;
    	}
    	
    	.news_t
    	{
    		height:400px;
    		border:4px groove #000000;
    		width:285px;
    		float:left;
    	}
    	.news_t1
    	{
    		height:400px;
    		border:5px groove #000000;
    		width:285px;
    		float:left;
    		margin-left:3px;
    	}
    	.news_img
    	{
    		text-align:left;
    	}
    	.new_no
    	{
    		text-align:left;
    		font-size:18px;
    	}
    	.time
    	{
    		color:red;
    	}
    	.wei
    	{
    		width:500px;
    		text-align:left;
    		float:left;
    		margin-buttom:15px;
    		margin-left:9px;
    	}
    	.zhan
    	{
    		font-size:14px;
    	}
    	#ys_yi
    	{
    		padding-left:10px;
    		text-align:center;
    	}
    	#ys_er
    	{
    		text-align:left;
    		width:920px;
    		height:auto;
    	}
    	#ys_san
    	{
    		width:920px;
    		text-align:left;
    	}
    	#ys_si
    	{
    		text-align:left;
    	}
    	.time
    	{
    		font-size:12px;
    	}
    </style>

  </head>
  
  <body>
    <div id="ys_yi"><jsp:include flush="true" page="../util/maintop.jsp"></jsp:include></div>
	   <div class="main_news">
   			<div class="wei"><span class="zhan">你现在的位置</span>:&nbsp;&nbsp;<a href="topic.do?method=index"><span class="zhan">网站首页</span></a> 
   			&gt;&gt;<a href=""> <span class="zhan">动画教程</span></a></div>
   			<div class="news_3">
   				<div class="news_t">
   					<img src="images/util/jiami.jpg" width="285px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news0}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="285px">
   								<c:forEach items="${ requestScope.news0}" var="n0">
   									<tr>
   										<td><a href="topic.do?method=donghua&id=${ n0.donghuaid}">
   											<%
												DonghuaVO news0 = (DonghuaVO)pageContext.getAttribute( "n0");
												out.print(FormatString.formatString(news0.getTitle(),15));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time">
    											<fmt:formatDate value="${ n0.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   				<div class="news_t1">
   					<img src="images/util/qq.jpg"  width="285px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news1}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="285px">
   								<c:forEach items="${ requestScope.news1}" var="n1">
   									<tr>
   										<td><a href="topic.do?method=donghua&id=${ n1.donghuaid}">
   											<%
												DonghuaVO news1 = (DonghuaVO)pageContext.getAttribute( "n1");
												out.print(FormatString.formatString(news1.getTitle(),15));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time">
    											<fmt:formatDate value="${ n1.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   				<div class="news_t1">
   					<img src="images/util/ruqin.jpg"  width="285px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news2}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="285px">
   								<c:forEach items="${ requestScope.news2}" var="n2">
   									<tr>
   										<td><a href="topic.do?method=donghua&id=${ n2.donghuaid}">
   											<%
												DonghuaVO news2 = (DonghuaVO)pageContext.getAttribute( "n2");
												out.print(FormatString.formatString(news2.getTitle(),15));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time">
    											<fmt:formatDate value="${ n2.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   			</div>
   			<div id="ys_er"><jsp:include flush="true" page="../util/ad.jsp"></jsp:include></div>
   			<div class="news_3">
   				<div class="news_t">
   					<img src="images/util/houmen.jpg"  width="285px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news3}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="285px">
   								<c:forEach items="${ requestScope.news3}" var="n3">
   									<tr>
   										<td><a href="topic.do?method=donghua&id=${ n3.donghuaid}">
   											<%
												DonghuaVO news3 = (DonghuaVO)pageContext.getAttribute( "n3");
												out.print(FormatString.formatString(news3.getTitle(),15));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time">
    											<fmt:formatDate value="${ n3.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   				<div class="news_t1">
   					<img src="images/util/yichu.jpg"  width="285px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news4}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="285px">
   								<c:forEach items="${ requestScope.news4}" var="n4">
   									<tr>
   										<td><a href="topic.do?method=donghua&id=${ n4.donghuaid}">
   											<%
												DonghuaVO news4 = (DonghuaVO)pageContext.getAttribute( "n4");
												out.print(FormatString.formatString(news4.getTitle(),15));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time">
    											<fmt:formatDate value="${ n4.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   				<div class="news_t1">
   					<img src="images/util/yuanchuang.jpg"  width="285px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news5}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="285px">
   								<c:forEach items="${ requestScope.news5}" var="n5">
   									<tr>
   										<td><a href="topic.do?method=donghua&id=${ n5.donghuaid}">
   											<%
												DonghuaVO news5 = (DonghuaVO)pageContext.getAttribute( "n5");
												out.print(FormatString.formatString(news5.getTitle(),15));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time">
    											<fmt:formatDate value="${ n5.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   			</div>
   </div>
   <div id="ys_san">
   		<div id="ys_si"><jsp:include flush="true" page="../util/buttom.jsp"></jsp:include></div>
   </div>
  </body>
</html>
