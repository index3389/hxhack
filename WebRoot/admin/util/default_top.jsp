<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />

<title>华夏黑客联盟-后台管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="keywords" content="${ applicationScope.search}" />
<style>
body,td,th 
{
	font-family: Tahoma, Verdana, Arial, sans-serif;
	font-size: 12px;
	color: #333333;
}
body 
{
	margin:0px;
	padding:0px;
}
a
 {
	color: #333333;
	text-decoration: none;
}
a:hover 
{
	color: #FF0000;
	text-decoration: none;
}
a:active{
	color: #FF0000;
	text-decoration: none;
}
#menu{
	height:32px;
	margin-top:8px; 
	background-color:6ABCEB;
}
#menu ul{
	margin:auto; width:778px; height:32px;
	list-style-type:none;
	 padding:0px; 
	 margin-top:0px; 
	 margin-bottom:0px;
}
.m_li{
	float:left; 
	width:114px; 
	line-height:32px; 
	 text-align:center;
	  margin-right:-2px; 
	  margin-left:-2px;
}
.m_li a{
	display:block; 
	color:#FFFFFF;
	 width:114px;
}
.m_line{
	float:left; 
	width:1px; 
	height:32px;
	line-height:32px;   /*ff下有效(图片垂直居中)*/
}
.m_line img{
	margin-top:expression(( 32 - this.height ) / 2);   /*ie下有效(图片垂直居中)*/
}
.m_li_a{
	float:left; 
	width:114px;
	 line-height:32px;
	 text-align:center;
	  padding-top:3px; 
	 font-weight:bold;
	background-image:url(images/bb/menu_bg3.jpg); 
	position:relative; 
	height:32px;
	 margin-top:-3px;
	 margin-right:-2px;
	  margin-left:-2px;
}
.m_li_a a{
	display:block; color:#FF0000; width:114px;
}

.smenu{
	width:774px; margin:0px auto 0px auto; padding:0px; list-style-type:none; height:32px;
}
.s_li{
	line-height:32px; width:auto; display:none; height:32px; 
}
.s_li_a{
	line-height:32px; width:auto; display:block; height:32px; 
}
#sss
{
	margin:0px;
}
</style>
<script>
//初始化
var def="1";
function mover(object){
  //主菜单
  var mm=document.getElementById("m_"+object);
  mm.className="m_li_a";
  //初始主菜单隐藏效果
  if(def!=0){
    var mdef=document.getElementById("m_"+def);
    mdef.className="m_li";
  }
  //子菜单
  var ss=document.getElementById("s_"+object);
  ss.style.display="block";
  //初始子菜单隐藏效果
  if(def!=0){
    var sdef=document.getElementById("s_"+def);
    sdef.style.display="none";
  }
}

function mout(object){
  //主菜单
  var mm=document.getElementById("m_"+object);
  mm.className="m_li";
  //初始主菜单
  if(def!=0){
    var mdef=document.getElementById("m_"+def);
    mdef.className="m_li_a";
  }
  //子菜单
  var ss=document.getElementById("s_"+object);
  ss.style.display="none";
  //初始子菜单
  if(def!=0){
    var sdef=document.getElementById("s_"+def);
    sdef.style.display="block";
  }
}
</script>
</head>
<body>
<div id="menu">
	<span id="sss"><img src="images/bb/home_banner_2_01.jpg" width="1000px" height="130px" /></span>
  <ul>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_1" class='m_li_a'><a href="#">黑客首页</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_2" class='m_li' onmouseover='mover(2);' onmouseout='mout(2);'><a href="#">系统设置</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_3" class='m_li' onmouseover='mover(3);' onmouseout='mout(3);'><a href="#">添加文章</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_4" class='m_li' onmouseover='mover(4);' onmouseout='mout(4);'><a href="#">文章管理</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_5" class='m_li' onmouseover='mover(5);' onmouseout='mout(5);'><a href="#">用户管理</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_6" class='m_li' onmouseover='mover(6);' onmouseout='mout(6);'><a href="#">论坛管理</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
    <li id="m_7" class='m_li' onmouseover='mover(7);' onmouseout='mout(7);'><a href="#">其它设置</a></li>
    <li class="m_line"><img src="images/bb/line2.gif" /></li>
  </ul>
</div>
<div style="height:32px; background-color:#F1F1F1;">
   <ul class="smenu">
     <li style="padding-left:29px;" id="s_1" class='s_li_a'>
    		<a href="topic.do?method=index">黑客首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		<a href="admin/admin.jsp">后台首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		<a href="bbs.do?method=bbs">黑客论坛</a>
     </li>
     
     <li style="padding-left:0px;" id="s_2" class='s_li' onmouseover='mover(2);' onmouseout='mout(2);'>
     	<a href="admin/manager/basic.jsp">基本设置</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     	<a href="admin/bbs/bbs_font.jsp">论坛设置</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     </li>
     <li style="padding-left:102px;" id="s_3" class='s_li' onmouseover='mover(3);' onmouseout='mout(3);'>
     		<a href="admin/edit/add_topic.jsp">添加文章</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     		<a href="admin/edit/add_download.jsp">软件下载</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     		<a href="admin/edit/add_cartoon.jsp">添加动画</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     </li>
     <li style="padding-left:102px;" id="s_4" class='s_li' onmouseover='mover(4);' onmouseout='mout(4);'>
     		<a href="admin.do?method=getContent&c=topic">查看文章</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     		<a href="admin.do?method=getContent&c=download">软件下载</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     		<a href="admin.do?method=getContent&c=cartoon">动画管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     		<a href="user.do?method=all_tie">帖子管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     </li>
     <li style="padding-left:104px;" id="s_5" class='s_li' onmouseover='mover(5);' onmouseout='mout(5);'>
    		 <a href="admin.do?method=user">查看用户</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		 <a href="admin/manager/add_user.jsp">新增用户</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		 <a href="admin/manager/add_admin.jsp">添加管理员</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		 <a href="admin/manager/update_pass.jsp">更改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    </li>
    
     <li style="padding-left:207px;" id="s_6" class='s_li' onmouseover='mover(6);' onmouseout='mout(6);'>
    		 <a href="admin/bbs/bbs_basic.jsp">基本设置</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		 <a href="admin/bbs/bbs_admin.jsp">论坛管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		 <a href="admin/bbs/bbs_tie.jsp">帖子管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		  <a href="admin/bbs/integral.jsp">积分管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		 <a href="bbs.do?method=add_lap">板块管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
    		</li>
     <li style="padding-left:396px;" id="s_7" class='s_li' onmouseover='mover(7);' onmouseout='mout(7);'>
     		<a href="admin/DB/backup.jsp">数据库备份</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     		<a href="admin/DB/restore.jsp">还原数据库</a>&nbsp;&nbsp;|&nbsp;&nbsp;
     </li>
   </ul>
</div>
</body>
</html>
