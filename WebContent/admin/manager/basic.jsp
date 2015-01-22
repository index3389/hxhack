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
    
    <title>${ applicationScope.title} -- 后台管理 -- 系统设置</title>   
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	<style type="text/css">
		body
		{
			text-align:center;
		}
		#basic_1
		{
			text-align:center;
			margin-top:50px;
		}
		#basic_2
		{
			font-size:18px;
			font-family:黑体;
			color:6ABCEB;
		}
		#basic_3
		{
			margin-top:8px;
			margin-bottom:4px;
		}
		tr
		{
			text-align:center;
		}
		#all
		{
			width:100px;
		}
	</style>
	<script type="text/javascript">
		function sub()
		{
			document.all.fm.submit();
		}
	</script>
  </head>
  
  <body>
    <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    
    <div id="basic_1">
    	<div id="basic_2">系统基本设置</div>
    	<form action="setup.do?method=bbsBesic" method="post" name="fm">
    		<table border="1" bordercolor="6ABCEB" cellspacing="0">
    			<tr>
    				<td width="120px">网站名称</td>
    				<td width="320px"><input type="text" name="zhanName" size="30" value="${ applicationScope.title }"/></td>
    			</tr>
    			<tr>
    				<td>搜索引擎优化</td>
    				<td><input type="text" name="zhanSearch" size="30" value="${ applicationScope.search }"/></td>
    			</tr>
    			<tr>
    				<td>站长邮箱</td>
    				<td><input type="text" name="zhanMail" size="30"  value="${ applicationScope.email }"/></td>
    			</tr>
    			<tr>
    				<td>是否开放整站</td>
    				<td>
    					<select name="stop_all" id="all">
    						<c:choose>
	    						<c:when test="${ applicationScope.stop_all == 0}">
	    							<option value="1">是</option>
	    							<option value="0" selected="selected">否</option>
	    						</c:when>
	    						<c:otherwise>
	    							<option value="1" selected="selected">是</option>
	    							<option value="0">否</option>
	    						</c:otherwise>
	    					</c:choose>
    					</select>
    					&nbsp;&nbsp;&nbsp;&nbsp;不影响管理员访问
    				</td>
    			</tr>
    			<tr>
    				<td colspan="2">
    					<div id="basic_3">
	    					<a style="cursor:hand;" onclick="sub()">提交所有</a>&nbsp;&nbsp;&nbsp;
	    					<a href="#">重置</a>
	    				</div>
    				</td>
    			</tr>
    		</table>
    	</form>
    </div>
    
    <br /> <br /> <br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
