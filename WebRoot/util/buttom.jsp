<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="content-type" content="text/html;charset=gb2312">
    <base href="<%=basePath%>">
    
    <title>ss</title>
    
    <style type=text/css>
	    body 
	    {
			margin:0px;
			text-align:center;
			background-color: #999999;
		}
		#ss
		{
			text-align:center;
		}
		.pic 
		{
			border-right: #999999 1px solid;
			border-top: #999999 1px solid; 
			border-left: #999999 1px solid; 
			border-bottom: #999999 1px solid;
		}
	
		.biaozhun 
		{
			font-size: 12px;
			 color: #cccccc; 
			 font-family: "宋体";
		}
	
		.xinwei 
		{
			font-size: 12px; 
			color: #cccccc; 
			line-height: 16px;
		    font-family: "宋体";
		}
		.s_text
		 {
			border-right: 1px solid;
			 border-top: 1px solid; 
			 vertical-align: middle; 
			 border-left: 1px solid; 
			 border-bottom: 1px solid; 
			 background-color: #74777c;
		}

		.search 
		{
			font-size: 12px; 
			vertical-align: middle;
			color: #c2c5cc; 
			font-family: "宋体"; 
			letter-spacing: 1px;
		}
		.newslist
		 {
			font-size: 12px; 
			color: #cccccc; 
			line-height: 12px;
			text-decoration: none;
		}
		.head 
		{
			font-size: 12px; 
			color: #cccccc; 
			font-family: "宋体";
		}
		#aa a:link
		 {
			font-size: 12px; 
			color: #cccccc; 
			text-decoration: none;
		}
		#aa a:visited
		 {
			font-size: 12px; 
			color: #cccccc; 
			text-decoration: none;
		}
		#aa a:hover 
		{
			font-size: 12px; 
			color: red;
		}
		#aa td 
		{
			font-weight: normal;
			 font-size: 9pt; 
			 line-height: 170%; 
			 font-family: "宋体";
			 text-align:center;
		}

		#aa td
		 {
			color: #cccccc;
			text-align:center;
		}
		#aa th 
		{
			color: #cccccc;
			text-align:center;
		}

</style>

</head>
  
  <body>
    <div id="aa">
    <TABLE height=135 cellSpacing=0 cellPadding=0 width=900 align=center 
background="images/util/bg.jpg" border=0>
  <TBODY>
  <TR height=20 background="images/util/bg.jpg">
    <TD></TD></TR>
  <TR background="images/util/bg.jpg">
    <TD align=left>
      <TABLE cellSpacing=5 width="100%">
        <TBODY>
        <TR class=tdbg align="center">
          <TD width=88><A
            href="#" ><IMG height=31 
            src="images/util/1.gif" width=88 
            border=0></A></TD>
          <TD width=88><A 
            title="网站名称：深圳网吧联盟&#13;&#10;网站地址：http://www.szwblm.com&#13;&#10;网站简介：" 
            href="#" ><IMG height=31 
            src="images/util/2.gif" width=88 
            border=0></A></TD>
          <TD width=88><A 
            title="网站名称：红色黑客联盟&#13;&#10;网站地址：http://www.7747.net&#13;&#10;网站简介：红色黑客联盟" 
            href="#" target=_blank><IMG height=31 
            src="images/util/3.gif" width=88 
            border=0></A></TD>
          <TD width=88><A 
            title="网站名称：bios之家&#13;&#10;网站地址：http://www.bios.net.cn&#13;&#10;网站简介：bios之家" 
            href="#" target=_blank><IMG height=31 
            src="images/util/4.gif" width=88 
            border=0></A></TD>
          <TD width=88><A 
            title="网站名称：霏凡论坛&#13;&#10;网站地址：http://bbs.crsky.com&#13;&#10;网站简介：霏凡论坛" 
            href="#" target=_blank><IMG height=31 
            src="images/util/5.gif" width=88 
            border=0></A></TD>
          <TD width=88><A 
            title="网站名称：中华隐士黑客联盟&#13;&#10;网站地址：http://hack86.com/index.html&#13;&#10;网站简介：中华隐士黑客联盟" 
            href="#" target=_blank><IMG height=31 
            src="images/util/6.gif" width=88 
            border=0></A></TD>
          <TD width=88><A 
            title="网站名称：黑客动画吧&#13;&#10;网站地址：http://www.hack58.com/&#13;&#10;网站简介：黑客动画吧" 
            href="#" target=_blank><IMG height=31 
            src="images/util/7.gif" width=88 
            border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD></TR>
        <TR class=tdbg align=center>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank><IMG height=31 alt=点击申请 
            src="images/util/nologo.gif" 
            width=88 border=0></A></TD></TR>
        <TR class=tdbg align=center></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD align=left 
    background="images/util/bg.jpg" 
    bgColor=#242424 height=18>
      <P align=left>
      <TABLE cellSpacing=5 width="100%">
        <TBODY>
        <TR class=tdbg align=center>
          <TD width=88><A 
            title="网站名称：华夏黑盟&#13;&#10;网站地址：http://www.hxhack.com&#13;&#10;网站简介：中国最大的黑客门户网站！&nbsp;-&nbsp;为普及中国网络安全做贡献！" 
            href="#" target=_blank>华夏黑盟</A></TD>
          <TD width=88><A 
            title="网站名称：华夏黑客论坛&#13;&#10;网站地址：http://www.hxhack.com/bbs&#13;&#10;网站简介：中国最大的黑客论坛！&nbsp;-&nbsp;为普及中国网络安全做贡献！" 
            href="#" target=_blank>华夏黑客论坛</A></TD>
          <TD width=88><A 
            title="网站名称：黑客榜中榜&#13;&#10;网站地址：http://www.cn-hack.cn&#13;&#10;网站简介：" 
            href="#" target=_blank>黑客榜中榜</A></TD>
          <TD width=88><A 
            title="网站名称：百度搜索引擎&#13;&#10;网站地址：http://www.baidu.com/s?wd=%BB%AA%CF%C4%BA%DA%BF%CD%C1%AA%C3%CB&amp;cl=3&#13;&#10;网站简介：百度搜索引擎" 
            href="#" 
            target=_blank>百度搜索引擎</A></TD>
          <TD width=88><A 
            title="网站名称：IT世界武汉站&#13;&#10;网站地址：http://www.it.com.cn/market/wh/&#13;&#10;网站简介：IT世界武汉站" 
            href="#" target=_blank>IT世界武汉站</A></TD>
          <TD width=88><A 
            title="网站名称：hao123网址之家&#13;&#10;网站地址：http://www.hao123.com&#13;&#10;网站简介：hao123网址之家" 
            href="#" target=_blank>hao123网址之家</A></TD>
          <TD width=88><A 
            title="网站名称：黑鹰安全网&#13;&#10;网站地址：http://www.3800hk.com&#13;&#10;网站简介：中国最大的网络安全资讯门户" 
            href="#" target=_blank>黑鹰安全网</A></TD>
          <TD width=88><A 
            title="网站名称：黑客基地&#13;&#10;网站地址：http://www.hackbase.com/&#13;&#10;网站简介：黑客基地" 
            href="#" target=_blank>黑客基地</A></TD>
          <TD width=88><A 
            title="网站名称：谷歌搜索引擎&#13;&#10;网站地址：http://www.google.cn&#13;&#10;网站简介：谷歌搜索引擎" 
            href="#" target=_blank>谷歌搜索引擎</A></TD></TR>
        <TR class=tdbg align="center">
          <TD width=88><A 
            title="网站名称：安天365&#13;&#10;网站地址：http://www.antian365.com&#13;&#10;网站简介：安天365&nbsp;&nbsp;信息安全专业研究" 
            href="#" target=_blank>安天365</A></TD>
          <TD width=88><A 
            title="网站名称：夜鹰黑客基地&#13;&#10;网站地址：http://www.yyhacker.com/index.html&#13;&#10;网站简介：夜鹰黑客基地网站是从事网络安全行业的组织" 
            href="#" 
