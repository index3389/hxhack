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
	
	<title>${ applicationScope.title}---首页</title>
	<meta http-equiv="keywords" content="${ applicationScope.search}" />
	
	<link rel="stylesheet" type="text/css" href="style/main.css" />

<script language="javascript">
	function so()
	{
		var s = document.all.content.value;
		var jian = document.all.jian.value;
		if(s == "")
		{
			alert("条件不能为空");
		}
		else
		{
			window.location.href = "topic.do?method=find&t="+jian+"&c="+s;
		}
	}
</script>

</head>

<body>
<div id="main">

	<div id="top">
        <a href="main.jsp">首页|</a>
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
                        <a href="bbs.do?method=best">|精华帖子|</a>
                        <a href="#">|新手求助|</a>
                        <a href="#">|美女两性|</a>
                        <a href="#">|会员照片|</a>
                        <a href="#">|在线服务|</a>
                        <a href="#">|站长博客|</a>
                        <a href="default.jsp">|网站首页</a>
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
		  
		<div id="wu">
            <a href="fen.do?method=common&t=2">新闻资讯&nbsp;|&nbsp;</a>
            <a href="fen.do?method=common&t=1">安全公告&nbsp;|&nbsp;</a>
            <a href="fen.do?method=common&t=6">技术文摘&nbsp;|&nbsp;</a>
            <a href="fen.do?method=common&t=5">软件下载&nbsp;|&nbsp;</a>
            <a href="fen.do?method=common&t=3">动画教程&nbsp;|&nbsp;</a>
            <a href="fen.do?method=common&t=4">黑客文学&nbsp;|&nbsp;</a>
            <a href="bbs.do?method=bbs">论坛社区&nbsp;|&nbsp;</a>
            <a href="#">在线投稿&nbsp;|&nbsp;</a>
        </div>
        <jsp:include flush="true" page="util/main_ad.jsp"></jsp:include>
        <div class="liu">
           <div id="liu_yi">
            <form action="#" method="post" id="soin">
                 <span id="sre">站内搜索:</span>
                 <input type="text" name="content" size="20" maxlength="30"/>
                <select name="tiaojian" id="jian">
                	<option value="1">站内文章</option>
                	<option value="2">软件下载</option>
                	<option value="3">动画教程</option>
                </select>
                <input type="button" value="搜索" onClick="so()" id="sostyle"/>
            </form>
           </div>
            <div id="liu_er">
            	　华夏黑客联盟 当前在线 <font color="red">1</font>人 
            </div>
        </div>
        
        <div id="dyna">
        	<div id="qi">
        		<div class="qi_top">
                	<div class="qi_yi">
                		<div class="index_left">
                			<div class="index_left1"><img src="images/bbs/t_left.gif"/>新闻资讯</div>
                			<div class="index_right1"><a href="fen.do?method=common&t=2">更多</a></div>
                		</div>
                		<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list0}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list0}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="topic.do?method=getnews&id=${ i.newsid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                    <div class="qi_er">
                    	<div class="index_left">
                    		<div class="index_left1"><img src="images/bbs/t_left.gif"/>黑客技术</div>
                			<div class="index_right1"><a href="fen.do?method=common&t=6">更多</a></div>
                    	</div>
                    	<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list1}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list1}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="topic.do?method=getTopic&id=${ i.topicid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                </div>
                <div class="qi_top">
                	<div class="qi_yi">
                		<div class="index_left">
                			<div class="index_left1"><img src="images/bbs/t_left.gif"/>黑客工具</div>
                			<div class="index_right1"><a href="fen.do?method=common&t=5">更多</a></div>
                		</div>
                		<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list2}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list2}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="topic.do?method=getdownload&id=${ i.downid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                    <div class="qi_er">
                    	<div class="index_left">
                			<div class="index_left1"><img src="images/bbs/t_left.gif"/>精品动画</div>
                			<div class="index_right1"><a href="fen.do?method=common&t=3">更多</a></div>
                		</div>
                		<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list3}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list3}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="topic.do?method=donghua&id=${ i.donghuaid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                </div>
                
                <div class="qi_si">
         		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  
				width="664" height="93">
				<param name="movie" value="images/main.swf">
				</object>
                </div>
                
                <div class="qi_top">
                	<div class="qi_yi">
                		<div class="index_left">
                    		<div class="index_left1"><img src="images/bbs/t_left.gif"/>安全公告</div>
                			<div class="index_right1"><a href="fen.do?method=common&t=1">更多</a></div>
                    	</div>
                    	<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list4}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list4}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="topic.do?method=getsafety&id=${ i.safetyid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                    <div class="qi_er">
                    	<div class="index_left">
                			<div class="index_left1"><img src="images/bbs/t_left.gif"/>黑客文学</div>
                			<div class="index_right1"><a href="fen.do?method=common&t=4">更多</a></div>
                		</div>
                		<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list5}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list5}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="topic.do?method=getliter&id=${ i.literid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                </div>
                <div class="qi_top">
                	<div class="qi_yi">
                		<div class="index_left">
                    		<div class="index_left1"><img src="images/bbs/t_left.gif"/>论坛新帖</div>
                			<div class="index_right1"><a href="">更多</a></div>
                    	</div>
                    	<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list6}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list6}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="bbs.do?method=invitation&id=${ i.tieid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                   
                    </div>
                    <div class="qi_er">
                    	<div class="index_left">
                    		<div class="index_left1"><img src="images/bbs/t_left.gif"/>热门帖子</div>
                			<div class="index_right1"><a href="">更多</a></div>
                    	</div>
                    	<div>
                			<c:choose>
                				<c:when test="${ empty requestScope.list7}">当前没有任何记录</c:when>
                				<c:otherwise>
                					<table width="320px" align="center" cellspacing="0">
				    					<c:forEach items="${ requestScope.list7}" var="i">
			    							<tr>
			    								<td align="left" width="260px">
			    									<div class="index_title">
			    										<a href="bbs.do?method=invitation&id=${ i.tieid}">${ i.title}</a>
			    									</div>
			    								</td>
			    								<td align="right" width="60px">
			    									<span class="index_time">
			    										<fmt:formatDate value="${ i.createTime}" pattern="MM月dd日"/>
			    									</span>
			    								</td>
			    							</tr>
				    					</c:forEach>
			    					</table>
                				</c:otherwise>
                			</c:choose>
                		</div>
                    </div>
                </div>
            </div>
            
            <div id="ba">
              	  <iframe src="util/topicRight.jsp" width="220px" height="1830px" border="0" frameborder="no"></iframe>
            </div>
		</div>
 
</div>

<jsp:include flush="true" page="util/buttom.jsp"></jsp:include>

</body>
</html>
