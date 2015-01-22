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
    
    <title>${ applicationScope.title} -- 后台管理 -- 论坛基本设置</title>
       
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	
	<style type="text/css">
		body
		{
			text-align:center;
			font-size:12px;
		}
		#basic_main
		{
			text-align:center;
		}
		.basic_i
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
    <br />
    <br />
    <center>
    	<font size="5" face="黑体" color="6ABCEB">论坛基本设置</font> 
    </center><br />
    <div id="basic_main">
    	<form action="init.do?method=bbs_basic" method="post" name="fm">
	    		<table border="1" bordercolor="6ABCEB" cellspacing="0" width="75%">
	    		<tr>
	    			<td width="220px" align="right">是否开放论坛</td>
	    			<td width="220px" align="center">
	    				<select name="bbs1" class="basic_i">
	    					<c:choose>
	    						<c:when test="${ applicationScope.bbs_basic1 == 1}">
	    							<option value="1" selected="selected">是</option>
	    							<option value="0">否</option>
	    						</c:when>
	    						<c:otherwise>
	    							<option value="1">是</option>
	    							<option value="0" selected="selected">否</option>
	    						</c:otherwise>
	    					</c:choose>
	    				</select>
	    			</td>
	    			<td width="220px" align="center">
	    				<c:choose>
	    					<c:when test="${ applicationScope.bbs_basic1 == 0}">
		    					<img src="images/admin/bbs/0.gif" />
		    				</c:when>
		    				<c:otherwise>
		    					<img src="images/admin/bbs/1.gif" />
		    				</c:otherwise>
	    				</c:choose>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">是否开放注册</td>
	    			<td align="center" width="220px">
	    				<select name="bbs2" class="basic_i">
	    					<c:choose>
	    						<c:when test="${ applicationScope.bbs_basic2 == 1}">
	    							<option value="1" selected="selected">是</option>
	    							<option value="0">否</option>
	    						</c:when>
	    						<c:otherwise>
	    							<option value="1">是</option>
	    							<option value="0" selected="selected">否</option>
	    						</c:otherwise>
	    					</c:choose>
	    				</select>
	    			</td>
	    			<td align="center" width="220px">
	    				<c:choose>
	    					<c:when test="${ applicationScope.bbs_basic2 == 0}">
		    					<img src="images/admin/bbs/0.gif" />
		    				</c:when>
		    				<c:otherwise>
		    					<img src="images/admin/bbs/1.gif" />
		    				</c:otherwise>
	    				</c:choose>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">是否允许一个E-mail注册一个账号</td>
	    			<td align="center" width="220px">
	    				<select name="bbs3" class="basic_i">
	    					<c:choose>
	    						<c:when test="${ applicationScope.bbs_basic3 == 1}">
	    							<option value="1" selected="selected">是</option>
	    							<option value="0">否</option>
	    						</c:when>
	    						<c:otherwise>
	    							<option value="1">是</option>
	    							<option value="0" selected="selected">否</option>
	    						</c:otherwise>
	    					</c:choose>
	    				</select>
	    			</td>
	    			<td align="center" width="220px">
	    				<c:choose>
	    					<c:when test="${ applicationScope.bbs_basic3 == 0}">
		    					<img src="images/admin/bbs/0.gif" />
		    				</c:when>
		    				<c:otherwise>
		    					<img src="images/admin/bbs/1.gif" />
		    				</c:otherwise>
	    				</c:choose>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">是否过滤帖子关键字</td>
	    			<td align="center" width="220px">
	    				<select name="bbs5" class="basic_i">
	    					<c:choose>
	    						<c:when test="${ applicationScope.bbs_basic5 == 1}">
	    							<option value="1" selected="selected">是</option>
	    							<option value="0">否</option>
	    						</c:when>
	    						<c:otherwise>
	    							<option value="1">是</option>
	    							<option value="0" selected="selected">否</option>
	    						</c:otherwise>
	    					</c:choose>
	    				</select>
	    			</td>
	    			<td align="center" width="220px">
	    				<c:choose>
	    					<c:when test="${ applicationScope.bbs_basic5 == 0}">
		    					<img src="images/admin/bbs/0.gif" />
		    				</c:when>
		    				<c:otherwise>
		    					<img src="images/admin/bbs/1.gif" />
		    				</c:otherwise>
	    				</c:choose>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">是否允许游客搜索论坛</td>
	    			<td align="center" width="220px">
	    				<select name="bbs4" class="basic_i">
	    					<c:choose>
	    						<c:when test="${ applicationScope.bbs_basic4 == 1}">
	    							<option value="1" selected="selected">是</option>
	    							<option value="0">否</option>
	    						</c:when>
	    						<c:otherwise>
	    							<option value="1">是</option>
	    							<option value="0" selected="selected">否</option>
	    						</c:otherwise>
	    					</c:choose>
	    				</select>
	    			</td>
	    			<td align="center" width="220px">
	    				<c:choose>
	    					<c:when test="${ applicationScope.bbs_basic4 == 0}">
		    					<img src="images/admin/bbs/0.gif" />
		    				</c:when>
		    				<c:otherwise>
		    					<img src="images/admin/bbs/1.gif" />
		    				</c:otherwise>
	    				</c:choose>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td colspan="3" align="center">
	    				<br />
	    				<a style="cursor:hand;" onclick="sub()">提交所有</a>
	    				&nbsp;&nbsp;&nbsp;
	    				<a href="javascript:window.close();">关闭本页</a>
	    				<br />
	    			</td>
	    		</tr>
	    	</table>
    	</form>
    </div>
    <br />
    <br />
    <br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
