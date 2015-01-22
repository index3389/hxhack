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
	</style>
	<script type="text/javascript" src="dwr/interface/lap.js"></script>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
	<script type="text/javascript">
		function addObj()
		{
			var t = document.all.title.value;
			var c = document.all.content.value;
			var type = document.all.type.value;
			
			if(t=="" || c == "")
			{
				alert("不能为空！！！");
			}
			else if( type == 0)
			{
				alert("请选择添加版块的类型！！！");
			}
			else
			{
				document.all.fm.submit();
			}
		}
		
		function del_lap(u)
		{
			
			lap.isorhas(u,function(e){
				if(e)
				{
					alert("此版块下面有帖子，无法删除!!");	
				}
				else
				{
					var c = window.confirm("你确定要删除此板块吗！！！");
					if(c == true)
					{
						window.location.href = "lap.do?method=del&id="+u;
					}
				}
			});
		}
	</script>
  </head>
  
  <body>
    <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    <div id="lap_main">
    	<div id="lap_1">
    		<table border="1" cellspacing="0" width="650px"  bordercolor="6ABCEB">
    			<tr>
    				<td width="650px" colspan="2" align="center"><span class="i">新手求助区</span></td>
    			</tr>
    			<tr>
    				<td align="center" width="550px">版块</td>
    				<td align="center" width="100px">编辑</td>
    			</tr>
    			<c:forEach var="l" items="${requestScope.lap1}">
    				<tr>
    					<td>
    						<span class="i">${ l.lapName}</span><br />
    						${ l.content}
    					</td>
    					<td align="center" width="100px">
    						<a href="lap.do?method=edit&id=${ l.lapId}">修改</a>&nbsp;&nbsp;&nbsp;
    						<a style="cursor:hand" onclick="del_lap(${ l.lapId});">删除</a>
    					</td>
    				</tr>
    			</c:forEach>
    		</table>
    	</div>
    	<br /><br />
    	<div id="lap_2">
    		<table border="1" cellspacing="0" width="650px"  bordercolor="6ABCEB">
    			<tr>
    				<td width="650px" colspan="2" align="center"><span class="i">黑客技术讨论区</span></td>
    			</tr>
    			<tr>
    				<td align="center" width="550px">版块</td>
    				<td align="center" width="100px">编辑</td>
    			</tr>
    			<c:forEach var="l2" items="${ requestScope.lap2}">
    				<tr>
    					<td>
    						<span class="i">${ l2.lapName}</span><br />
    						${ l2.content}
    					</td>
    					<td align="center">
	    					<a href="lap.do?method=edit&id=${ l2.lapId}">修改</a>&nbsp;&nbsp;&nbsp;
	    					<a onclick="del_lap(${ l2.lapId});" style="cursor:hand">删除</a>
    					</td>
    				</tr>
    			</c:forEach>
    		</table>
    	</div>
    	
    	<br /><br />   	
    	
    	<div id="lap_3">
    		<div class="i">添加版块</div>
	    		<form action="lap.do?method=add_lap" method="post" name="fm">
	    			<table border="1" cellspacing="0" width="650px"  bordercolor="6ABCEB" >
	    			<tr>
	    				<td width="60px" align="center">标题</td>
	    				<td><input type="text" name="title" maxlength="10" size="22"/></td>
	    				<td>标题请输入10个汉字以内</td>
	    			</tr>
	    			<tr>
	    				<td width="60px" align="center">类别</td>
	    				<td>
	    					<select name="type">
	    						<option value="0">请选择</option>
	    						<option value="1">新手求助区</option>
	    						<option value="2">黑客技术讨论区</option>
	    					</select>
	    				</td>
	    				<td>请选择类别</td>
	    			</tr>
	    			<tr>
	    				<td align="center">简介</td>
	    				<td><input type="text" name="content" maxlength="50" size="65"/></td>
	    				<td>简介请输入50个汉字以内</td>
	    			</tr>
	    			<tr>
	    				<td width="500px" colspan="3" align="center">
	    					<a style="cursor:hand" onClick="addObj()">添加</a>&nbsp;&nbsp;&nbsp;
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
