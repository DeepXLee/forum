<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<span class="h1span"> <c:if test="${empty sessionScope.username}"
		var="userIf">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="<c:url value="/jsps/user/login.jsp"></c:url>">登录</a> &nbsp;&nbsp;&nbsp;<a
			href="<c:url value="/jsps/user/register.jsp"></c:url>">注册</a>
			
	</c:if> <c:if test="${!userIf}">
		<span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			欢迎登录，${sessionScope.username} &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
			<a href="<c:url value='/jsps/user/showUserAllArticle.action'></c:url>">查看我所有的文章</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value='/user?cmd=out'></c:url>">退出</a> </span>
	</c:if> </span>
	
	