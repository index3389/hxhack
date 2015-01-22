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
    
    <title>${ applicationScope.title} -- 后台管理 -- 版块管理</title>
       
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	
	<style type="text/css">
		body
		{
			text-align:center;
		}
		
		#lap_main
		{
			text-align:center;
			width:900px;
		}
		#lap_1
		{
			text-align:center;
			margin-top:60px;
		}
		.i
		{
			font-size:16px;
			color:blue;
			text-align:center;
		}
		td
		{
			height:30px;
		}
	</style>
	<script type="text/javascript">
		function addObj()
		{
			var t = document.all.title.value;
			var c = document.all.content.value;
			
			if(t=="" || c == "")
			{
				alert("不能为空！！！");
			}
			else
			{
				document.all.fm.submit();
			}
		}
	</script>
  </head>
  
  <body>&nbsp; 
    <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    <div id="lap_main">  	
    	<br /><br /><br /><br />
    	<div id="lap_3">
    		<div class="i">修改版块</div>
	    		<form action="lap.do?method=update" method="post" name="fm">
	    			<input type="hidden" name="id" value="${ requestScope.lap.lapId}" /> 
	    			<table border="1" cellspacing="0" width="700px"  bordercolor="6ABCEB" >
	    			<tr>
	    				<td width="60px" align="center">标题</td>
	    				<td><input type="text" name="title" maxlength="10" size="22" value="${ requestScope.lap.lapName}"/></td>
	    				<td>标题请输入10个汉字以内</td>
	    			</tr>
	    			<tr>
	    				<td width="60px" align="center">类别</td>
	    				<td colspan="2">
	    					<c:choose>
	    						<c:when test="${ requestScope.lap.type == 1}"><div>新手求助区</div></c:when>
	    						<c:otherwise>
	    							<div>黑客技术讨论区</div>
	    						</c:otherwise>
	    					</c:choose>
	    				</td>
	    			</tr>
	    			<tr>
	    				<td align="center">简介</td>
	    				<td><input type="text" name="content" maxlength="50" size="65" value="${ requestScope.lap.content}"/></td>
	    				<td>简介请输入50个汉字以内</td>
	    			</tr>
	    			<tr>
	    				<td width="500px" colspan="3" align="center">
	    					<a style="cursor:hand" onClick="addObj()">修改</a>&nbsp;&nbsp;&nbsp;
	    				</td>
	    			</tr>
	    		</table>
    		</form>
    	</div>
    </div>
    
    <br /><br /><br />
     <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
