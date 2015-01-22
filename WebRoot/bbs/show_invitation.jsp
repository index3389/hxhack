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
    
    <title>${ applicationScope.title} -- 论坛 --帖子正文</title> 
       
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
			 width:760,
			 height:250,
			 autoHeight:true,
			 autoWidth :true,
			 layout:"form",
			 labelAlign:"top",//items中的标签的位置
			 renderTo:'invitation_tie1',
			 items:[{
				  xtype:"htmleditor",
				  width:740,
			 	  height:250,
			 	  fieldLabel:'快速回复',
				  id:"invitation_tie1"
			  }]
		  });
		});
	</script>
	
	<style type="text/css">
		body
		{
			text-align:center;
		}
		#show_1
		{
			width:920px;
			text-align:center;
			heigth:auto;
		}
		 #show_2
		 {
		 	width:920px;
		 	text-align:center;
		 }
		 #show_3
		 {
		 	width:200px;
		 	text-align:right;
		 	float:left;
		 }
		 #show_font
		 {
		 	color:green;
		 	font-size:16px;
		 }
		 #show_title
		 {
		 	text-align:left;
		 	float:left;
		 	width:720px;
		 	font-size:20px;
		 	font-family:黑体;
		 }
		 #show_title a
		 {
		 	margin-top:18px;
		 	font-size:14px;
		 	font-family:黑体;
		 }
		 #show_4
		 {
		 	width:920px;
		 	text-align:right;
		 }
		 .all
		 {
		 	width:920px;
		 	text-align:right;
		 }
		 .show_6
		 {
		 	height:50px;
		 	text-align:center;
		 	padding-top:15px;
		 	font-size:14px;
		 }
		 #show_7
		 {
		 	text-align:center;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 }
		 #show_8
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-left:7px;
		 	margin-bottom:2px;
		 }
		 #show_9
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 }
		 #show_10
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 }
		 #show_11
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	font-size:14px;
		 	margin-left:7px;
		 }
		 #show_12
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 }
		 #show_13
		 {
		 	text-align:center;
		 	width:755px;
		 	border:2px double red;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 }
		  #show_14
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 	color:blue;
		 }
		 .show_15
		 {
		 	width:755px;
		 	text-align:left;
		 	paddint-left:10px;
		 	height:50px;
		 	margin-top:0px;
		 	border-bottom:1px solid green;
		 	padding-top:15px;
		 	margin-bottom:5px;
		 }
		  .show_16
		 {
		 	width:755px;
		 	text-align:left;
		 	paddint-left:3px;
		 	paddint-top:0px;
		 	margin-top:0px;
		 	height:322px;
		 	
		 } 
		 
		 .show_56
		 {
		 	height:50px;
		 	text-align:center;
		 	padding-top:15px;
		 	font-size:14px;
		 }
		 .show_57
		 {
		 	text-align:center;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 }
		 .show_58
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-left:7px;
		 	margin-bottom:2px;
		 }
		 .show_59
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 }
		 .show_510
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 }
		 .show_511
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	font-size:14px;
		 	margin-left:7px;
		 }
		 .show_512
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 }
		 .show_513
		 {
		 	text-align:center;
		 	width:755px;
		 	border:2px double red;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 }
		 .show_514
		 {
		 	text-align:left;
		 	margin-top:2px;
		 	margin-bottom:2px;
		 	margin-left:7px;
		 	color:blue;
		 }
		 .show_515
		 {
		 	width:755px;
		 	text-align:left;
		 	paddint-left:10px;
		 	height:50px;
		 	margin-top:0px;
		 	padding-top:15px;
		 	border-bottom:1px solid green;
		 	margin-bottom:5px;
		 }
		 .show_516
		 {
		 	width:755px;
		 	text-align:left;
		 	paddint-left:3px;
		 	paddint-top:0px;
		 	margin-top:0px;
		 	height:322px;
		 	
		 }
	</style>
	<script type="text/javascript">
		function form_submit()
		{
			var con = Ext.getCmp('invitation_tie1').getValue();
			if(con.length < ${ applicationScope.h_min})
			{
				alert("帖子最小长度是 " + ${ applicationScope.h_min});
			}
			else if(con.lenght > ${ applicationScope.h_max})
			{
				alert("帖子最大长度要限制在 " + ${ applicationScope.h_max});
			} 
			else
			{
				document.all.content.value = con;
				document.all.f_m.submit();
			}
		}
	</script>
  </head>
  	
  <body>
  <jsp:include flush="true" page="../public/t.jsp"></jsp:include>
    <div id="show_1">
    	<div id="show_2">
    		<div id="show_title"><a href="#">华夏黑客联盟</a>--<a href="#">帖子正文</a>--<span id="show_font">${ requestScope.text_tie.title}</span></div>
	    	<div id="show_3">
	    		<a href="bbs/invitation/invitation.jsp"><img src="images/bbs/post.jpg" border=0"/></a>
	    	</div>
	    </div>
    
    <div id="show_4">
    	<c:choose>
    		<c:when test="${ empty requestScope.text_tie}"><font size="3">该帖子可能被删除了，请浏览其他帖子</font></c:when>
    		<c:otherwise>
    			<table border="1" width="95%" cellspacing="0" bordercolor="6ABCEB" align="left">
    				<tr>
    					<td width="180px">
    						<div id="show_5">
    							<div class="show_6">${ requestScope.text_tie.hackName}</div>
    							<div id="show_7"><img src="images/user/${ requestScope.text_tie.userVO.hackimg}" width="155px"/></div>
    							<br />
    							<div id="show_14">等级:
    								<c:choose>
    									<c:when test="${ requestScope.text_tie.userVO.integral < 100}">新手上路</c:when>
    									<c:when test="${ requestScope.text_tie.userVO.integral >= 100}">黑客起步</c:when>
    									<c:when test="${ requestScope.text_tie.userVO.integral >= 300}">高手进阶</c:when>
    									<c:when test="${ requestScope.text_tie.userVO.integral >= 500}">黑客高手</c:when>
    									<c:otherwise>黑客元老</c:otherwise>
    								</c:choose>
    							</div>
    							<div id="show_8">积分:${ requestScope.text_tie.userVO.integral}</div>
    							<div id="show_9">发帖数:${ requestScope.text_tie.userVO.fatiecount}</div>
    							<div id="show_10">回帖数:${ requestScope.text_tie.userVO.huitiecount}</div>
    							<div id="show_11">注册时间:
    								<fmt:formatDate value="${ requestScope.text_tie.userVO.createTime}" pattern="yyyy-MM-dd"/>
    							</div>
    							<div id="show_12">注册IP:${ requestScope.text_tie.userVO.hackip}</div>
    						</div>
    					</td>
    					<td width="755px">
    						<table cellspacing="0" height="350px">
    							<tr>
    								<td height="50px">
    									<div class="show_15">
		    								<img src="images/bbs/t_left.gif" />发表于:&nbsp;&nbsp;${ requestScope.text_tie.createTime}
			    						</div>
    								</td>
    							</tr>
    							<tr>
    								<td>
		    							<div class="show_16">
			    							<c:choose>
			    								<c:when test="${ requestScope.is == 1}">
			    									<img src="images/bbs/re.jpg" />
			    								</c:when>
			    								<c:otherwise>
			    									${ requestScope.text_tie.content}
			    								</c:otherwise>
			    							</c:choose>
			    						</div>
    								</td>
    							</tr>
    						</table>
    					</td>
    				</tr>
    				<c:if test="${ not empty requestScope.hui_tie}">
    						<c:forEach var="h" items="${ requestScope.hui_tie}">
    						<tr>
    							<td width="180px">
		    						<div class="show_55">
		    							<div class="show_56">${ h.hackName}</div>
		    							<div class="show_57"><img src="images/user/${ h.userVO.hackimg}" width="155px"/></div>
		    							<br />
		    							<div class="show_514">等级:
		    								<c:choose>
		    									<c:when test="${ h.userVO.integral < 100}">新手上路</c:when>
		    									<c:when test="${ h.userVO.integral >= 100}">黑客起步</c:when>
		    									<c:when test="${ h.userVO.integral >= 300}">高手进阶</c:when>
		    									<c:when test="${ h.userVO.integral >= 500}">黑客高手</c:when>
		    									<c:otherwise>黑客元老</c:otherwise>
		    								</c:choose>
		    							</div>
		    							<div class="show_58">积分:${ h.userVO.integral}</div>
		    							<div class="show_59">发帖数:${ h.userVO.fatiecount}</div>
		    							<div class="show_510">回帖数:${ h.userVO.huitiecount}</div>
		    							<div class="show_511">注册时间:
		    								<fmt:formatDate value="${ h.userVO.createTime}" pattern="yyyy-MM-dd"/>
		    							</div>
		    							<div class="show_512">注册IP:${ h.userVO.hackip}</div>
		    						</div>
		    					</td>
		    					<td width="755px">
		    						<table cellspacing="0" height="350px">
		    							<tr>
		    								<td height="50px">
		    									<div class="show_515">
				    								<img src="images/bbs/t_left.gif" />发表于:&nbsp;&nbsp;${ h.createTime}
					    						</div>
		    								</td>
		    							</tr>
		    							<tr>
		    								<td>
				    							<div class="show_516">
					    							${ h.content}
					    						</div>
		    								</td>
		    							</tr>
		    						</table>
		    					</td>
		    				</tr>
    						</c:forEach>
    				</c:if>
    			</table>
    		</c:otherwise>
    	</c:choose>
    </div>
    <br />
    <div>
    	<c:if test="${ not empty sessionScope.userVO}">
    		<table border="1" width="95%" cellspacing="0" bordercolor="6ABCEB" align="left">
	    		<tr>
	    			<td width="155px">
	    				<a href="#"><img src="images/user/${ sessionScope.userVO.hackimg}" width="155px" /></a>
	    			</td>
	    			<td width="785px">
	    				<div id="invitation_tie1"></div>
	    				<form action="bbs.do?method=restore&id=${ requestScope.text_tie.tieid}" method="post" name="f_m">
	    					<input type="hidden" name="content" value="顶....."/>
	    					<a onClick="form_submit()"><img src="images/bbs/reply.jpg" border="0"/></a>
	    				</form>
	    			</td>
	    		</tr>
	    	</table>
    	</c:if>
    </div>
    
	</div>
	<jsp:include flush="true" page="../public/b.jsp"></jsp:include>
  </body>
</html>
