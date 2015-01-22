<%@ page language="java" pageEncoding="UTF-8" buffer="16kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.hbsoft.hack.vo.FatieVO" %>
<%@ page import="com.hbsoft.hack.util.FormatString" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<base href="<%=basePath%>" />
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta http-equiv="keywords" content="" />
	<title>${ applicationScope.title} --- 论坛主页</title>	
	
	<link rel="stylesheet" type="text/css" href="style/mainbbs.css" />
</head>

<body onload="getdate()">



<jsp:include flush="true" page="../public/t.jsp"></jsp:include>
	<div id="post">
		<div id="pyi">公告</div>
		<div id="per" style="float:left;">
			<marquee behavior="scroll" direction="up" 
		height="21px" scrollamount="1" vspace="3" style="padding: 21px 0pt;">
			<div class="p"><a href="#">震撼发布：华夏黑客联盟三周年工具包！</a></div>
			<div class="p"><a href="#">华夏黑客联盟三周年寄语（附管理团队全家福）</a></div>
			<div class="p"><a href="#">如何获得华夏黑客联盟邀请码？</a></div>
		</marquee>
		</div>
	</div>
	
	<div id="invitation">
		<div id="invi_left">
			<div class="invi_yi">
				<img src="images/bbs/t_1.jpg" width="305px" />
			</div>
			<c:choose>
				<c:when test="${ empty requestScope.news}">
					<div class="invi_er">
						暂无内容
					</div>
				</c:when>
				<c:otherwise>
						<c:forEach var="n" items="${ requestScope.news}" varStatus="s">
							<div class="invi_11">
								<div class="invi_22"><a href="bbs.do?method=invitation&id=${ n.tieid}">
									<img src="images/left/${ s.count}.gif" border="0"/>
										<%
											FatieVO tie1 = (FatieVO)pageContext.getAttribute("n");
											out.println(FormatString.formatString(tie1.getTitle(),15));
										 %>
									</a>
								</div>
								<div class="invi_23">${ n.hackName}</div>
							</div>
						</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div id="invi_center">
			<div class="invi_yi">
				<img src="images/bbs/t_2.jpg" width="305px" />
			</div>
			<c:choose>
				<c:when test="${ empty requestScope.hot}">
					<div class="invi_er">
						暂无内容
					</div>
				</c:when>
				<c:otherwise>
						<c:forEach var="n" items="${ requestScope.hot}" varStatus="s">
							<div class="invi_11">
								<div class="invi_22"><a href="bbs.do?method=invitation&id=${ n.tieid}">
									<img src="images/left/${ s.count}.gif" border="0"/>
										<%
											FatieVO tie2 = (FatieVO)pageContext.getAttribute("n");
											out.println(FormatString.formatString(tie2.getTitle(),15));
										 %>
									</a>
								</div>
								<div class="invi_23">${ n.hackName}</div>
							</div>
						</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div id="invi_right">
			<div class="invi_yi">
				<img src="images/bbs/t_3.jpg" width="305px" />
			</div>
			<c:choose>
				<c:when test="${ empty requestScope.best}">
					<div class="invi_er">
						暂无内容
					</div>
				</c:when>
				<c:otherwise>
						<c:forEach var="n" items="${ requestScope.best}" varStatus="s">
							<div class="invi_11">
								<div class="invi_22"><a href="bbs.do?method=invitation&id=${ n.tieid}">
									<img src="images/left/${ s.count}.gif" border="0"/>
										<%
											FatieVO tie3 = (FatieVO)pageContext.getAttribute("n");
											out.println(FormatString.formatString(tie3.getTitle(),15));
										 %>
									</a>
								</div>
								<div class="invi_23">${ n.hackName}</div>
							</div>
						</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	<div id="newhelp">
        <span class="l_shou"><img src="images/bbs/1.jpg" width="920px" /></span>
        <table border="1" width="918px" rules="rows" cellspacing="0" bordercolor="#99CCFF">
            <tr>
                <td width="680px" align="center"><center>板块</center></td>
                <td width="110px">主题/文章</td>
                <td width="120px">最后发表</td>
            </tr>
            <c:forEach var="l1" items="${ requestScope.lap1}">
            	<tr>
	                <td width="600px" height="40px">
	                    <div class="n_1"><img src="images/bbs/6.jpg" width="40px" /></div>
	                    <div id="n_2">
	                        <a href="bbs.do?method=get_invitation&t=${ l1.lapId}"><font size="3"><b>${ l1.lapName}</b></font></a>&nbsp;(今日:${ l1.tieTaday})<br />
	                        ${ l1.content}
	                    </div>
	                </td>
	                <td align="center">${ l1.tieCount}</td>
	                <td align="center">${ l1.tieLast}</td>
	            </tr>
            </c:forEach>
        </table>	
	</div>
	
	<div id="jishu">
		<span class="l_shou"><img src="images/bbs/2.jpg" width="920px" /></span>
        <table border="1" width="918px" rules="rows" cellspacing="0" bordercolor="#99CCFF">
            <tr>
                <td width="680px" align="center"><center>板块</center></td>
                <td width="110px">主题/文章</td>
                <td width="120px">最后发表</td>
            </tr>
            <c:forEach var="l2" items="${ requestScope.lap2}">
            	<tr>
	                <td width="600px" height="40px">
	                    <div class="n_1"><img src="images/bbs/6.jpg" width="40px" /></div>
	                    <div id="n_3">
	                        <a href="bbs.do?method=get_invitation&t=${ l2.lapId}"><font size="3"><b>${ l2.lapName}</b></font></a>&nbsp;(今日:${ l2.tieTaday})<br />
	                       ${ l2.content}
	                    </div>
	                </td>
	                <td align="center">${ l2.tieCount}</td>
	                <td align="center">${ l2.tieLast}</td>
	            </tr>
            </c:forEach>
        </table>
	</div>
	
	<div id="about">
		<span class="l_shou"><img src="images/bbs/3.jpg" width="920px" /></span>
        <table border="1" width="918px" rules="rows" cellspacing="0" bordercolor="#99CCFF">
            <tr>
                <td width="120px">你的IP:<%=request.getRemoteAddr()%></td>
                <td width="210px"></td>
                <td width="320px">浏览器:<span id="liu"></span>
                	<script language="javascript"> 
						if(navigator.appName == "Microsoft Internet Explorer") 
						{ 
							if(navigator.appVersion.match(/7./i)=='7.') 
							{ 
								document.getElementById("liu").innerHTML = "Microsoft Internet Explorer 7.0";
							}
							else if(navigator.appVersion.match(/6./i)=='6.')
							{ 
								document.getElementById("liu").innerHTML = "Microsoft Internet Explorer 6.0";
							}
							else if(navigator.appVersion.match(/8./i)=='8.')
							{ 
								document.getElementById("liu").innerHTML = "Microsoft Internet Explorer 8.0";
							}
							else
							{
								document.getElementById("liu").innerHTML = "你使用浏览器不是 Microsoft Internet Explorer";
							} 
						}
					</script> 
                </td>
            </tr>
        </table>
	</div>
	
	<div id="t_7"><img src="images/falsh/1.gif" width="920px" /></div>
	
	<jsp:include flush="true" page="../public/b.jsp"></jsp:include>
</body>
</html>
