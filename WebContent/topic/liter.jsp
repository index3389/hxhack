<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.hbsoft.hack.vo.LiterVO" %>
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
    
    <title>${ applicationScope.title} -- 黑客文学</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    		font-size:12px;
    	}
    	a
    	{
    		font-size:12px;
    	}
    	.main_news
    	{
    		width:900px;
    		height:805px;
    		padding-left:10px;
    		margin-top:30px;
    	}
    	.news_1
    	{
    		width:650px;
    		height:900px;
    		float:left;
    	}
    	.news_2
    	{
    		width:220px;
    		height:930px;
    		float:left;
    	}
    	.news_3
    	{
    		width:650px;
    		height:400px;
    	}
    	
    	.news_t
    	{
    		height:400px;
    		border:5px groove #000000;
    		width:315px;
    		float:left;
    	}
    	.news_t a
    	{
    		font-size:12px;
    	}
    	.news_t1
    	{
    		height:400px;
    		border:5px groove #000000;
    		width:315px;
    		float:left;
    		margin-left:3px;
    	}
    	td a
    	{
    		font-size:12px;
    	}
    	.news_img
    	{
    		text-align:left;
    	}
    	.new_no
    	{
    		text-align:left;
    		font-size:12px;
    	}
    	.time1
    	{
    		font-size:12px;
    		color:red;
    	}
    	.liter_1
    	{
    		text-align:left;
    		color:white;
    		height:10px;
    		width:300px;
    		float:left;
    		margin-left:5px;
    		font-size:15px;
    		margin-top:10px;
    	}
    	.liter_1 a
    	{
    		font-size:15px;
    	}
    	.liter_2
    	{
    		text-align:left;
    		color:white;
    		font-size:15px;
    	}
    </style>

  </head>
  
  <body>
    <jsp:include flush="true" page="../util/maintop.jsp"></jsp:include>
    <br />
    <div class="liter_1">
    	你当前的位置:<a href="topic.do?method=index">首页</a>&nbsp;&nbsp;&gt;&gt;
    	<span class="liter_2">黑客文学</span>
    </div>
   <div class="main_news">
   		<div class="news_1">
   			<div class="news_3">
   				<div class="news_t">
   					<img src="images/util/w1.jpg" width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news0}">
   							<div class="new_no">此栏目下暂无文章</div>
   						</c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.news0}" var="n0">
   									<tr>
   										<td><a href="topic.do?method=getliter&id=${ n0.literid}"> 										
   										<%
											LiterVO news0 = (LiterVO)pageContext.getAttribute( "n0");
											out.print(FormatString.formatString(news0.getTitle(),18));
										%>	
   										</a></td>
   										<td align="right">
   											<span  class="time1">
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
   					<img src="images/util/w2.jpg"  width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news1}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.news1}" var="n1">
   									<tr>
   										<td><a href="topic.do?method=getliter&id=${ n1.literid}">
   											<%
												LiterVO news1 = (LiterVO)pageContext.getAttribute( "n1");
												out.print(FormatString.formatString(news1.getTitle(),18));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time1">
    											<fmt:formatDate value="${ n1.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   			</div>
   			<div class="news_img"><img src="images/main/banner2.jpg" width="635px"/></div>
   			<div class="news_3">
   				<div class="news_t">
   					<img src="images/util/w3.jpg"  width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news2}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.news2}" var="n2">
   									<tr>
   										<td><a href="topic.do?method=getliter&id=${ n2.literid}">
   											<%
												LiterVO news2 = (LiterVO)pageContext.getAttribute( "n2");
												out.print(FormatString.formatString(news2.getTitle(),18));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time1">
    											<fmt:formatDate value="${ n2.createTime}" pattern="yyyy年MM月"/>
    										</span>
   										</td>
   									</tr>
   								</c:forEach>
   							</table>
   						</c:otherwise>
   					</c:choose>
   				</div>
   				<div class="news_t1">
   					<img src="images/util/w4.jpg"  width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.news3}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.news3}" var="n3">
   									<tr>
   										<td><a href="topic.do?method=getliter&id=${ n3.literid}">
   											<%
												LiterVO news3 = (LiterVO)pageContext.getAttribute( "n3");
												out.print(FormatString.formatString(news3.getTitle(),18));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="time1">
    											<fmt:formatDate value="${ n3.createTime}" pattern="yyyy年MM月"/>
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
   		<div class="news_2">
   			<iframe src="util/literRight.jsp" width="220px" height="1000px" border="0" frameborder="no"></iframe>
   		</div>
   </div>
    
    <jsp:include flush="true" page="../util/buttom.jsp"></jsp:include>
  </body>
</html>
