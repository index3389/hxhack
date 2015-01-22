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
   <br />
    <div id="basic_main">
    	<form action="init.do?method=key" method="post" name="fm">
	    		<div id="basic_10"><font size="5" face="黑体" color="6ABCEB">论坛帖子关键字过滤(多个请用&nbsp;|&nbsp;隔开)</font> </div><br />
	    		<div id="basic_11">
	    			<textarea rows="8" cols="60" name="keys">共产党|温家宝</textarea>
	    		</div>
	    		<br />
	    		<div id="basic_12">
	    			<a style="cursor:hand;" onclick="sub()">提交所有</a>
	    				&nbsp;&nbsp;&nbsp;
	    			<a href="javascript:window.close();">关闭本页</a>
	    		</div>
	    				
    	</form>
    </div>
    <br />
    <br />
    <br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
