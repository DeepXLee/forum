<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<script>
    	
  		  
  	function getBasePath(){ 
	var obj=window.location; 
	var contextPath=obj.pathname.split("/")[1]; 
	var basePath=obj.protocol+"//"+obj.host+"/"+contextPath; 
	return basePath; 
	}
  	
   window.onload = function() {
	//点击注册按钮
	$("#I_want_question").click(function() {
		//点击时验证用户名
		if(${sessionScope.user.name}==null) { //验证用户名
			window.location.href = getBasePath() + "/jsps/user/log.jsp";
		}else {
			window.location.href = getBasePath() + "/jsps/user/publish.jsp";
		}
	});

}
	</script>
	
	
<val data-name="ajax_fetch_url"
		data-value="/question/_widgets/_list_content?catalog=1&amp;show=active&amp;p="></val>
	<section>
		<div class="box vertical sec-header question-banner">
			<div class="banner-box box vertical">
				<div class="box vertical box-aw">
					<a href="<c:url value="/jsps/main/showAllArticle.action"></c:url>" class="sec-title"> <svg
							width="135" height="31" viewBox="0 0 135 31"
							class="question-logo">
				    <use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#question-logo"></use>
				</svg>
					</a> <a  class="sec-link" id="I_want_question" href="<c:url value="/jsps/addArticle/addArticle.jsp"></c:url>">我要提问</a>
				</div>
				<div class="box-fr" align="right">
					<form class="sec-search" action="https://www.oschina.net/search">
						<input type="text" class="search-text"
							placeholder="在 46249 款开源软件中搜索" name="q"> <input
							type="hidden" name="scope" value="bbs">
						<button type="submit" class="ic-search box vertical"></button>
					</form>
				</div>
			</div>
		</div>