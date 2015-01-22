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
    
    <title>${ applicationScope.title} -- 后台管理 -- 添加用户</title>   
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
			var all3 = document.all.user;
			
			var is = document.all.isselect;
			
			var len1 = all3.length;
			var len2 = all3.length;
			
			if(is.checked == true)
			{
				
				for(var i=0;i<len1;i++)
				{
					if(all3[i].checked == false)
					{
						all3[i].checked = true;
					}
				}
			}
			else
			{
				for(var i=0;i<len2;i++)
				{
					if(all3[i].checked == true)
					{
						all3[i].checked = false;
					}
				}
			}
		}
		
		function del_all2()
		{
			var all3 = document.all.user;
			
			var len1 = all3.length;
			
			var len = 0;
			
			var all_id = "";
			
			for(var i=0;i<len1;i++)
			{
				if(all3[i].checked == true)
				{
					len += 1;
					all_id += all3[i].value + ",";
				}
			}
			
			if(len > 0)
			{
				window.location.href = "user.do?method=del_user&id="+all_id;
			}
			else
			{
				alert("请选择至少一个以上的用户，在进行删除操作！！！");
			}
			
		}
	</script>
	
	<script type="text/javascript" src="dwr/interface/check.js"></script>
    <script type="text/javascript" src="dwr/engine.js"></script>
    <script type="text/javascript" src="dwr/util.js"></script>
    <script type="text/javascript">
    	function del_user(u)
    	{
    		check.del_user(u,function(e){
    			if(e)
    			{
    				alert("删除成功！！！");
    				window.history.go(0);
    			}
    		});
    	}
    </script>
	
	
  </head>
  
  <body>
  <jsp:include flush="true" page="../util/default_top.jsp"></jsp:include>
    
    <div id="basic_1">
    	<div id="basic_2">会员管理</div>
   	
   		<c:choose>
   			<c:when test="${ empty requestScope.hack}"><br />当前没有任何用户<br /></c:when>
   			<c:otherwise>
   				<table border="1" bordercolor="6ABCEB" cellspacing="0">
   					<tr>
   						<td>
   							<input type="checkbox" onclick="select_all()" name="isselect">全选
   						</td>
   						<td>编号</td>
   						<td>用户名</td>
   						<td>邮箱</td>
   						<td>注册时间</td>
   						<td>积分</td>
   						<td>注册地址</td>
   						<td>发帖数</td>
   						<td>回帖数</td>
   						<td>删除</td>
   					</tr>
   					<c:forEach items="${ requestScope.hack}" var="h">
	   					<tr>
	   						<td>
	   							<c:choose>
	   								<c:when test="${ h.fatiecount > 0}"></c:when>
	   								<c:when test="${ h.huitiecount > 0}"></c:when>
	   								<c:otherwise>
	   									<input type="checkbox" name="user" value="${ h.userId}">
	   								</c:otherwise>
	   							</c:choose>
	   						</td>
	   						<td>${ h.userId}</td>
	   						<td>${ h.hackName}</td>
	   						<td>${ h.hackMail}</td>
	   						<td>${ h.createTime}</td>
	   						<td>${ h.integral}</td>
	   						<td>${ h.hackip}</td>
	   						<td>${ h.fatiecount}</td>
	   						<td>${ h.huitiecount}</td>
	   						<td width="50px">
	   							<c:choose>
	   								<c:when test="${ h.fatiecount > 0 or h.huitiecount > 0}"><span style="text-decoration: line-through;">删除</span></c:when>
	   								<c:otherwise>
	   									<a style="cursor:hand" onclick="del_user(${ h.userId});"><font color="red">删除</font></a>
	   								</c:otherwise>
	   							</c:choose>
	   						</td>
   						</tr>
   					</c:forEach>
   				</table>
   			</c:otherwise>
   		</c:choose>
    	<div id="del"><button onClick="del_all2()">删除所选</button></div>
    	<div id="fen">
    		共&nbsp;<font color="red">${ requestScope.all}</font>&nbsp;篇文章&nbsp;
    		<a href="admin.do?method=user&p=1">首页</a>
    		<c:choose>
    			<c:when test="${ requestScope.p <= 1}">上一页</c:when>
    			<c:otherwise><a href="admin.do?method=user&p=${ requestScope.p - 1}">上一页</a></c:otherwise>
    		</c:choose>
    		<c:choose>
    			<c:when test="${ requestScope.p>=requestScope.all_page}">下一页</c:when>
    			<c:otherwise><a href="admin.do?method=user&p=${ requestScope.p + 1}">下一页</a></c:otherwise>
    		</c:choose>
    		<a href="admin.do?method=user&p=${ requestScope.all_page}">尾页</a>&nbsp;
    		共&nbsp;<font color="red">${ requestScope.all_page}页</font>/第<font color="red">${ requestScope.p}</font>&nbsp;页
    	</div>
    </div>
    
    <br /> <br /> <br />
    <jsp:include flush="true" page="../util/default_bottom.jsp"></jsp:include>
  </body>
</html>
