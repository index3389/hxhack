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
    
    <title>${ applicationScope.title} -- 后台管理 -- 帖子管理</title>
       
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
	
		function IsEmpty(fData)
		{
		    return ((fData==null) || (fData.length==0) )
		} 
		
		function st(fData)
		{
		    if (IsEmpty(fData))
		        return true
		    if ((isNaN(fData)) || (fData.indexOf(".")!=-1) || (fData.indexOf("-")!=-1))
		        return false    
		    
		    return true    
		}
	
		function sub()
		{
			
			var f_max = document.all.f_max.value;
			var f_min = document.all.f_min.value;
			var h_max = document.all.h_max.value;
			var h_min = document.all.h_min.value;
			var time = document.all.time.value;
			
			if(f_max==""||f_min==""||h_max==""||h_min==""||time=="")
			{
				alert("不能为空！！！");
			}
			else if(! (st(f_max) && st(f_min) && st(h_max) && st(h_min) && st(time)))
			{
				alert("请填写正确的数字！！！");
			}
			else if( parseInt(f_max) < parseInt(f_min) )
			{
				alert("发帖的最大长度必须大于最小长度！！！");
			}
			else if(parseInt(h_max) < parseInt(h_min) )
			{
				alert("回帖的最大长度必须大于最小长度！！！");
			}
			else if(parseInt(time) < 5)
			{
				alert("时间必须大于5秒！！！");
			}
			else
			{
				document.all.fm.submit();
			}
		}
	</script>

  </head>
  
  <body>
   <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    <br />
    <br />
    <center>
    	<font size="5" face="黑体" color="6ABCEB">帖子基本设置</font> 
    </center><br />
    <div id="basic_main">
    	<form action="setup.do?method=length" method="post" name="fm">
	    		<table border="1" bordercolor="6ABCEB" cellspacing="0" width="75%">
	    		<tr>
	    			<td width="220px" align="right">发帖最大字数</td>
	    			<td width="220px" align="center">
	    				<input type="" name="f_max" size="25" value="${ applicationScope.f_max}"/>
	    			</td>
	    			<td width="220px" align="center">
	    				请填写数字(10-5000)
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">发帖最小字数</td>
	    			<td width="220px" align="center">
	    				<input type="" name="f_min" size="25" value="${ applicationScope.f_min}"/>
	    			</td>
	    			<td width="220px" align="center">
	    				请填写数字(10-5000)
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">回帖最大字数</td>
	    			<td width="220px" align="center">
	    				<input type="" name="h_max" size="25" value="${ applicationScope.h_max}" />
	    			</td>
	    			<td width="220px" align="center">
	    				请填写数字(10-5000)
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">回帖最小字数</td>
	    			<td width="220px" align="center">
	    				<input type="" name="h_min" size="25" value="${ applicationScope.f_min}" />
	    			</td>
	    			<td width="220px" align="center">
	    				请填写数字(10-5000)
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">两次发帖最小时间间隔</td>
	    			<td width="220px" align="center">
	    				<input type="" name="time" size="25" value="${ applicationScope.time}" />
	    			</td>
	    			<td width="220px" align="center">
	    				请填写数字(单位:秒)
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
