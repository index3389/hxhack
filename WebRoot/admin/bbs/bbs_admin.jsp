<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${ applicationScope.title} -- 后台管理 -- 论坛管理</title>   
	<meta http-equiv="keywords" content="${ applicationScope.title}">
	
	<style type="text/css">
		body
		{
			font-size:12px;
			text-align:center;
		}
		#a_1
		{
			text-align:center;
			height:300px;
		}
		#a_2
		{
			text-align:center;
			font-size:20px;
			font-family:黑体;
			margin-top:20px;
			color:6ABCEB;
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
			var s = document.all.page.value;
			if(s == "")
			{
				alert("不能为空！！！");
			}
			else if(!st(s))
			{
				alert("请输入一个有效的数字！！！");
			}
			else
			{
				window.location.href = "../../setup.do?method=page&p="+s;
			}
		}
	</script>
	
  </head>
  
  <body>
    <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    
    <div id="a_1">
    	<div id="a_2">论坛管理设置</div><br />
    	<table border="1" cellspacing="0" width="650px"  bordercolor="6ABCEB">
    		<tr>
    			<td align="center">帖子每页显示多少条记录</td>
    			<td align="center">
    				<input type="text" name="page" value="${ applicationScope.page}" />&nbsp;&nbsp;请填写数字(5 -- 30)
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center" height="25px">
    				<a style="cursor:hand;" onclick="sub()">提交所有</a>&nbsp;&nbsp;&nbsp;
    				<a href="javascript:window.close();">关闭本页</a>
    			</td>
    		</tr>
    	</table>
    </div>
    
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
