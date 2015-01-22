<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>top</title>
    
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
		
		#main
		{
			text-align:center;
			width:900px;
			font-size:12px;
		}
		
		#top
		{
			margin-top:10px;
			height:20px;
			text-align:center;
			font-weight:bold;
		}
		
		a
		{
			text-decoration:none;
			color:#FFFFFF;
			font-size:13px;
			font-family:黑体;
		}
		a:hover
		{
			color:#FF0000;
		}
		
		#er
		{
			height:35px;
			margin-top:10px;
			background-color:#666666;
			padding:0px;
			width:900px;
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
		#san
		{
			text-align:center;
			width:920px;
			font-size:12px;
		}
		#san_yi
		{
			float:left;
		}
		#san_er
		{
			float:left;
			margin-left:5px;
			margin-top:10px;
		}
		.san_san
		{
			padding-top:5px;
			padding-buttom:3px;
		}
		#si_yi
		{
			float:left;
		}
		#si_er
		{
			float:left;
			margin-left:5px;
		}
   		.fo
		{
			font-size:12px;
			color:red;
			margin-left:5px;
		}
   	</style>

  </head>
  
  <body>
   	
   	<div id="main">

	<div id="top">
        <a href="topic.do?method=index">首页|</a>
        <a href="topic.do?method=news">新闻资讯|</a>
        <a href="topic.do?method=safety">安全公告|</a>
        <a href="topic.do?method=gettechnology">技术文摘|</a>
        <a href="fen.do?method=common&t=5">软件下载|</a>
        <a href="topic.do?method=cartoon">动画教程|</a>
        <a href="topic.do?method=liter">黑客文学|</a>
        <a href="bbs.do?method=bbs">论坛社区|</a>
        <a href="admin/admin.jsp">在线投稿|</a>
        <a href="admin/admin_login.jsp">管理员</a>
	</div>

        <div id="er">
          <span id="er_yi"><a href="#">友情提醒：建议加入华夏黑客联
                 盟vip会员汇款前联系我们的客服qq确认！</a></span>
          <span id="er_er"><a href="#">培训业务咨询 q q:10033616</a></span>
       </div>
        
        <div id="san">
          		<div id="san_yi"><img src="images/left.jpg" /></div>
                <div id="san_er">
                    <div class="san_san">
                    	<span class="fo">文章</span>
                        <a href="topic.do?method=topic&e=1">|入侵攻击|</a>
                        <a href="topic.do?method=topic&e=2">|安全防御|</a>
                        <a href="topic.do?method=topic&e=3">|操作系统|</a>
                        <a href="topic.do?method=topic&e=4">|建站技术|</a>
                        <a href="topic.do?method=topic&e=5">|脚本编程|</a>
                        <a href="topic.do?method=topic&e=6">|路由交换|</a>
                        <a href="topic.do?method=topic&e=7">|灾难恢复|</a>
                        <a href="topic.do?method=news">|新闻资讯|</a>
                        <a href="topic.do?method=safety">|安全公告</a>
                    </div>
                    <div class="san_san">
                    	<span class="fo">下载</span>
                        <a href="topic.do?method=download&e=1">|漏洞扫描|</a>
                        <a href="topic.do?method=download&e=2">|加密破解|</a>
                        <a href="topic.do?method=download&e=3">|入侵攻击|</a>
                        <a href="topic.do?method=download&e=4">|后门木马|</a>
                        <a href="topic.do?method=download&e=5">|溢出程序|</a>
                        <a href="topic.do?method=download&e=6">|综合工具|</a>
                        <a href="topic.do?method=download&e=7">|安全防护|</a>
                        <a href="topic.do?method=download&e=8">|原创发布|</a>
                        <a href="topic.do?method=cartoon">|动画教程</a>
                    </div>
                    <div class="san_san">
                    	<span class="fo">论坛</span>
                        <a href="#">|最新帖子|</a>
                        <a href="#">|热门帖子|</a>
                        <a href="#">|精华帖子|</a>
                        <a href="#">|爆笑贴图|</a>
                        <a href="#">|美女两性|</a>
                        <a href="#">|会员照片|</a>
                        <a href="#">|在线服务|</a>
                        <a href="#">|站长博客|</a>
                        <a href="#">|网站首页</a>
                    </div>
         		 </div>
        </div>
        
        <div id="si">       
        	<div id="si_yi">  			
     			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  
				width="664" height="93">
				<param name="movie" value="images/main.swf">
				</object>     
            </div>
            
            <div id="si_er">
           	 <img src="images/vip.jpg" />
            </div>
        </div>
   	
  </body>
</html>
