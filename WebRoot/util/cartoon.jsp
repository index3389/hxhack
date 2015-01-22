<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" />
    
    <title>${ applicationScope.title} -- 下载页面</title>
  
	<meta http-equiv="keywords" content="${ applicationScope.search}">
</HEAD>
<BODY bgColor=black>
<P align=center><FONT color=#ff0000 size=6>解压密码：</FONT><B><FONT color=#ffff00 
size=6>www.hack.com</FONT></B></P>
<TABLE 
style="BORDER-RIGHT: #888 1px solid; BORDER-TOP: #888 1px solid; MARGIN-TOP: 30px; BORDER-LEFT: #888 1px solid; BORDER-BOTTOM: #888 1px solid" 
cellSpacing=5 cellPadding=0 width=300 align=center bgColor=#555555>
  <TBODY>
  <TR>
    <TD align=middle bgColor=#888888 height=100><A href="toon?type=${ param.type}&filename=${  param.filename}"><IMG src="images/down_1.gif" border=0></A> 
  </TD></TR></TBODY></TABLE><BR>
<DIV align=center>
<TABLE id=table1 cellSpacing=0 cellPadding=0 width=615 bgColor=#555555 
borderColorLight=#808080 border=1>
  <TBODY>
  <TR>
    <TD bgColor=#000080 height=26>
      <P align=center><B><FONT color=#ffffff>下载须知</FONT></B></P></TD></TR>
  <TR>
    <TD>
      <P style="LINE-HEIGHT: 150%" align=left><FONT color=#c0c0c0 
      size=2>&nbsp;1. 若您用迅雷或快车等工具下载，请勿超过2个线程，否则您的IP将被防火墙阻塞而导致无法下载。<BR>&nbsp;2. 
      从本站下载的部分黑客攻防类软件可能会被杀毒软件报警和删除，这属于正常现象请您不必担心。<BR>&nbsp;3. 
      请在您的机器上谨慎运行木马与盗号类软件，若没有把握请报名我们的VIP会员学习掌握相关知识。</FONT></P>
      <P align=center><STRONG><FONT color=#00ff00>如果您无法下载请<A 
      href="http://www.baidu.com/s?wd=多功能密码破解软件-软件-黑基网" target=_blank><FONT 
      color=#ff0000>点击这里</FONT></A></FONT></STRONG></P></TD></TR></TBODY></TABLE></DIV>
<P align=center><B><FONT color=#ff0000 
size=2>零起点学黑客网安技术，速速报名华夏黑客VIP会员！</FONT></B></P>
<P align=center><B><FONT color=#c0c0c0 size=2>报名网址：</FONT></B></P>
<P align=center><FONT color=#00ff00><A 
style="COLOR: #ff00ff; TEXT-DECORATION: underline" 
href="http://vip.hackbase.com/" target=_blank><FONT 
color=#ff00ff>http://vip.hackbase.com</FONT></A>&nbsp;&nbsp;<a href="javascript:window.history.go(-1);">返回</a>
</FONT></P>
<P align=center><FONT color=#555555 size=2>(C)2003-2009 
华夏黑客联盟</FONT></P>
</BODY>
</HTML>