target=_blank>夜鹰黑客基地</A></TD>
          <TD width=88><A 
            title="网站名称：黑客风云&#13;&#10;网站地址：http://www.05112.com/&#13;&#10;网站简介：黑客风云" 
            href="#" target=_blank>黑客风云</A></TD>
          <TD width=88><A 
            title="网站名称：百度网址大全&#13;&#10;网站地址：http://site.baidu.com/&#13;&#10;网站简介：百度网址大全&nbsp;--&nbsp;简单可依赖的上网导航" 
            href="#" target=_blank>百度网址大全</A></TD>
          <TD width=88><A 
            title="网站名称：电脑俱乐部论坛&#13;&#10;网站地址：http://www.cfanclub.net/&#13;&#10;网站简介：电脑爱好者俱乐部" 
            href="#" target=_blank>电脑俱乐部论坛</A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank>点击申请</A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank>点击申请</A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank>点击申请</A></TD>
          <TD width=88><A class=LinkFriendSite 
            href="#" 
            target=_blank>点击申请</A></TD></TR>
        <TR class=tdbg align=center></TR></TBODY></TABLE></P></TD></TR>
  <TR>
    <TD align=left 
    background="images/util/bg.jpg" 
    bgColor=#242424 height=18>
      <P align=left><FONT color=#808080></FONT>&nbsp;</P></TD></TR>
  <TR>
    <TD height=41>
      <TABLE 
      style="BORDER-RIGHT: 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: 1px solid; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: 1px solid; PADDING-TOP: 2px; BORDER-BOTTOM: 1px solid" 
      borderColor=#000000 height=118 cellSpacing=0 cellPadding=0 width=894 
      align=center bgColor=#343b43 border=0>
        <TBODY>
        <TR>
          <TD height=116>
            <DIV align="center"><SPAN class=xinwei>
            <SPAN class=style3><BR></SPAN><SPAN 
            class=xinwei>设为首页 | <A href="#" 
            target=_blank>软件发布</A> | <A 
            href="#">联系方式</A> | <A 
            href="#" target=_blank>友情链接</A> | <A 
            href="#" target=_blank>关于我们</A> |<A 
            href="#"> 本站声明</A> | <A 
            href="#">免责条款</A> | <A 
            href="#" >网站留言</A><BR>Copyright &copy; 2004-2009 <A 
            href="#" 
            target=_blank>http://www.hxhack.com/</A> <BR>版本:华夏黑客联盟 
            Email:${ applicationScope.email}<BR>中国·广东　请使用IE6.0版本, 
            分辩率1024×768进行浏览<BR>版权所有 任意抄袭 
            注意完整<BR>闽ICP备08104199号<BR>
            </SPAN></SPAN></TD></TR></TBODY>
            </TABLE></TD></TBODY></TABLE></TR>  
            </div>
  </body>
</html>
