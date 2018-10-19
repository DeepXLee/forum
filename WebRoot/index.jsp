<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
  	<title>论坛</title>
  </head>
  <body>
  	<!-- 直接转发到一个主页上面去 -->
    <%-- <jsp:forward page="/jsps/main/main.jsp"></jsp:forward> --%>
	<!-- 直接跳转到显示全部文章的页面 -->   
    <script language="javascript">
		function getBasePath(){ 
			var obj=window.location; 
			var contextPath=obj.pathname.split("/")[1]; 
			var basePath=obj.protocol+"//"+obj.host+"/"+contextPath; 
			return basePath; 
		}
		window.location.href=getBasePath()+'/jsps/main/showAllArticle.action';
	</script>
  </body>
</html>
