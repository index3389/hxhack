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
    
    <title>${ applicationScope.title} -- 后台管理 -- 论坛积分设置</title>
       
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
			
			var f = document.all.f.value;
			var h = document.all.h.value;
			var z = document.all.z.value;
			if(f == "" || h == "" || z == "")
			{
				alert("不能为空！！！");
			}
			else if(st(f) && st(h) && st(z))
			{
				document.all.fm.submit();
			}
			else
			{
				alert("必须输入数字！！！");
			}
			
		}
		
	</script>

  </head>
  
  <body>
   <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    <br />
    <br />
    <center>
    	<font size="5" face="黑体" color="6ABCEB">论坛积分设置</font> 
    </center><br />
    <div id="basic_main">
    	<form action="setup.do?method=integral" method="post" name="fm">
	    		<table border="1" bordercolor="6ABCEB" cellspacing="0" width="75%">
	    		<tr>
	    			<td width="220px" align="right">发表新帖时送多少分</td>
	    			<td width="220px" align="center">
	    				<input type="type" name="f" value="2" size="22">
	    			</td>
	    			
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">回帖送多少分</td>
	    			<td width="220px" align="center">
	    				<input type="type" name="h" value="1" size="22">
	    			</td>
	    		</tr>
	    		<tr>
	    			<td width="220px" align="right">注册时送多少分</td>
	    			<td width="220px" align="center">
	    				<input type="type" name="z" value="0" size="22">
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
