<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${ applicationScope.title} -- 后台管理 -- 数据库还原</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}">
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    	}
    	
    	#up_1
    	{
    		margin-top:100px;
    		margin-bottom:60px;
    		font-size:18px;
    		font-family:黑体;
    	}
    </style>
    
    <script type="text/javascript">
    	function sub_res()
    	{
    		var f = document.all.p.value;
    		if(f == "")
    		{
    			alert("请选择你要备份的路径！！！");
    		}
    		else if(f.indexOf(".DAT") == -1)
    		{
    			alert("请选择正确的数据源！！！！");
    		}
    		else
    		{
    			document.all.fs.submit();
    		}
    	}
    </script>

  </head>
  
  <body>
   	<jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
   	
   		<div id="up_1">
   			<div id="up_2">
   				<p>请选择你要还原的数据库</p>
   				<p>
   					<form action="admin.do?method=next" method="post" name="fs">
   						
   						<input type="file" size="60" name="p"/>
   					</form>
   				</p>
   				<p><a style="cursor:hand" onclick="sub_res()">下一步</a></p>
   			</div>
   		</div>
   	
   	<jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>