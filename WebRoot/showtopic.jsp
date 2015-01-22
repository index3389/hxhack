<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title> ${ applicationScope.title}-- 显示成功</title>
    <meta http-equiv="keywords" content="${ applicationScope.title}" />
	
	<style type="text/css">
		body
		{
			text-align:center;
			font-family: Arial, Helvetica, Verdana, Sans-serif;
		}
		#main1
		{
			text-align:center;
			width:920px;
			height:auto;
			padding-top:20px;
			padding-buttom:30px;
		}
		#yi1
		{
			width:200px;
			height:580px;
			text-align:center;
			border-left:3px double blue;
			float:left;
		}
		#er1
		{
			width:500px;
			height:580px;
			text-align:center;
			border:1px double red;
			float:left;
		}
		#san1
		{
			width:190px;
			height:580px;
			text-align:center;
			border:1px double yellow;
			float:left;
		}
		#fen
		{
			text-align:center;
			width:880px;
			height:20px;
			border:1px double yellow;
		}
		#mei
		{
			padding-left:220px;
			width:880px;
			height:auto;
			padding-top:20px;
			padding-buttom:20px;
			border-buttom:2px;
			text-align:left;
		}
	</style>
	<script type="text/javascript">
		
	</script>

  </head>
  
  <body>
    	<jsp:include flush="true" page="util/maintop.jsp"></jsp:include>
    	<div id="main1">
    		<div id="yi1">
    			<div class="im"><img src="images/006.jpg" width="180px" height="100px"/></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="100px"/></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="100px"/></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="100px" /></div>
    			<br />
    			<div class="im"><img src="images/006.jpg" width="180px" height="100px" /></div>
    		</div>
    		<div id="er1">
    			
    		</div>
    		<div id="san1">
    			
    		</div>
    	</div>
    	<div id="fen">
    	
    	
    	</div>
    	<div id="mei">
    		<b><font color="#FFFFFF">精品技术文献图片</font></b>
    		<br /><br />
    		<img src="images/nopic.gif" />
    		<br /><b>没有任何图片文章</b>
    		<br /><br />
    	</div>
    	<jsp:include flush="true" page="util/buttom.jsp"></jsp:include>
  </body>
</html>
