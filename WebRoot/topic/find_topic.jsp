<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title}--搜索</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
    
    <style type="text/css">
    	body
    	{
    		text-align:center;
    		margin:0px;
    		padding:0px;
    		background-image:url(images/bg.jpg);
			font-family: Arial, Helvetica, Verdana, Sans-serif;
			font-size:12px;
    	}
    	a
    	{
    		color:white;
    		text-decoration:none;
    	}
    	a:hover
    	{
    		color:red;
    	}
    	#f_main
    	{
    		text-align:center;
    		font-size:12px;
    		width:890px;
    	}
    	#top
		{
			margin-top:10px;
			height:20px;
			text-align:center;
		}
		#top a
		{
			font-size:13px;
		}
		#er
		{
			height:35px;
			margin-top:10px;
			background-color:#666666;
			padding:0px;
		}
		#er_yi
		{
			float:left;		
			margin:0px;
			margin-top:10px;
			margin-left:60px;
		}
		#er_er
		{
			float:right;
			margin:0px;
			margin-top:10px;
			margin-right:10px;
		}
		#f_1
		{
			text-align:left;
			width:890px;
			font-size:16px;
			color:white;
			margin-top:6px;
		}
		#f_2
		{
			text-align:center;
			width:890px;
			margin-top:20px;
		}
		#f_3
		{
			text-align:center;
			width:890px;
			margin-top:5px;
			color:white;
		}
		#f_s
		{
			width:880px;
			padding-top:20px;
			text-align:left;
			border:5px groove white;
		}
		#f_s1
		{
			color:white;
			font-size:16px;
			font-family:黑体;
			text-align:center;
		}
		#f_main
		{
			width:880px;
			color:white;
			font-size:16px;
			height:20px;
			text-align:left;
			height:auto;
		}
		.f_res
		{
			width:880px;
			color:white;
			font-size:16px;
			height:20px;
			text-align:left;
			font-family:黑体;
		}
		.f_res1
		{
			width:880px;
			color:white;
			font-size:13px;
			margin-top:3px;
			text-align:left;
		}
		.f_res2
		{
			width:880px;
			color:white;
			font-size:13px;
			text-align:left;
		}
		.find_9
		{
			margin-top:20px;
		}
    </style>

	<script language="javascript">
		function so()
		{
			var s2 = document.all.s.value;
			var r1 = document.all.s1;
			
			var n = 1;
			
			for(var i = 0;i<r1.length;i++)
			{
               if(r1[i].checked)
               {
                 n = r1[i].value;
               }
             }	
			
			if(s2 == "")
			{
				alert("条件不能为空");
			}
			else
			{
				window.location.href = "<%=path%>/topic.do?method=find&t="+n+"&c="+s2;
			}
		}
	</script>
  </head>
  
  <body>
   	<div id="f_main">
   		<div id="top">
	        <a href="topic.do?method=index">首页|</a>
	        <a href="topic.do?method=news">新闻资讯|</a>
	        <a href="topic.do?method=safety">安全公告|</a>
	        <a href="topic.do?method=gettechnology">技术文摘|</a>
	        <a href="fen.do?method=common&t=5">软件下载|</a>
	        <a href="topic.do?method=cartoon">动画教程|</a>
	        <a href="topic.do?method=liter">黑客文学|</a>
	        <a href="bbs.do?method=bbs">论坛社区|</a>
	        <a href="admin/login.jsp">在线投稿|</a>
	        <a href="admin/admin.jsp">图片站</a>
		</div>

        <div id="er">
          <span id="er_yi"><a href="#">友情提醒：建议加入华夏黑客联
                 盟vip会员汇款前联系我们的客服qq确认！</a></span>
          <span id="er_er"><a href="#">培训业务咨询 q q:10033616</a></span>
       </div>
       <jsp:include flush="true" page="../util/main_ad.jsp"></jsp:include>
       <div id="f_1">
       		你的位置:<a href="topic.do?method=index">首页</a> &gt;&gt;  搜索
       </div>
       <div id="f_2">
       		<div><input type="text" id="s" size="35" />&nbsp;
       		<input type="button" value="搜索" style="width:80px;" onClick="so()"/></div>
       		<div id="f_3">
       			<input type="radio" name="s1" checked="checked" value="1"/>文章
       			<input type="radio" name="s1" value="2" />软件
       			<input type="radio" name="s1" value="3" />动画&nbsp;&nbsp;
       			<a href="bbs/search.jsp">搜索论坛</a>
       		</div>
       </div>
       
       <div id="f_s">
       		<c:choose>
       			<c:when test="${ empty requestScope.result}">
       				<div id="f_s1">没有找到你要搜索的内容</div>
       			</c:when>
       			<c:otherwise>
       				<c:forEach var="s" items="${requestScope.result}" varStatus="sta">
						<div class="find_9">
							<div class="f_res">
       						${ sta.index + 1}&nbsp;&nbsp;<a href="topic.do?method=getTopic&id=${ s.topicid}">${ s.title}</a>
	       					</div>
	       					<div class="f_res1">${ s.title}</div>
	       					<div class="f_res2">发布人:&nbsp;${ s.author}&nbsp;&nbsp;&nbsp; 
	       						发布日期:&nbsp;<fmt:formatDate value="${ s.createTime}" pattern="yyyy年MM月dd日"/>
	       					</div>
						</div>
       				</c:forEach>
       			</c:otherwise>
       		</c:choose>
       </div>
   	</div>
   	
   <jsp:include flush="true" page="../util/buttom.jsp"></jsp:include>
  </body>
</html>
