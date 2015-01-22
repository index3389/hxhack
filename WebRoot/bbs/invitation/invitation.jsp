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
    
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${ applicationScope.title} -- 论坛 -- 发帖</title>     
	<meta http-equiv="keywords" content="${ applicationScope.search}">
	
	
	<link type="text/css" rel="stylesheet" href="html/resources/css/ext-all.css" />
    <script type="text/javascript" src="html/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="html/ext-all.js"></script>
    <script type="text/javascript">
		var myform;
		Ext.onReady(function()
		{
		  Ext.QuickTips.init();
		  myform=new Ext.FormPanel(
		  {
			 frame:true,
			 width:580,
			 height:250,
			 autoHeight:true,
			 autoWidth :true,
			 layout:"form",
			 labelAlign:"top",//items中的标签的位置
			 renderTo:'invitation_tie',
			 items:[{
				  xtype:"htmleditor",
				  fieldLabel:'快速回复',
				  width:580,
			 	  height:250,
				  id:"invitation_tie"
			  }]
		  });
		});
	
	</script>
    <script type="text/javascript">
		function test()
		{
			var s = document.getElementById('invitation_tie');
			alert(Ext.getCmp('invitation_tie').getValue());
		}
		
		function i_reset()
		{
			document.all.title1.value = "";
			document.all.content1.value = "";
			document.all.type1.value = "0";
		}
		
		function i_submit()
		{
		
			var s = document.getElementById('invitation_tie');
			var content1 = Ext.getCmp('invitation_tie').getValue();
		
			var title1 = document.all.title1.value;
			var type1 = document.all.type1.value;
			
			var replay = document.getElementById('replay');
			
			var is = 0;
			
			if(replay.checked)
			{
				is = 1;
				
			}

			if(title1 == "")
			{
				alert("标题不能为空！！！");
			}
			else if(type1 == "0")
			{
				alert("请选择你要发表的板块！！！");
			}
			else if(content1.length < ${ applicationScope.f_min})
			{
				alert("帖子最小长度是 " + ${ applicationScope.f_min});
			}
			else if(content1.length > ${ applicationScope.f_max})
			{
				alert("帖子最大长度是 " + ${ applicationScope.f_max});
			}
			else 
			{
				var con = Ext.getCmp('invitation_tie').getValue();
				
				document.all.title.value = title1;
				document.all.content.value = con;
				document.all.type.value = type1;
				document.all.xtype.value = document.all.xtype1.value;
				document.all.replay.value = is;
				
				document.all.fm.submit();
			}
		}
	</script>
	<style type="text/css">
		body
		{
			font-family: Arial, Helvetica, Verdana, Sans-serif;
			text-align:center;
			font-size:13px;
		}
		#invitation_1
		{
			text-align:left;
			padding-left:3px;
		}
		#invitation_tie
		{
			 width:580px;
			 height:250px;
		}
		#invitation_4
		{
			float:left;
			margin-left:60px;	
		}
		#invitation_7
		{
			width:920px;
			float:left;
			margin-buttom:20px;
		}
	</style>
	
  </head>
  
  
 	<c:if test="${ empty sessionScope.user}">
 		<jsp:forward page="../user/login.jsp"></jsp:forward>
 	</c:if>
 	
 	
 	
  <body>
  <jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
    <dir id="invitation_1">
		<table border="1" cellspacing="0" width="91%" bordercolor="6ABCEB">
			<tr>
				<td align="center"><br>用户名</td>
				<td>${ sessionScope.user} &nbsp;&nbsp;<a href="bbs/user/shutdown.jsp">[注销登录]</a></td>
			</tr>
			<tr>
				<td align="center">文章标题</td>
				<td>
					<div>
						<select name="xtype1">
							<option value="1">求助</option>
							<option value="2">原创</option>
							<option value="3">讨论</option>
							<option value="4">分享</option>
							<option value="5">转载</option>
						</select>&nbsp;&nbsp;
						<input type="text" size="45" maxlength="30" name="title1">
						(30个汉字之内)
					</div>
					<div>
						<font color="red">注意</font>：<font color="green">标题请尽量表意明确、清晰，能大概反映帖子内容</font>，<br />
						而不要使用诸如"请帮忙"、"大家看看"、"新手请教"之类含糊不清的标题。
					</div>
				</td>
			</tr>
			<tr>
				<td align="center">选择板块</td>
				<td>
					<select name="type1">
						<option value="0">请选择</option>
						<c:forEach var="l" items="${ requestScope.lap}">
							<option value="${ l.lapId}">${ l.lapName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center">帖子内容</td>
				<td>
					<div id="invitation_tie"></div>
					<input type="checkbox" id="replay">回复方可查看
				</td>
			</tr>
		</table>
    </dir>
    <div id="invitation_7">
	    <form action="bbs.do?method=save_f" method="post" name="fm">
	    	<input type="hidden" name="xtype" value="">
	    	<input type="hidden" name="title" value="">
	    	<input type="hidden" name="type" value="">
	    	<input type="hidden" name="content" value=""> 
	    	<input type="hidden" name="replay" value=""> 
			<div id="invitation_4">
				<a onclick="i_submit()"><img src="images/invi/t_1.jpg" /></a>&nbsp;&nbsp;
				<a onclick="i_reset()"><img src="images/invi/t_2.jpg" /></a>
			</div>
	    </form>
    </div>
    <br /><br /> <br /><br /> 
    <jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
  </body>
</html>
