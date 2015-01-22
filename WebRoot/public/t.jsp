<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>华夏黑客联盟---论坛主页</title>	
<meta http-equiv="keywords" content="${ applicationScope.search}" />
	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			background-image:url(images/bbs/bbs_qq.jpg);
			font-family: Arial, Helvetica, Verdana, Sans-serif;
			padding:0px;
			cursor:auto;
			font-size:12px;
		}
		a
		{
			text-decoration:none;
			font-size:12px;
		}
		a:hover
		{
			color:#FF0000;
		}
		#top_1
		{
			width:918px;
			background-image:url(images/bbs/bodybg.jpg);
			font-size:13px;
			border:1px groove #999999;
		}
		#ban
		{
			text-align:center;
		}
		#nave
		{
			text-align:left;
			height:31px;
			margin:0px;
			padding:0px;
			width:920px;
			font-size:16px;
			background-image:url(images/bbs/bodybg.jpg);
			border-left:1px groove #999999;
			border-right:1px groove #999999;
			
		}
		#nave a
		{
			display:block;
			padding-top:5px;
			padding-left:14px;
			padding-right:30px;
			padding-buttom:0px;	
			height:31px;		
			float:left;
			font-size:15px;
		}
		#nave a:hover
		{
			background-color:green;
		}
		#fa
		{
			height:40px;
			width:920px;
			border-bottom:1px double;
			border-top:1px double;
			border-left:1px groove #999999;
			border-right:1px groove #999999;
			background-image:url(images/bbs/bodybg.jpg);
			text-align:left;
		}
		#fa_yi
		{
			float:left;
			padding-top:5px;
			padding-left:20px;
		}
		#fa_er
		{
			font-size:14px;
			padding-top:12px;
			font-family:黑体;
			display:block;
			float:right;
			padding-right:144px;
		}
		.top_9
		{
			font-size:14px;
		}
		#getdate_1
		{
			font-size:16px;
		}
	</style>
    
    <script language="javascript">
		function getdate()
		{
			var array = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];	
			var taday = new Date();
			var d = taday.getDate();
			var m = taday.getMonth()+1;
			var y = taday.getYear();
			var day = taday.getDay();					
			var str = y+"年"+m+"月"+d+"日  "+array[day];
			document.all.getdate_1.innerText = str;
		}
	</script>

	<script type="text/javascript" src="script/tool.js"></script>
</head>

<body onload="getdate()">
	<div id="top_1">
          <table border="0" width="918px" align="center">
          		<tr>
          			<td align="left" width="460">
          				<span id="sion">
							<c:choose>
								<c:when test="${ empty sessionScope.user}">
									<a href="bbs/user/userlogin.jsp">你还未登陆</a>
								</c:when>
								<c:otherwise>
									欢迎你:${ sessionScope.user}  <a href="bbs/user/shutdown.jsp">注销</a>
								</c:otherwise>
							</c:choose>
						</span>
          			</td>
          			<td width="220" align="center">
          				<span id="getdate_1"></span>
          			</td>
          			<td width="60"><a href="topic.do?method=index">黑客首页</a></td>
          			<td width="60"><a href="bbs/user/mustlook.jsp">免费注册</a></td>
          			<td width="60"><a style="cursor:hand" onClick="zhuye(this,window.location)">设为首页</a></td>
          			<td width="60"><a style="cursor:hand" onClick="AddFavorite(window.location,document.title)">加入收藏</a></td>
          		</tr>
          </table>
	</div>
	
	
	<div id="ban"><img src="images/bbs/ad5.jpg" width="920px" /></div>
	<div id="nave">
    	<a href="bbs.do?method=bbs">论坛首页</a>
        <a href="bbs/search.jsp">搜索</a>
        <a href="bbs.do?method=best">精华帖子</a>
        <a href="#">在线投稿</a>
        <a href="user.do?method=img">我的信息</a>
        <a href="#">新手求助</a>
    </div>
    <div id="fa">
		<span id="fa_yi"><a href="bbs.do?method=lap"><img src="images/bbs/fa.jpg" border="0"/></a></span>
		<span id="fa_er">
			你可以<a href="bbs/user/mustlook.jsp"><span class="top_9">注册</span></a>一个帐号，
			并以此<a href="bbs/user/userlogin.jsp"><span class="top_9">登录</span></a>，以浏览更多精彩内容，并随时发布观点，与大家交流。
		</span>
	</div>
    
</body>
</html>
