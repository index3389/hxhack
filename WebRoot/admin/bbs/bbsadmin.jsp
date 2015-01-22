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
		.s
		{
			width:40px;
			float:left;
		}
		#del
		{
			text-align:center;
		}
		#fen
		{
			text-align:center;
			width:880px;
			height:18px;
			font-size:14px;
		}
		#fen a
		{
			font-size:14px;
		}
		#fen a:hover
		{
			color:red;
		}
	</style>
	<script type="text/javascript">
		function select_all()
		{
			var all = document.all.user;
			
			var is = document.all.isselect;
			
			var len1 = all.length;
			var len2 = all.length;
			
			if(is.checked == true)
			{
				
				for(var i=0;i<len1;i++)
				{
					if(all[i].checked == false)
					{
						all[i].checked = true;
					}
				}
			}
			else
			{
				for(var i=0;i<len2;i++)
				{
					if(all[i].checked == true)
					{
						all[i].checked = false;
					}
				}
			}
		}
		
		function del_all()
		{
			var all = document.all.user;
			var len1 = all.length;
			
			var all_id = "";
			
			for(var i=0;i<len1;i++)
			{
				if(all[i].checked == true)
				{
					all_id += all[i].value + ",";
				}
			}
			
			window.location.href = "user.do?method=del_tie&id="+all_id;
		}
	</script>
	<script type="text/javascript" src="dwr/interface/check.js"></script>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
    
    <script type="text/javascript">
    	function del_tie(u)
    	{
    		check.del_tie(u,function(e){
    			if(e)
    			{
    				alert("删除成功");
    				window.history.go(0);
    			}
    			else
    			{
    				alert("删除失败！！！");
    			}
    		});
    	}
    	
    	function del_all_tie(u)
    	{
    		var con = window.confirm("此贴下面有其他用户的回帖，如果删除的话其他回帖将会被全部删除,你确认删除吗！！！");
    		if(con == true)
    		{
    			del_tie(u)
    		}
    	}
    	
    	function update_best(u)
    	{	
    		var b = document.getElementById("s_d").value;
    		alert(b +"  -  " +u);
    		check.update_best(b,u,function(e){
    			if(e)
    			{
    				alert("设置成功！！！！");
    			}
    			else
    			{
    				alert("失败！！！");
    			}
    		});
    	}
    </script>
  </head>
  
  <body>
  <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    
    <div id="basic_1">
    	<div id="basic_2">帖子管理</div>
   	
   		<c:choose>
   			<c:when test="${ empty requestScope.list}">当前没有任何发帖</c:when>
   			<c:otherwise>
   				<table border="1" bordercolor="6ABCEB" cellspacing="0" width="850px">
   					<tr>
   						<td>
   							<input type="checkbox" onclick="select_all()" name="isselect">全选
   						</td>
   						<td>编号</td>
   						<td>标题</td>
   						<td width="50px">发帖人</td>
   						<td>所属板块</td>
   						<td>最后回复</td>
   						<td>回复数</td>
   						<td>精华帖子</td>
   						<td width="50px">删除</td>
   					</tr>
   					<c:forEach items="${ requestScope.list}" var="h">
	   					<tr>
	   						<td>
	   							<input type="checkbox" name="user" value="${ h.tieid}">
	   						</td>
	   						<td>${ h.tieid}</td>
	   						<td align="left" width="350px"><a href="bbs.do?method=invitation&id=${ h.tieid}">${ h.title}</a></td>
	   						<td>${ h.hackName}</td>
	   						<td>${ h.lapName}</td>
	   						<td>${ h.lasthui}</td>
	   						<td>${ h.count}</td>
	   						<td>
	   							<select name="best99" onchange="update_best(${ h.tieid})" id="s_d">
	   								<c:choose>
		   								<c:when test="${ h.best == 0}">
		   									<option value="1">是</option>
		   									<option value="0" selected="selected">否</option>
		   								</c:when>
		   								<c:otherwise>
		   									<option value="1" selected="selected">是</option>
		   									<option value="0">否</option>
		   								</c:otherwise>
		   							</c:choose>
	   							</select>
	   						</td>
	   						<td>
	   							<c:choose>
	   								<c:when test="${ h.count > 0}">
	   									<a style="cursor:hand" onclick="del_all_tie(${ h.tieid});">删除</a>
	   								</c:when>
	   								<c:otherwise>
	   									<a style="cursor:hand" onclick="del_tie(${ h.tieid});">删除</a>
	   								</c:otherwise>
	   							</c:choose>
	   						</td>
   						</tr>
   					</c:forEach>
   				</table>
   			</c:otherwise>
   		</c:choose>
    	<div id="del"><button onClick="del_all()">删除所选</button></div>
    	<br />
    	<div id="fen">
    		共&nbsp;<font color="red">${ requestScope.all}</font>&nbsp;篇文章&nbsp;
    		<a href="user.do?method=all_tie&p=1">首页</a>
    		<c:choose>
    			<c:when test="${ requestScope.p <= 1}">上一页</c:when>
    			<c:otherwise><a href="user.do?method=all_tie&p=${ requestScope.p - 1}">上一页</a></c:otherwise>
    		</c:choose>
    		<c:choose>
    			<c:when test="${ requestScope.p>=requestScope.all_page}">下一页</c:when>
    			<c:otherwise><a href="user.do?method=all_tie&p=${ requestScope.p + 1}">下一页</a></c:otherwise>
    		</c:choose>
    		<a href="user.do?method=all_tie&p=${ requestScope.all_page}">尾页</a>&nbsp;
    		共&nbsp;<font color="red">${ requestScope.all_page}页</font>/第<font color="red">${ requestScope.p}</font>&nbsp;页
    	</div>
    </div>
    
    <br /> <br /> <br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
