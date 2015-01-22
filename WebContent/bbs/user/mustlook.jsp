<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

	<title>华夏黑客联盟---注册必看</title>	
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
	<style type="text/css">
		body
		{
			text-align:center;
			margin:0px;
			padding:0px;
			cursor:auto;
			background-image:url(images/bbs/b8.jpg);
		}
		a
		{
			text-decoration:none;
		}
		a:hover
		{
			color:#FF0000;
		}
	
		#san
		{
			text-align:left;
			margin-left:0px;
			margin-top:0px;
			padding-top:14px;
			padding-left:2px;
			font-family:黑体;
			font-size:20px;
			width:920px;
			height:40px;
			background-color:#999999;
		}
		#si
		{
			width:900px;
			padding-left:0px;
			margin-top:50px;		
		}	padding-right:144px;
		
		#maine
		{
			width:920px;
			overflow:hidden;
			background-image:url(images/bbs/b8.jpg);
		}
		#content
		{
			text-align:left;
			margin:0px;
			padding:1px;
			width:920px;
			font-size:14px;
			font-family:黑体;
			height:300px;
			color:red;
		}
	</style>
	
	<script type="text/javascript">
		function tongyi()
		{
			window.location.href = "register.jsp";
		}
		
		function butongyi()
		{
			alert("你不同意呢");
			window.history.go(-1);
		}
	</script>

</head>

<body >
<jsp:include flush="true" page="../../public/t.jsp"></jsp:include>
	
	<div id="maine">
    	<div id="san">
    		★●华夏黑客联盟论坛●★》》注册必看
    	</div>
		<div id="content">
			<br /><br />
			<p>一个论坛的成功与否，不在于会员的多少，也不在于有
			多大的服务器。对于论坛的创办者和所有热爱华夏黑客
			联盟的人来说，最重要的是在论坛里大家是否开心，是否能互相帮
			助，互相关怀。一个好的论坛，就是一个开心幸福的网上大家庭。</p>
			<p>注意：没有热情的，不团结的，不爱国的，不拥护华夏黑客联盟团队的，
			不支持华夏黑客联盟发展的，准备只登录一次的，请不要注册！因为我们会定期清理这些人！</p>
			<p>当您申请用户时，表示您已经同意遵守本规章。</p>
			<p>请认真填写邮箱，以便接受论坛发送给您的重要通知</p>
			<p>请您记住我们华夏黑客联盟永久域名：http://www.hxhack.com</p>
			<p>注册成功后一定要把每个版块的版规全部看一次，否则很容易犯错误被封帐号。</p>
			<p align="center">
				<input type="button" value="同意" onclick="tongyi()" style="width:80px;"/>
			<input type="button" value="不同意" onclick="butongyi()" style="width:70px;"/>
			</p>
			<hr width="90%" color="#333333"/>
		</div>
			
	</div>
	<jsp:include flush="true" page="../../public/b.jsp"></jsp:include>
</body>
</html>
