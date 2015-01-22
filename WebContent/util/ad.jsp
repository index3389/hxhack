<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   
"http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">  
<title>动态图片</title>  
<style type="text/css">
	body
	{
		text-align:center;
		padding:0px;
		margin:0px;
	}
	#ss
	{
		text-align:center;
		width:887px;
		border:none;
	}
	#ss img
	{
		border:none;
		width:887px;
	}
</style>
<script language="javascript" type="text/javascript">  
    var number = 0;   
    var timeOut = null;//接收setTimeout()方法的返回值   
    var picture = new Array(19);   
    for (var i = 0; i < picture.length; i++) 
	{   
        picture[i] = new Image();   
    }   
    function loadImage() 
	{   
        picture[0].src = "images/falsh/1.gif";   
        picture[1].src = "images/falsh/2.gif";   
        picture[2].src = "images/falsh/3.gif";  
		picture[3].src = "images/falsh/4.gif";   
        picture[4].src = "images/falsh/5.gif";   
        picture[5].src = "images/falsh/6.gif"; 
		picture[6].src = "images/falsh/7.gif";   
        picture[7].src = "images/falsh/8.gif";   
        picture[8].src = "images/falsh/9.gif";  
		picture[9].src = "images/falsh/10.gif";   
        picture[10].src = "images/falsh/11.gif";   
        picture[11].src = "images/falsh/12.gif";
		picture[12].src = "images/falsh/13.gif";   
        picture[13].src = "images/falsh/14.gif";   
        picture[14].src = "images/falsh/15.gif";  
		picture[15].src = "images/falsh/16.gif";   
        picture[16].src = "images/falsh/17.gif";   
        picture[17].src = "images/falsh/18.gif";   
        picture[18].src = "images/falsh/19.jpg";
    }   
    function playImage() 
	{   
        document.getElementById("show").src = picture[number].src;   
        number = (number + 1) % 19;   
        timeOut = setTimeout("playImage()",2000);   
    }   
    function stopImage() 
	{   
        if (timeOut != null) 
		{   
            clearTimeout(timeOut);   
            timeOut = null;   
        }   
    }   
	
	function st()
	{
		if (timeOut == null)
		 {
			 loadImage();
			 playImage()
		 }
	}
</script>  
</head>  
  
<body onLoad="st()">   
    <div id="ss"><img id = "show" src="images/falsh/4.gif" width="887px" /></div>
</body>  
</html> 
