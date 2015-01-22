<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="com.hbsoft.hack.vo.SafetyVO" %>
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
    
    <title>${ applicationScope.title}-安全公告</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    		font-family: Arial, Helvetica, Verdana, Sans-serif;
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
    	.news_t1
    	{
    		height:400px;
    		border:5px groove #000000;
    		width:315px;
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
    	.timeq
    	{
    		color:red;
    		font-size:12px;
    	}
    	.safety_1
    	{
    		font-size:15px;
    		color:white;
    		text-align:left;
    		margin-left:5px;
    		paddint-top:8px;
    	}
    	.safety_1 a
    	{
    		font-size:15px;
    	}
    </style>

  </head>
  
  <body>
    <jsp:include flush="true" page="../util/maintop.jsp"></jsp:include>
    <br />
    <div class="safety_1">
    	你当前的位置:<a href="topic.do?method=index">首页</a>&nbsp;&gt;&gt;&nbsp;安全公告
    </div>
   <div class="main_news">
   		<div class="news_1">
   			<div class="news_3">
   				<div class="news_t">
   					<img src="images/util/b1.jpg" width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.safe0}">
   							<div class="new_no">此栏目下暂无文章</div>
   						</c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.safe0}" var="n0">
   									<tr>
   										<td><a href="topic.do?method=getsafety&id=${ n0.safetyid}"> 										
   										<%
											SafetyVO news0 = (SafetyVO)pageContext.getAttribute( "n0");
											out.print(FormatString.formatString(news0.getTitle(),17));
										%>	
   										</a></td>
   										<td align="right">
   											<span  class="timeq">
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
   					<img src="images/util/b2.jpg"  width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.safe1}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.safe1}" var="n1">
   									<tr>
   										<td><a href="topic.do?method=getsafety&id=${ n1.safetyid}">
   											<%
												SafetyVO news1 = (SafetyVO)pageContext.getAttribute( "n1");
												out.print(FormatString.formatString(news1.getTitle(),17));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="timeq">
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
   					<img src="images/util/b3.jpg"  width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.safe2}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.safe2}" var="n2">
   									<tr>
   										<td><a href="topic.do?method=getsafety&id=${ n2.safetyid}">
   											<%
												SafetyVO news2 = (SafetyVO)pageContext.getAttribute( "n2");
												out.print(FormatString.formatString(news2.getTitle(),17));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="timeq">
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
   					<img src="images/util/b4.jpg"  width="310px"/>
   					<c:choose>
   						<c:when test="${ empty requestScope.safe3}"><div class="new_no">此栏目下暂无文章</div></c:when>
   						<c:otherwise>
   							<table border="0" width="310px">
   								<c:forEach items="${ requestScope.safe3}" var="n3">
   									<tr>
   										<td><a href="topic.do?method=getsafety&id=${ n3.safetyid}">
   											<%
												SafetyVO news3 = (SafetyVO)pageContext.getAttribute( "n3");
												out.print(FormatString.formatString(news3.getTitle(),17));
											%>
   										</a></td>
   										<td align="right">
   											<span  class="timeq">
    											<fmt:formatDate value="${ n3.createTime}" pattern="yyyy年MM月dd日"/>
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
   			<iframe src="util/cartoonRight.jsp" width="220px" height="1010px" border="0" frameborder="no"></iframe>
   		</div>
   </div>
    
    <jsp:include flush="true" page="../util/buttom.jsp"></jsp:include>
  </body>
</html>
