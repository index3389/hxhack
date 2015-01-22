<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 论坛 -- 用户中心</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			text-align:center;
			font-family: Arial, Helvetica, Verdana, Sans-serif;
		}
		#user_main
		{
			width:920px;
			text-align:center;
		}
		.user_1
		{
			height:30px;
			text-align:center;
			background-color:8FBEF1;
			width:150px;
		}
		#user_2
		{
			float:left;
		}
		#user_3
		{
			float:left;
		}
		#user_left
		{
			margin-top:0px;
		}
		#topic_b
		{
			text-align:center;
			margin-top:13px;
		}
		#topic_b a
		{
			font-size:16px;
		}
		.t_t
		{
			color:red;
		}
	</style>
	<script type="text/javascript">
		function test(str)
		{
			document.getElementById("info_src").src = str;
		}
	</script>
  </head>

  <body>
  	<jsp:include flush="true" page="../public/t.jsp"></jsp:include>
   	<div id="user_main">
   		<div id="user_2">
   				<table cellspacing="0" border="1" bordercolor="6ABCEB" width="150px" id="user_left">
   					<tr>
			    		<td class="user_1"><img src="images/fanghu.gif" width="150px"/></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="user.do?method=img" class="user_a">个人设置</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="user.do?method=getUser" class="user_a">我的信息</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="bbs.do?method=f_byName" class="user_a">我的主题</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="center/pass.jsp" class="user_a">修改密码</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><a href="#" class="user_a">我的精华</a></td>
			    	</tr>
			    	<tr>
			    		<td class="user_1"><img src="images/ad-01.gif" width="150px"/></td>
			    	</tr>
			    </table>
   		</div>
   		<div id="user_3">	
   				<div id="search_3">
    		<c:choose>
    			<c:when test="${ empty requestScope.f_list}">
    				<font size="5" color="green">你没有发任何帖</font>
    			</c:when>
    			<c:otherwise>
    				<table border="1" width="763px" cellspacing="0" bordercolor="6ABCEB">
    				<tr>
    					<td>&nbsp;</td>
    					<td align="center">类型</td>
    					<td>标题</td>
    					<td align="center">作者</td>
    					<td align="center">回复</td>
    					<td align="center">最后发表</td>
    				</tr>
    				<c:forEach var="i" items="${ requestScope.f_list}">
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
    		<div id="topic_b">
    			共<span class="t_t">${ requestScope.alllist}</span>条记录&nbsp;&nbsp;
    			第<span class="t_t">${ requestScope.p}</span>页/共<span class="t_t">${ requestScope.allp}</span>页    			
    			<a href="bbs.do?method=f_byName&p=1">首页</a>
    			
    			<c:choose>
    				<c:when test="${ requestScope.p <= 1}">上一页</c:when>
    				<c:otherwise><a href="bbs.do?method=f_byName&p=${ requestScope.p - 1}">上一页</a></c:otherwise>
    			</c:choose>
    			
    			<c:choose>
    				<c:when test="${ requestScope.p == requestScope.allp}">下一页</c:when>
    				<c:otherwise><a href="bbs.do?method=f_byName&p=${ requestScope.p + 1}">下一页</a></c:otherwise>
    			</c:choose>
    			
    			<a href="bbs.do?method=f_byName&p=${ requestScope.allp}">尾页</a>
    		</div>
   		</div>
   	</div>
   	<jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
