<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>" />
    
    <title>ssssss</title>
    <meta http-equiv="keywords" content="${ applicationScope.search}" />
	  <style type="text/css">
		    .editor
		     {
			    margin-top: 5px;
			    margin-bottom: 5px;
		    }
  	</style>
  	
	  <script type="text/javascript" src="<%=path%>/script/kindeditor.js"></script>
  <script type="text/javascript">
    KE.show({
        id : 'content2',
        cssPath : 'style/index.css',
        items : [
        'undo', 'redo', 'fontname', 'fontsize', 'textcolor', 'bgcolor', 'bold', 'italic', 'underline',
        'removeformat', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
        'insertunorderedlist']
    });
  </script>
  </head>
  
  <body>
     <h3>简单模式</h3>
  <div class="editor">
   <%
   		out.println(application.getServerInfo() + "<br />");
   		out.println(application.getMajorVersion());
    %>
  </div>
  </body>
</html>
