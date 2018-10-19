<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN" class="">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Language" content="zh-CN">
<meta name="robots" content="index, follow">
<meta name="referrer" content="always">
<meta name="viewport"
	content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1,user-scalable=0">
<meta name="keywords"
	content="${article.title}">
<title>${article.title}</title>
<style type="text/css" abt="234"></style>
<script src='<c:url value="/jsps/user/js/jquery-3.1.0.js"></c:url>' type="text/javascript" charset="utf-8"></script>
<%-- <script src='<c:url value="/jsps/article/js/article.js"></c:url>' type="text/javascript" charset="utf-8"></script> --%>
<script src='<c:url value="/ueditor/ueditor.config.js"></c:url>' type="text/javascript" charset="utf-8"></script>
<script src='<c:url value="/ueditor/ueditor.all.min.js"></c:url>' type="text/javascript" charset="utf-8"></script>
<script src='<c:url value="/ueditor/lang/zh-cn/zh-cn.js"></c:url>' type="text/javascript" charset="utf-8"></script>








<style>
.cke {
	visibility: hidden;
}
</style>




<style type="text/css" >
.fancybox-margin {
	margin-right: 17px;
}
</style>

<style type="text/css">
object, embed {
	-webkit-animation-duration: .001s;
	-webkit-animation-name: playerInserted;
	-ms-animation-duration: .001s;
	-ms-animation-name: playerInserted;
	-o-animation-duration: .001s;
	-o-animation-name: playerInserted;
	animation-duration: .001s;
	animation-name: playerInserted;
}

@
-webkit-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-ms-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-o-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}
}
</style>


<link rel="stylesheet"
	href="./css/share_style0_16.css">




</head>
<style type="text/css" id="2968022547"></style>

	



<body class="sc sc-bgc body" data-aos-easing="ease"
	data-aos-duration="400" data-aos-delay="0">
	
	<header class="header-navbar">
   
    <div class="box top-banner">

		<div class="box-fr user-bar">
			<div class="box user-info">
				<jsp:include page="../userLog/userLog.jsp" flush="true" />
				
			</div>
		</div>
	</div>
    
</header>
<div><jsp:include page="../userLog/search.jsp" flush="true" /></div>

	
	
	<val data-name="goto_this_page"
		data-value=""></val>
	<link type="text/css" rel="stylesheet"
		href="./css/question-main-37232c8003e0abaf5b5a28ba651727ba6ac3d143.css">
	
	
	

	<val data-name="weixinAppid" data-value="wx880def15e694b905"></val>
	<val data-name="weixinTimestamp" data-value="1537407114826"></val>
	<val data-name="weixinNonceStr"
		data-value="b9283022-7dee-4667-b190-8aa6b5b80a03"></val>
	<val data-name="weixinSignature"
		data-value="89839479a9bebc605dc932eeb68c476c07a8976c"></val>
	<val data-name="weixinUrl"
		data-value=""></val>
	<val data-name="weixinShareTitle" data-value=""></val>
	<val data-name="weixinShareDescription" data-value=""></val>
	

	<svg xmlns="http://www.w3.org/2000/svg"
		xmlns:xlink="http://www.w3.org/1999/xlink" width="0" height="0"
		style="position:absolute;">
		<defs>
		<svg width="14" height="15" viewBox="0 0 14 15" id="ic-comment-delete">
			<path
				d="M4.702 12.134V4.868a.33.33 0 0 0-.661 0v7.266a.33.33 0 0 0 .661 0zm2.645 0V4.868a.33.33 0 0 0-.661 0v7.266a.33.33 0 0 0 .661 0zm4.96-7.596v8.917c0 .364-.296.66-.662.66H2.388a.661.661 0 0 1-.661-.66V4.538a.33.33 0 0 0-.65-.083c-.004-.002-.012 9-.012 9 0 .73.592 1.32 1.323 1.32h9.257c.73 0 1.323-.59 1.323-1.32V4.538a.33.33 0 0 0-.661 0zm1.324-2.642H9.823L8.603.677a.35.35 0 0 0-.256-.102h-2.66a.35.35 0 0 0-.255.102l-1.22 1.219H.404a.33.33 0 1 0 0 .66h3.98a.35.35 0 0 0 .261-.102l1.22-1.219H8.17l1.22 1.219a.35.35 0 0 0 .261.102h3.98a.33.33 0 0 0 0-.66zM9.992 12.134V4.868a.33.33 0 0 0-.66 0v7.266a.33.33 0 0 0 .66 0z"
				stroke="#5F5E5E" stroke-width=".4" fill="#5F5E5E"
				fill-rule="evenodd"></path></svg>
		<svg width="16" height="15" viewBox="0 0 16 15" id="ic-comment-icon">
			<defs>
			<path
				d="M53 5.007C53 3.9 53.895 3 54.994 3h12.012C68.107 3 69 3.901 69 5.007v7.978a2.003 2.003 0 0 1-2.01 2.008h-.72c-1.11 0-2.644.631-3.428 1.412l-.376.374c-.783.78-2.05.78-2.831 0l-.375-.374c-.78-.78-2.302-1.412-3.413-1.412H55c-1.104 0-1.999-.902-1.999-2.008V5.007z"
				id="ba"></path>
			<mask id="bb" x="0" y="0" width="16" height="14.364" fill="#fff">
			<use xlink:href="#ba"></use></mask></defs>
			<use mask="url(#bb)" xlink:href="#ba" transform="translate(-53 -3)"
				stroke-width="2" stroke="#999" fill="none" fill-rule="evenodd"></use></svg>
		<svg width="17" height="17" viewBox="0 0 17 17" id="ic-comment-like">
			<path
				d="M15.249 5.895c-.625-.164-2.095-.162-4.244-.218.102-.47.125-.892.125-1.642 0-1.792-1.307-3.371-2.463-3.371-.817 0-1.49.667-1.5 1.487-.012 1.006-.323 2.744-2 3.625-.123.065-.475.238-.527.26l.027.023c-.263-.226-.627-.4-1-.4h-1.5c-.827 0-1.5.673-1.5 1.5v7.993a1.5 1.5 0 0 0 1.5 1.499h1.5c.595 0 1.092-.36 1.334-.863a.164.164 0 0 0 .023.006l.12.031.023.006c.288.071.842.204 2.027.476.254.058 1.596.344 2.987.344h2.733c.833 0 1.45-.31 1.79-.963.333-.581 1.964-3.692 1.963-8.077 0-.63-.437-1.436-1.418-1.716zM4.167 15.152a.5.5 0 0 1-.5.5h-1.5a.5.5 0 0 1-.5-.5V7.158a.5.5 0 0 1 .5-.499h1.5a.5.5 0 0 1 .5.5v7.993z"
				fill="#4AAB47" fill-rule="evenodd"></path></svg>
		<svg width="18" height="16" viewBox="0 0 18 16" id="ic-comment-report">
			<defs>
			<rect id="da" x="7.2" y="4" width="1.5" height="5" rx=".75"></rect>
			<mask id="db" x="0" y="0" width="1.5" height="5" fill="#fff">
			<use xlink:href="#da"></use></mask></defs>
			<g transform="translate(1 1)" fill="none" fill-rule="evenodd">
			<path
				d="M6.944.719c.551-.956 1.442-.962 1.997 0l6.706 11.624c.551.956.111 1.73-.998 1.73H1.236c-1.103 0-1.553-.768-.998-1.73L6.944.72z"
				stroke="#979797"></path>
			<use stroke="#979797" mask="url(#db)" stroke-width="2" fill="#D8D8D8"
				xlink:href="#da"></use>
			<circle fill="#979797" cx="8" cy="11" r="1"></circle></g></svg>
		<svg width="20" height="20" viewBox="0 0 20 20" id="ic-comment-smile">
			<path
				d="M9.996 19.979C4.495 19.979 0 15.497 0 9.996 0 4.482 4.482 0 9.996 0c5.515 0 9.996 4.482 9.996 9.996 0 5.501-4.481 9.983-9.996 9.983zm0-18.731c-4.817 0-8.748 3.918-8.748 8.748 0 4.817 3.918 8.748 8.748 8.748 4.817 0 8.748-3.918 8.748-8.748a8.75 8.75 0 0 0-8.748-8.748zm0 14.679a6.69 6.69 0 0 1-5.112-2.362.633.633 0 0 1 .067-.885c.255-.229.658-.188.886.067a5.47 5.47 0 0 0 8.346 0 .606.606 0 0 1 .872-.067.606.606 0 0 1 .067.872 6.752 6.752 0 0 1-5.126 2.375zm-3.18-5.985c-.55 0-1.006-.456-1.006-1.006V7.568c0-.55.456-1.007 1.006-1.007s1.006.456 1.006 1.007v1.368c0 .55-.456 1.006-1.006 1.006zm6.36 0c-.55 0-1.006-.456-1.006-1.006V7.568c0-.55.456-1.007 1.006-1.007s1.006.456 1.006 1.007v1.368c0 .55-.442 1.006-1.006 1.006z"
				fill="#888" fill-rule="evenodd"></path></svg>
		<svg width="19" height="19" viewBox="0 0 19 19"
			id="ic-comment-software">
			<g fill="#888" fill-rule="evenodd">
			<path
				d="M3.187 6.519h3.42v-3.42h-3.42zM7.746 6.519h3.42v-3.42h-3.42zM12.306 6.519h3.42v-3.42h-3.42zM3.187 11.078h3.42v-3.42h-3.42zM7.746 11.078h3.42v-3.42h-3.42zM3.187 15.637h3.42v-3.42h-3.42z"></path>
			<path d="M13.5 15.637h2.225V7.659h-3.42v4.558H7.747v3.42H13.5"></path>
			<path
				d="M17.18.019H1.73C.737.019.004.823.004 1.815V17.2c0 .992.804 1.796 1.796 1.796h15.381c.992 0 1.796-.804 1.796-1.796V1.709c0-.992-.804-1.69-1.796-1.69zM2.117 16.884h14.748V2.131H2.116v14.753z"></path></g></svg>
		<svg width="17" height="17" viewBox="0 0 17 17" id="ic-comment-unlike">
			<path
				d="M15.249 5.895c-.625-.164-2.095-.162-4.244-.218.102-.47.125-.892.125-1.642 0-1.792-1.307-3.371-2.463-3.371-.817 0-1.49.667-1.5 1.487-.012 1.006-.323 2.744-2 3.625-.123.065-.475.238-.527.26l.027.023c-.263-.226-.627-.4-1-.4h-1.5c-.827 0-1.5.673-1.5 1.5v7.993a1.5 1.5 0 0 0 1.5 1.499h1.5c.595 0 1.092-.36 1.334-.863a.164.164 0 0 0 .023.006l.12.031.023.006c.288.071.842.204 2.027.476.254.058 1.596.344 2.987.344h2.733c.833 0 1.45-.31 1.79-.963.333-.581 1.964-3.692 1.963-8.077 0-.63-.437-1.436-1.418-1.716zM4.167 15.152a.5.5 0 0 1-.5.5h-1.5a.5.5 0 0 1-.5-.5V7.158a.5.5 0 0 1 .5-.499h1.5a.5.5 0 0 1 .5.5v7.993zm11.488-7.227c-.208 5.021-1.831 7.29-1.831 7.29-.151.273-.395.437-.91.437H10.18c-1.374 0-2.736-.312-2.77-.32-2.078-.477-2.187-.515-2.318-.552l.074-7.34c0-.76.017-.568 0-.558 2.284-.945 2.98-3.018 3-4.72.003-.239.187-.5.5-.5.529 0 1.463 1.061 1.463 2.373 0 1.185-.048 1.39-.463 2.624 5 0 4.965.072 5.406.187a.766.766 0 0 1 .594.765c0 .171-.005.147-.012.314z"
				fill="#999" fill-rule="evenodd"></path></svg>
		<svg width="19" height="19" viewBox="0 0 19 19" id="ic_back_top">
			<path
				d="M9.351 3.447L.694 11.815h4.913l-.043 6.853h7.553v-6.874l5.042-.065-8.808-8.282zM.035.035h18.633v2.747H.035V.035z"
				fill="#9C9C9C" fill-rule="evenodd"></path></svg></defs></svg>
	<svg width="0" height="0" style="position:absolute">
		<defs>
		
		<svg width="24" height="26" viewBox="0 0 24 26" id="question-accepted">
			<path d="M9.5 18.5s6-15 14-18.5v9.5s-8 6-13.5 16L0 16l6-4.5 3.5 7z"
				fill="#3AAB4F" fill-rule="evenodd"></path></svg>
		<svg width="18" height="18" viewBox="0 0 18 18" id="question-ask">
			<path
				d="M9.706 13.956A.498.498 0 0 1 9 13.5c0-.073.016-.143.044-.206a1 1 0 1 1 .662.662zM9 18A9 9 0 1 0 9 0a9 9 0 0 0 0 18zm0-1A8 8 0 1 0 9 1a8 8 0 0 0 0 16zm-.6-6.627v-.268c0-1.026.75-1.81 1.412-2.502.486-.509.988-1.033.988-1.452 0-1.046-.808-1.896-1.8-1.896-1.01 0-1.8.814-1.8 1.854a.614.614 0 0 1-.6.627.614.614 0 0 1-.6-.627C6 4.395 7.346 3 9 3s3 1.414 3 3.151c0 .94-.681 1.651-1.34 2.34-.521.544-1.06 1.107-1.06 1.614v.267c0 .346-.269.628-.6.628a.614.614 0 0 1-.6-.627z"
				fill="#4EAA4C" fill-rule="evenodd"></path></svg>
		<svg width="18" height="16" viewBox="0 0 18 16" id="question-follow">
			<path
				d="M15.682 2.318A4.472 4.472 0 0 0 12.5 1c-1.202 0-2.165.432-3.015 1.282h-.002v.001L9 2.891l-.483-.571-.002-.002C7.665 1.468 6.702 1 5.5 1a4.471 4.471 0 0 0-3.182 1.318A4.47 4.47 0 0 0 1 5.5c0 1.202.467 2.33 1.316 3.18l5.974 6.024a1 1 0 0 0 1.42 0l5.973-6.023A4.471 4.471 0 0 0 17 5.5a4.471 4.471 0 0 0-1.318-3.182z"
				stroke="#FFF" fill="none" fill-rule="evenodd"></path></svg>
		<svg width="135" height="31" viewBox="0 0 135 31" id="question-logo">
			<defs>
			<lineargradient x1="100%" y1="100%" x2="0%" y2="0%" id="ea">
			<stop stop-color="#4AC58C" offset="0%"></stop>
			<stop stop-color="#24A659" offset="100%"></stop></lineargradient></defs>
			<g transform="translate(-3)" fill="none" fill-rule="evenodd">
			<path
				d="M5.727 6.802c-.579 0-.98-.134-1.247-.357-.223-.222-.357-.668-.357-1.247 0-.535.134-.89.357-1.114.223-.222.668-.356 1.247-.356h20.804c.623 0 1.024.134 1.247.356.223.223.312.624.312 1.114 0 .58-.09.98-.312 1.247-.223.223-.624.357-1.247.357h-3.119v7.395h4.633c.624 0 1.025.089 1.248.311.222.223.312.535.312 1.025 0 .535-.09.936-.312 1.203-.223.267-.624.4-1.248.4h-4.633v9.623c0 .624-.178 1.025-.49 1.247-.356.223-.712.312-1.202.312s-.891-.134-1.203-.356c-.356-.223-.49-.668-.49-1.248v-9.622h-7.484c-.09 1.337-.267 2.54-.58 3.609a10.923 10.923 0 0 1-1.157 2.85c-.49.847-1.07 1.649-1.782 2.317a22.527 22.527 0 0 1-2.406 2.094c-.534.4-1.024.579-1.514.534-.49-.044-.847-.267-1.114-.757-.312-.49-.446-.891-.312-1.292.134-.4.445-.802.891-1.158a26.039 26.039 0 0 0 1.915-1.56c.535-.49.98-1.068 1.381-1.692a9.345 9.345 0 0 0 .891-2.138c.223-.802.357-1.738.446-2.807h-4.5c-.623 0-1.024-.133-1.247-.4-.222-.268-.312-.669-.312-1.204 0-.49.09-.801.312-1.024.223-.223.624-.312 1.248-.312H9.29V6.757H5.727v.045zm6.816 7.395h7.395V6.802h-7.395v7.395zM39.432 14.592c-.356.356-.757.49-1.158.445-.4-.044-.846-.312-1.38-.802-.223-.133-.58-.4-.98-.757-.402-.356-.847-.668-1.293-1.025-.4-.4-.668-.757-.757-1.113-.089-.357.045-.758.401-1.292.624-.802 1.425-.802 2.45-.09.356.312.802.624 1.247.98.49.357.891.669 1.203.98.401.402.668.803.802 1.248.178.49 0 .936-.535 1.426zm.669 4.9a64.518 64.518 0 0 1-1.159 4.054c-.4 1.291-.935 2.539-1.559 3.786-.267.535-.623.891-1.113 1.025-.49.133-.936.089-1.337-.134-.445-.267-.713-.579-.802-.98-.089-.4.045-.98.446-1.648.534-.98.98-2.05 1.336-3.208.357-1.158.713-2.405 1.07-3.742.133-.623.356-1.069.668-1.291.311-.223.712-.312 1.291-.179.535.09.936.312 1.114.669.223.311.267.89.045 1.648zm.49-11.36c-.357.357-.758.49-1.114.446-.4-.045-.846-.312-1.381-.758-.356-.311-.757-.668-1.203-1.024-.445-.357-.802-.668-1.069-.891-.445-.357-.713-.713-.757-1.07-.045-.356.044-.757.4-1.247.313-.4.669-.623 1.114-.668.446-.044.891.134 1.337.49.356.267.624.49.89.668.268.223.446.401.624.535.179.178.357.312.49.445.134.134.312.268.49.446.401.4.669.802.802 1.247.134.401-.044.847-.534 1.337l-.09.044zm8.063-.044c-.936 0-1.56.222-1.916.623-.356.446-.534 1.114-.534 2.05v6.058c0 1.782.802 2.673 2.45 2.673h2.494v5.212c0 .267-.044.445-.178.534-.133.09-.49.045-1.069-.133-.624-.178-1.069-.223-1.336-.09-.268.134-.446.446-.58.892-.133.534-.133.98.09 1.291.178.357.623.58 1.292.669.89.178 1.648.267 2.182.267.535 0 1.025-.09 1.381-.356.357-.223.58-.624.713-1.114.134-.49.223-1.158.223-2.005v-5.212h2.494c.936 0 1.604-.178 1.96-.579.401-.4.58-1.069.58-2.094v-6.058c0-.936-.179-1.648-.535-2.05-.356-.445-.98-.623-1.87-.623h-2.941c.09-.134.134-.223.134-.267.044-.045.044-.09.089-.09.312-.667.312-1.202.044-1.558h4.811c.58 0 .936-.09 1.159-.312.178-.223.311-.58.311-1.07 0-.49-.089-.846-.267-1.113-.178-.267-.579-.356-1.158-.356H44.422c-.936 0-1.604.222-2.005.668-.4.445-.624 1.203-.624 2.227v7.039c0 1.648 0 3.073-.044 4.232-.045 1.202-.09 2.227-.178 3.162a16.9 16.9 0 0 1-.401 2.406c-.178.713-.401 1.336-.668 1.96-.134.312-.268.624-.357.847-.089.267-.133.49-.133.668 0 .222.044.4.178.579.089.178.267.356.49.49.4.267.802.356 1.158.267.356-.044.713-.4 1.025-1.069a15.54 15.54 0 0 0 .89-2.54c.223-.89.446-1.915.58-2.984.133-1.114.222-2.272.267-3.608.045-1.292.09-2.762.09-4.321V6.84c0-.311.044-.49.133-.579a.404.404 0 0 1 .312-.133h6.325c-.044.089-.089.133-.089.222a.34.34 0 0 0-.089.223 11.556 11.556 0 0 1-.846 1.47l-1.782.045zm.4 14.121c.223-.579.313-1.024.268-1.38-.045-.357-.312-.58-.802-.803-.445-.178-.802-.222-1.069-.044-.267.178-.535.49-.713.98-.178.49-.356.935-.49 1.292a7.247 7.247 0 0 1-.49 1.024 27.49 27.49 0 0 1-.579.98c-.223.357-.445.713-.713 1.159-.312.49-.49.935-.445 1.291.044.357.178.669.49.936.4.312.757.4 1.114.267.356-.133.668-.4.935-.802.49-.801.98-1.648 1.426-2.45.4-.802.757-1.603 1.069-2.45zm6.95-9.711h-6.95v-1.292c0-.223.045-.312.09-.356a.478.478 0 0 1 .267-.09h6.148c.267 0 .4.134.4.446l.045 1.292zm0 3.875c0 .357-.134.535-.4.535h-6.148c-.268 0-.401-.178-.401-.535v-1.336h6.95v1.336zm3.475 8.598a23.753 23.753 0 0 0-.624-1.158c-.178-.312-.4-.668-.579-.98-.178-.312-.4-.624-.624-.98-.222-.312-.49-.713-.757-1.114-.312-.445-.668-.668-1.07-.713-.355-.044-.712.09-.98.401-.177.178-.311.357-.356.58-.044.178-.089.4-.044.579 0 .178.089.356.134.534.089.178.178.312.267.49.223.312.445.624.624.891.178.267.356.58.579.891.178.312.356.624.579.98.222.356.4.713.623 1.158.268.535.535.847.802.98.268.134.624.09 1.025-.089.49-.223.713-.534.757-.935.09-.49-.044-.98-.356-1.515z"
				fill="#4B4B4B"></path>
			<rect fill="url(#ea)" x="67" width="70.32" height="31" rx="3"></rect>
			<path
				d="M82.488 5.424c.225 0 .633.095 1.222.286.59.19 1.023.477 1.3.858.277.381.416.85.416 1.404 0 .607-.2.91-.598.91-.243 0-.494-.121-.754-.364s-.641-.737-1.144-1.482c-.503-.745-.754-1.2-.754-1.365 0-.165.104-.247.312-.247zm14.014 5.59c0 1.473.065 3.514.195 6.123.13 2.609.195 4.069.195 4.381 0 1.317-.169 2.383-.507 3.198-.338.815-.646 1.222-.923 1.222s-.52-.182-.728-.546c-.433-.85-1.17-1.725-2.21-2.626-.208-.173-.312-.303-.312-.39 0-.087.052-.13.156-.13.104 0 .386.052.845.156.46.104.867.156 1.222.156s.576-.178.663-.533c.087-.355.13-1.326.13-2.912 0-1.586-.03-3.289-.091-5.109-.06-1.82-.134-3.155-.221-4.004-.087-.85-.182-1.434-.286-1.755-.104-.32-.204-.52-.299-.598-.095-.078-.277-.117-.546-.117s-.88.07-1.833.208c-.953.139-1.599.256-1.937.351a4.324 4.324 0 0 1-1.17.143c-.442 0-.858-.1-1.248-.299-.39-.2-.585-.377-.585-.533 0-.156.243-.243.728-.26a31.988 31.988 0 0 0 3.588-.377c1.248-.2 2.05-.386 2.405-.559.355-.173.641-.26.858-.26.217 0 .698.19 1.443.572.745.381 1.118.693 1.118.936 0 .243-.139.59-.416 1.04-.156.26-.234 1.1-.234 2.522zm-14.196-.572c0 .139-.026.32-.078.546-.087.347-.139 1.395-.156 3.146-.052 4.732-.2 7.7-.442 8.905-.243 1.205-.529 1.807-.858 1.807-.225 0-.425-.264-.598-.793s-.26-.975-.26-1.339.07-.693.208-.988c.139-.295.282-1.062.429-2.301.147-1.24.221-2.795.221-4.667 0-1.872-.022-3.111-.065-3.718-.043-.607-.139-1.057-.286-1.352-.147-.295-.221-.529-.221-.702 0-.173.104-.26.312-.26.208 0 .559.173 1.053.52.494.347.741.745.741 1.196zm3.146 2.392A14.97 14.97 0 0 0 88 12.561c.85-.165 1.426-.355 1.729-.572.303-.217.568-.325.793-.325.225 0 .659.173 1.3.52.641.347.962.641.962.884s-.234.529-.702.858c-.139.104-.381.46-.728 1.066-.347.607-.52.992-.52 1.157 0 .165.087.29.26.377.173.087.26.234.26.442s-.065.36-.195.455c-.13.095-.754.195-1.872.299-1.118.104-2.084.139-2.899.104-.017.659-.13.988-.338.988-.208 0-.386-.19-.533-.572a4.227 4.227 0 0 1-.273-1.144c-.208-1.803-.52-3.068-.936-3.796-.139-.243-.208-.438-.208-.585 0-.147.108-.221.325-.221.217 0 .559.113 1.027.338zm.936 4.134c1.075-.121 1.816-.238 2.223-.351.407-.113.68-.277.819-.494.139-.217.264-.58.377-1.092.113-.511.169-.919.169-1.222 0-.303-.039-.49-.117-.559-.078-.07-.221-.087-.429-.052-1.543.208-2.678.338-3.406.39.052.607.173 1.733.364 3.38zm31.236-10.712c.555-.017 1.291-.173 2.21-.468.572-.156 1.036-.234 1.391-.234s.659.078.91.234c.251.156.377.312.377.468 0 .156-.13.29-.39.403-.26.113-.741.225-1.443.338-.702.113-1.296.169-1.781.169-.485 0-1.04-.139-1.664-.416-.537.693-1.222 1.4-2.054 2.119-.832.72-1.378 1.079-1.638 1.079-.121 0-.182-.056-.182-.169 0-.113.078-.264.234-.455.85-1.023 1.53-1.928 2.041-2.717.511-.789.724-1.478.637-2.067a2.15 2.15 0 0 1-.026-.286c0-.277.139-.416.416-.416.277 0 .654.1 1.131.299.477.2.715.438.715.715a.518.518 0 0 1-.13.338l-.754 1.066zm-8.06.858c.52-.035 1.265-.208 2.236-.52.485-.139.85-.208 1.092-.208.243 0 .46.06.65.182.19.121.286.256.286.403 0 .147-.07.273-.208.377-.139.104-.537.23-1.196.377a8.484 8.484 0 0 1-1.846.221c-.572 0-1.04-.06-1.404-.182-.797 1.248-1.664 2.27-2.6 3.068-.936.797-1.543 1.196-1.82 1.196-.121 0-.182-.06-.182-.182 0-.121.087-.269.26-.442 1.04-1.04 1.876-2.123 2.509-3.25.633-1.127.949-1.993.949-2.6a.941.941 0 0 0-.065-.364.708.708 0 0 1-.065-.26c0-.26.173-.39.52-.39.347 0 .745.07 1.196.208.45.139.676.33.676.572 0 .173-.33.771-.988 1.794zm9.724 2.678c0 .225-.06.438-.182.637a.576.576 0 0 1-.52.299c-.225 0-.46-.139-.702-.416a27.784 27.784 0 0 1-.819-.988c-.303-.381-.455-.654-.455-.819 0-.165.165-.247.494-.247.659 0 1.187.152 1.586.455.399.303.598.663.598 1.079zm-10.374-.702c.728 0 1.283.1 1.664.299.381.2.572.542.572 1.027 0 .485-.173.728-.52.728-.277 0-.702-.264-1.274-.793-.572-.529-.858-.871-.858-1.027 0-.156.139-.234.416-.234zm4.862 2.912c2.132 1.75 4.008 3.003 5.629 3.757 1.62.754 3.54 1.365 5.759 1.833.676.156 1.014.312 1.014.468 0 .104-.113.195-.338.273-.225.078-.819.2-1.781.364-.962.165-1.703.247-2.223.247-.52 0-.966-.091-1.339-.273-.373-.182-1.395-.94-3.068-2.275s-3.055-2.6-4.147-3.796c-1.075 1.387-1.95 2.457-2.626 3.211-.676.754-1.538 1.504-2.587 2.249a16.04 16.04 0 0 1-3.185 1.781c-1.075.442-1.725.663-1.95.663-.225 0-.338-.056-.338-.169 0-.113.095-.221.286-.325 1.49-.797 2.981-1.798 4.472-3.003 1.49-1.205 2.63-2.327 3.419-3.367.789-1.04 1.209-1.872 1.261-2.496.035-.416.182-.624.442-.624s.585.117.975.351c.39.234.585.425.585.572 0 .147-.087.334-.26.559zm2.522 4.914c0 .087-.06.178-.182.273-.121.095-.758.269-1.911.52s-1.95.377-2.392.377c-.442 0-.85-.074-1.222-.221-.373-.147-.559-.277-.559-.39 0-.113.065-.19.195-.234.13-.043.559-.134 1.287-.273.728-.139 1.274-.269 1.638-.39.728-.26 1.335-.39 1.82-.39.485 0 .828.078 1.027.234.2.156.299.32.299.494zm-6.578 3.744c1.11-.07 2.375-.225 3.796-.468 1.421-.243 2.206-.407 2.353-.494a.981.981 0 0 1 .507-.13c.45 0 .992.195 1.625.585.633.39.949.758.949 1.105a.51.51 0 0 1-.234.429c-.156.113-.403.351-.741.715-.338.364-.507.685-.507.962 0 .277.06.481.182.611.121.13.182.256.182.377 0 .243-.217.373-.65.39-2.41.121-4.697.295-6.864.52-.104.381-.251.572-.442.572-.19 0-.36-.108-.507-.325-.147-.217-.256-.524-.325-.923-.33-1.82-.585-2.908-.767-3.263-.182-.355-.273-.611-.273-.767 0-.156.126-.234.377-.234s.698.113 1.339.338zm.624 3.692l2.99-.39a76.492 76.492 0 0 0 1.911-.247.72.72 0 0 0 .403-.234c.121-.13.243-.438.364-.923.121-.485.182-.897.182-1.235 0-.338-.143-.507-.429-.507-.286 0-2.188.225-5.707.676.139 1.283.234 2.236.286 2.86z"
				fill="#FFF"></path></g></svg>
		<svg width="16" height="15" viewBox="0 0 16 15" id="question-msg">
			<defs>
			<path
				d="M26 13.786c0 3.747-3.582 6.785-8 6.785a9.363 9.363 0 0 1-2.178-.254S14.437 22.01 12.182 22c1.091-1.52 1.09-2.74 1.09-2.74C11.287 18.025 10 16.033 10 13.786 10 10.038 13.581 7 18 7c4.418 0 8 3.038 8 6.786z"
				id="fa"></path>
			<mask id="fb" x="0" y="0" width="16" height="15" fill="#fff">
			<use xlink:href="#fa"></use></mask></defs>
			<use mask="url(#fb)" xlink:href="#fa" transform="translate(-10 -7)"
				stroke="#49AC4F" stroke-width="2.207" fill="none"
				fill-rule="evenodd"></use></svg>
		<svg width="14" height="14" viewBox="0 0 14 14" id="question-remove">
			<g fill="none" fill-rule="evenodd">
			<circle fill="#C8C8C8" cx="7" cy="7" r="7"></circle>
			<path
				d="M7.178 6.118l-1.9-1.9a.75.75 0 0 0-1.054.006.744.744 0 0 0-.006 1.055l1.9 1.9-1.9 1.9a.75.75 0 0 0 .006 1.054.744.744 0 0 0 1.055.006l1.9-1.9 1.9 1.9a.75.75 0 0 0 1.054-.006.744.744 0 0 0 .006-1.055l-1.9-1.9 1.9-1.9a.75.75 0 0 0-.006-1.054.744.744 0 0 0-1.055-.006l-1.9 1.9z"
				fill="#FFF"></path></g></svg>
		<svg width="20" height="20" viewBox="0 0 20 20" id="question-staron">
			<path
				d="M15.262 19.913c-.167 0-.501 0-.668-.174l-4.676-3.304-4.676 3.304c-.5.348-1.002.348-1.503 0-.5-.348-.668-.87-.5-1.391l1.67-5.74-4.51-3.651a1.391 1.391 0 0 1-.333-1.392 1.26 1.26 0 0 1 1.168-.87l5.511-.347L8.75.783c.334-1.044 2.004-1.044 2.338 0l2.004 5.565 5.677.174a1.26 1.26 0 0 1 1.17.87c.166.521 0 1.043-.502 1.39l-4.508 3.827 1.503 5.739c.167.522 0 1.043-.501 1.391-.167 0-.334.174-.668.174z"
				fill="#F5A622" fill-rule="evenodd"></path></svg>
		<svg width="24" height="26" viewBox="0 0 24 26" id="question-unaccept">
			<path d="M9.5 18.5s6-15 14-18.5v9.5s-8 6-13.5 16L0 16l6-4.5 3.5 7z"
				fill="#EF5039" fill-rule="evenodd"></path></svg>
		<svg width="16" height="9" viewBox="0 0 16 9" id="question-votedown">
			<path
				d="M-.045.43l7.373 7.374a.808.808 0 0 0 1.143 0L15.844.43H-.045"
				fill="#AAA" fill-rule="evenodd"></path></svg>
		<svg width="16" height="9" viewBox="0 0 16 9" id="question-votedownon">
			<path
				d="M-.045.43l7.373 7.374a.808.808 0 0 0 1.143 0L15.844.43H-.045"
				fill="#EF5039" fill-rule="evenodd"></path></svg>
		<svg width="16" height="9" viewBox="0 0 16 9" id="question-voteup">
			<path
				d="M-.045 8.368L7.328.995a.808.808 0 0 1 1.143 0l7.373 7.373H-.045"
				fill="#AAA" fill-rule="evenodd"></path></svg>
		<svg width="16" height="9" viewBox="0 0 16 9" id="question-voteupon">
			<path
				d="M-.045 8.368L7.328.995a.808.808 0 0 1 1.143 0l7.373 7.373H-.045"
				fill="#49AB4F" fill-rule="evenodd"></path></svg>
		<svg width="20" height="20" viewBox="0 0 20 20" id="question_unstar">
			<path
				d="M15.262 19.913c-.167 0-.501 0-.668-.174l-4.676-3.304-4.676 3.304c-.5.348-1.002.348-1.503 0-.5-.348-.668-.87-.5-1.391l1.67-5.74-4.51-3.651a1.391 1.391 0 0 1-.333-1.392 1.26 1.26 0 0 1 1.168-.87l5.511-.347L8.75.783c.334-1.044 2.004-1.044 2.338 0l2.004 5.565 5.677.174a1.26 1.26 0 0 1 1.17.87c.166.521 0 1.043-.502 1.39l-4.508 3.827 1.503 5.739c.167.522 0 1.043-.501 1.391-.167 0-.334.174-.668.174z"
				fill="#E0DFDD" fill-rule="evenodd"></path></svg></defs></svg>
	<x-foo-define data-define="www_question_detail"></x-foo-define>
	<val data-name="question_id" data-value="2287129"></val>
	<val data-name="question_url"
		data-value=""></val>
	<style>
.header-navbar .top-banner .menus .mayun {
	color: #F8E71C;
	position: relative;
}

.header-navbar .top-banner .menus #icon_mayun {
	font-size: 12px;
	line-height: 18px;
	position: absolute;
	top: 10px;
	width: 36px;
	margin-left: 4px;
	padding: 0 3px;
	text-align: center;
	color: #fff;
	border-radius: 2px;
	background: #c71d24;
}

.header-navbar .top-banner .menus #icon_mayun:after {
	position: absolute;
	left: 0;
	display: inline-block;
	width: 36px;
	height: 18px;
	content: '';
	opacity: .6;
	background:  center
		no-repeat;
	background-size: contain;
}
</style>


    <section class="p-question-detail">
             <main class="box sc-container">
            
<style>
    main header section ul{
        padding-left: 40px;
        list-style-type: disc;
    }
</style>








<article class="box-aw main-container">
   
   
	
	
   
   
    <header class="body">
       <a href="<c:url value="/jsps/main/showAllArticle.action"></c:url>"><返回全部文章></a><p></p>
        <header class="question-title-wrapper">
                 <a class="cursor" href="#form_answer">
                <div class="jump-answer" title="跳到回复">
                    <div class="answer_count">${sessionScope.article.replyNum}</div>
                    <div>回答</div>
                </div>
            </a>
                                    <span class="question-title-link">
                ${request.article.title}
            </span>
        </header>

        <header class="text-jj">
             &nbsp;&nbsp;<img style="max-height: 32px; max-width: 32px;" src="./pic/hot3.png" align="absmiddle">     
        </header>
        <section class="box content-container">
            <aside class="box-fl">
                <div class="vote_collect_wrapper">
                    <div class="vote_collect">

                        <a class="vote_up  " data-violet="support" onclick="page.vote(this,2287129,true)" title="顶">
                        </a>
                        <span class="vote_count">0</span>

                        <a class="vote_down " data-violet="support" onclick="page.vote(this,2287129,false)" title="踩">
                        </a>
                    </div>
                    
                    <a data-violet="collect" class="collect collect_question tooltipstered" onclick="page.removeFavorite(this,2287129)" data-ajax="" data-tooltipster="{&quot;side&quot;:&quot;right&quot;,&quot;trigger&quot;:&quot;custom&quot;,&quot;triggerOpen&quot;:{&quot;mouseenter&quot;:true,&quot;click&quot;:true},&quot;triggerClose&quot;:{&quot;click&quot;:true,&quot;scroll&quot;:true,&quot;mouseleave&quot;: true}}">
                        <span class="collect-count">收藏(4)</span>
                    </a>
                </div>
            </aside>
            <main class="box-aw">
                <header class="detail">
                    <section class="wrap cke_editable cke_editable_themed cke_contents_ltr cke_show_borders clearfix">
                        <span class="titlespan">
			——作者:${request.article.username}&nbsp;&nbsp;发表时间：${request.article.date}&nbsp;&nbsp;阅读量：${request.article.hasread}
		</span>
	</div>
	<br />
	<br />
	<br />
	<div class="message">${request.article.content}</div>
	<br />
                    </section>
                    <style type="text/css">.clearfix {overflow: auto;zoom: 1;}</style>
                </header>
                <section style="margin-top:40px;">
                    <article class="poll">
                                            </article>

                    <article class="box">
                        <div class="box-aw">
                            <div class="box wrap vertical  toolbar_tags">
                                 <div class="box tooltipstered" data-ajax="" data-tooltipster="{&quot;side&quot;:&quot;bottom&quot;}">
                                      <a href="" class="tag project image" data-id="13965" title="微型Python框架 Flask"><img src="./pic/flask_hS2ku.png" height="18" class="prj_logo_18">${request.article.software}</a>
                                 </div>
                                
                                                                                                                                </div>
                            <div class="box vertical toolbar_socials">
                                <a class="report" onclick="">举报</a>
                                <a style="cursor: default;" class="share" href="javascript:void(0);">分享</a>
                                <div class="bdsharebuttonbox bdshare-button-style0-16" data-bd-bind="1537407164929">
                                    <a class="bds_tsina" data-cmd="tsina" data-violet="share" title="分享到新浪微博"></a>
                                    <a class="bds_tqq" data-cmd="tqq" data-violet="share" title="分享到腾讯微博"></a>
                                    <a class="bds_weixin" data-cmd="weixin" data-violet="share" title="分享到微信"></a>
                                </div>
                                                                

                                                                                                                            </div>
                        </div>
                        <div class="box-fr question-author">
                            <div class="box" title="${request.article.username}">
                                <div class="vertical box-aw author-info">
                                    <a class="author-name" href="https://my.oschina.net/hardbone" target="_blank">
                                        ${request.article.username}
                                    </a>
                                    <div class="summary">
                                        <span class="pub_time">发帖于${request.article.date}</span>
                                        <span class="answer_view_count">
                                            <a href="" class="answer_count">${sessionScope.article.replyNum}回</a>/<a class="view_count">${sessionScope.article.readNum}阅</a>
                                        </span>
                                    </div>
                                </div>
                                <div class="box-fr">
                                    <a class="ahthor-img" href="" target="_blank">
                                        <img src="./pic/2720166_50.jpg" align="absmiddle" alt="${request.article.username}" title="${request.article.username}" class="SmallPortrait" user="2720166">                                    </a>
                                </div>
                            </div>
                        </div>
                    </article>
                </section>
                            <footer class="additional_remarks" id="additional_remarks">
                                    </footer>
            </main>
        </section>
    </header>
	
	
	
	
<div id="answer_list_content_pjax">
		<style type="text/css">
.question_answer_header {
	font-size: 14px;
	height: 32px;
	margin: 0 0 15px;
	box-shadow: inset 0 -1px 0 0 #D8D8D8;
}

.question_answer_count {
	font-size: 16px;
	color: #111;
}

.last_answers {
	font-size: 14px;
	color: #898989;
}

.answer_sort {
	font-size: 12px;
	color: #111;
}

.answer_sort.current {
	color: #49AB4F;
}

.question_answer_list {
	margin-top: 30px;
}
</style>
<footer class="question_answer_list"> 
	<header 	class="box question_answer_header">
		<div class="box-aw">
			<span class="question_answer_count">共有<span
				id="question_comment_total_count">${sessionScope.article.replyNum}</span>个答案
			</span> <a class="last_answers"
				href="">
				最后回答: 10分钟前 </a>
		</div>

		<div class="box-fr">
			<a	href=""	class="answer_sort current"> 按票数排序</a> 
			<a	href=""	class="answer_sort "> 显示最新答案 </a>
		</div>
		</header> 
<article id="anser_list" class="answer_list"> 
	<s:set name="loushu" value="#request.page.beginIndex"></s:set>
	<s:iterator value="#request.allCri" id="cri">
	<s:set name="loushu" value="#loushu + 1"></s:set>
		<section	class="box answer " id="answer_1385062"> 
			<aside		class="box-fl">
				<div class="vote_collect_wrapper answer_vote">
					<div class="vote_collect answer_vote">
						<a class="vote_up " onclick="page.voteAnswer(this,1385062,true)"
							id="${data.infoId}" title="顶"> </a> 
							<span class="vote_count">${data.voteNum}</span>
						<a class="vote_down " onclick="page.voteAnswer(this,1385062,false)"
							id="${data.infoId}" title="踩"> </a>
					</div>	

				</div>
			</aside> 
		<article class="box-aw" style="margin-right:25px;"> 
		<header		class="wrap answer_detail">
		<p align="right"><s:property value="#loushu"/>楼</p>
		<p>
			<a href="" class="referer"
				target="_blank"></a> ${cri.content} 
		</p>

		</header> 
<!-- 		<section class="answer_replies" id="answer_replies_1385062">
		<header class="answer_reply_title">--- 共有 1 条评论 ---</header> 
		<section	class="answer_reply_list">
		<div class="answer_reply" id="answer_reply_1385126">
			<div class="anser_reply_content">
				<a class="user" href="https://my.oschina.net/encro">encro</a>： 
				<span	class="content">如果打算从事python，建议都学，无论从那个入手都是很快地。</span> 
				<span	class="pub_time">18分钟前</span> 
				<span class="toolbar"> 
				<a	onclick="page.commentAnswer(1385062,567782,&#39;#answer_replies_1385062&#39;)"	class="reply">回复</a>
				</span>
			</div>
		</div>
		</section> 
		<footer class="answer_reply_pager"> 
		</footer> 
</section>  -->
<!-- <footer class="box vertical answer_toolbar"> 
		<a	class="answer_tool cursor"	onclick="page.commentAnswer(1385062,0,&#39;#answer_replies_1385062&#39;)">评论(1)</a>
		<a class="answer_tool"	href="https://www.oschina.net/question/answer?question=2287129&amp;answer=1385062">
			引用此答案 </a> 
		<a class="cursor answer_report"		onclick="page.report(1385062,17,&#39;https://www.oschina.net/question/2720166_2287129#AnchorAnswer1385062&#39;)">举报</a>
</footer>  -->
		</article> 
		<aside class="box box-fr answer_user" title="${cri.username}">
		<div class="box-aw user_info">
			<a class="wrap user_name" href=""
				target="_blank">${cri.username}</a>
			<div class="reply-time" title="${data.TIME}">14小时前</div>
		</div>
		<div class="box-fr">
			<a href="" target="_blank"
				class="user_img"> <img	src=""
				align="absmiddle" alt="${cri.username}" title="${cri.username}" class="SmallPortrait"
				user="${cri.username}">
			</a>
		</div>
	</aside> 
  </section> 
  </s:iterator>




</article>
		<style type="text/css">
.paging {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-justify-content: flex-end;
	justify-content: flex-end;
	-ms-flex-pack: end;
	-moz-box-pack: end;
	-webkit-box-pack: end;
	width: 100%;
	right: 0;
	margin: 20px 0;
}

.paging li, .paging .page {
	display: inline-block;
	height: 32px;
	font-size: 16px;
	text-align: center;
	color: #c9c9c9;
	box-shadow: inset 0 0 0 1px #c9c9c9;
	transition: box-shadow .2s, color .2s;
	margin-right: 10px;
}

.paging li a, .paging .page a {
	padding: 0 10px;
	height: 32px;
	line-height: 32px;
	display: block;
	color: #999;
}

.paging li:hover, .paging .page:hover, .paging li.current, .paging .page.current,
	.paging li.active, .paging .page.active {
	color: #4eaa4c;
	box-shadow: inset 0 0 0 1px #4eaa4c;
}

.paging li:hover a, .paging .page:hover a, .paging li.current a, .paging .page.current a,
	.paging li.active a, .paging .page.active a {
	color: #4eaa4c;
}

.paging ul, .paging .pager {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
}

.paging li:last-child {
	margin-right: 0;
}
</style>
		
  
  <div align="right">
   <s:if test="#request.page.hasPrePage">
		<a href="showArticle.action?id=${requestScope.article.id}&currentPage=1">首页</a>
		<a href="showArticle.action?id=${requestScope.article.id}&currentPage=${page.currentPage -1 }">上一页</a>
	</s:if>
	<s:else>
		首页
		上一页
	</s:else>
	
	<s:if test="#request.page.hasNextPage">
		<a href="showArticle.action?id=${requestScope.article.id}&currentPage=${page.currentPage + 1 }">下一页</a>
		<a href="showArticle.action?id=${requestScope.article.id}&currentPage=${page.totalPage }">尾页</a>			
	</s:if>
	<s:else>
		下一页
		尾页
	</s:else>
  </div>



	</footer>
</div>

                   
  
    <style type="text/css">
    .answer_pub_form {
        margin: 40px 0;
    }

    .answer_pub_form .toolbar {
        margin: 15px 0 0 0;
        height: 26px;
    }

    #txt_answner{
        width: 100%;
        resize: none;
        border-radius: 2px;
        border: 1px solid #ddd;
        min-height: 161px;
    }

    .answer_pub_form .submit_button{
        text-align: center;
        font-size: 14px;
        height: 26px;
        background: #49AB4F;
        color: #fff;
        padding: 0 8px;
        border-radius: 2px;
        border: none;
        outline: none;
        cursor: pointer;
    }
</style>

<section class="answer_pub_form">
    
  
    <s:actionerror/>
    <form action="addCritique.action" method="post">
     <input type="hidden" name="id" value='${requestScope.article.id }'/>   
       		 
					<textarea  id="liuyan"  name="content" style="width: 800px; height: 200px; margin: 0 auto;" >
					</textarea>
 			
				
			       
      			  <div class="box vertical toolbar">
           			 <div class="box-aw">
          		                      <span class="error_msg" v-text="tipMsg"></span>
           			 </div>
          		  <div class="box-fr">
                	<input id="submit-reply" name="submit-reply" value="提交回答" type="submit" class="submit_button" data-violet="comment">
            		</div>
       			 </div>
       		
    </form>
   
</section>

 
</article>

<script type="text/javascript" >
                     
                      var ue = UE.getEditor('liuyan', {toolbars: [
       						 ['undo', 'redo', 'bold', 'indent','italic', 'underline','formatmatch', 
       						 'selectall','horizontal','fontfamily','fontsize','emotion','fullscreen'        
   							 ]],
   							 autoHeightEnabled: true,
   							 autoFloatEnabled: true,
   							 maximumWords:300   							 
						});
					
			</script>



<aside class="box-fr aside-container right_toolbar">
    <div class="aside-card quesiton_author">
        <div class="box vertical author_user" title="${request.article.username}">
            <a href="" class="box-fl author_img">
                <img src="./pic/2720166_50.jpg" align="absmiddle" alt="${request.article.username}" title="${request.article.username}" class="SmallPortrait" user="2720166">            </a>
            <div class="box-aw author_info">
                <div class="author_name">
                    作者：<a href="">@${request.article.username}</a>
                </div>
                <div class="last_login_time">
                    最近登录：3小时前
                </div>
            </div>
        </div>
                    </div>
                			 					<div class="jj">
			<a name="question_banner_one">
			</a><a data-traceid="questionbanner01" data-tracepid="question_banner_one" href="" target="_blank" title="kubecon">
				
			</a>
            			</div>
				                    <div class="aside-card list-card">
            <div class="box vertical list-title">
                <div class="box-aw">${request.article.username}的其它问题</div>
                <a href="" class="box-fr more">
                    全部
                </a>
            </div>
            <ul>
                                    <li class="list-item">
                                                <a class="sc sc-text wrap list-content" href="" title="#秀出你的十周年#话题活动中奖名单，快看看是否有你！">#秀出你的十周年#话题活动中奖名单，快看看是否有你！</a>
                        <div class="toolbar">
                            (3回/261阅,2周前)
                        </div>
                    </li>
                                    <li class="list-item">
                                                <a class="sc sc-text wrap list-content" href="" title="开源中国翻译频道贡献 2018 年 7-8 月奖励名单">开源中国翻译频道贡献 2018&nbsp;年 7-8&nbsp;月奖励名单</a>
                        <div class="toolbar">
                            (1回/233阅,2周前)
                        </div>
                    </li>
                 
                            </ul>
        </div>
                            			 					<div name="question_banner_two" data-traceid="questionbanner02" data-tracepid="question_banner_two">
			<center>
<!-- osc_news_details_sidebar_1_ad_250x250 -->

</center>
            </div>
				                <div class="aside-card list-card">
                            <div class="list-title">类似的话题</div>
            <ul>
                                                            <li class="list-item">
                            <a class="sc sc-text wrap list-content" href="" title="python flask 不同IP显示 不同图片？新手求高人">python flask 不同IP显示 不同图片？新手求高人</a>
                            <div class="toolbar">(3回/1K+阅, 5年前)</div>
                        </li>
                                                                                <li class="list-item">
                            <a class="sc sc-text wrap list-content" href="" title="微信接入，服务器配置时出现的错误">微信接入，服务器配置时出现的错误</a>
                            <div class="toolbar">(1回/2K+阅, 3年前)</div>
                        </li>
                         
                                                </ul>
            </div>
</aside>        </main>
    </section>
    <div style="display: none;"><div id="loading-effect" style="display:none;">
    <div class="sk-circle">
        <div class="sk-circle1 sk-child"></div>
        <div class="sk-circle2 sk-child"></div>
        <div class="sk-circle3 sk-child"></div>
        <div class="sk-circle4 sk-child"></div>
        <div class="sk-circle5 sk-child"></div>
        <div class="sk-circle6 sk-child"></div>
        <div class="sk-circle7 sk-child"></div>
        <div class="sk-circle8 sk-child"></div>
        <div class="sk-circle9 sk-child"></div>
        <div class="sk-circle10 sk-child"></div>
        <div class="sk-circle11 sk-child"></div>
        <div class="sk-circle12 sk-child"></div>
    </div>
</div></div>
    <div id="v-report">
        <comp-report :param="{action:&#39;/action/communityManage/reportv2&#39;}"></comp-report>
    </div>
                                                        
<input type="hidden" value="8013699f-af08-472d-8ae6-f0dbc5c531a1" id="uu">
    <input type="hidden" value="0" id="oo">



    <div class="item tool-top" style="display: none;">
        <a href="javascript:void(0)" class="over">
            <div class="icon">
                <i class="icon-svg icon-go-top"></i>
            </div>
            <div class="txt">顶部</div>
        </a>
    </div>
    <style type="text/css">
    .common-footer .osc-map {
        font-size: 0;
        padding: 16px 0 0;
        background: #FAFAFA;
    }

    .common-footer .box {
        overflow: hidden;
        width: 100%;
        max-width: 1200px;
        margin: 0px auto;
    }

    .common-footer .map-header{
        font-size: 12px;
        font-weight: normal;
        margin: 0 0 10px;
        height: 18px;
        color: #4A4A4A;
    }
    .common-footer .map-header.bigger{font-weight: bold;}

    .common-footer .map-link{
        position: relative;
        font-size: 12px;
        display: block;
        line-height: 20px;
        color: #4A4A4A;
        transition:color .2s;
    }

    .common-footer .map-link:hover{
        color:#21B351;
    }

    .common-footer .icon_mayun{
        position: absolute;
        font-size: 12px;
        color: #fff;
        background: #C71D24;
        padding: 0 3px;
        border-radius: 2px;
        margin-left: 4px;
        line-height: 18px;
        width: 36px;
        text-align: center;
    }
    .common-footer .icon_mayun:after{
        content: '';
        display: inline-block;
        position: absolute;
        left: 0;
        width: 36px;
        height: 18px;
        background:  center;
        background-size: contain;
        opacity: 0.6;
    }
    .common-footer .wechat{margin: 0 auto;}

    .common-footer .osc-footer {
        background: #444444;

    }
    .common-footer .content-wrapper{
        width:1200px;
        margin:0 auto;
        height: 36px;
    }
    .common-footer .osc-footer *{
        font-size: 12px;
        color: #CFCFCF;
    }
    .common-footer .dl_mob{
        transition:All 0.4s ease-in-out;
        -webkit-transition:All 0.4s ease-in-out;
        -moz-transition:All 0.4s ease-in-out;
        -o-transition:All 0.4s ease-in-out;
        width:120px;
        height:122px;
        display:block;
        margin-bottom: -11px;
        z-index: -1;
    }
    .common-footer .dl_mob:hover {
        transform:translate(0,-10px);
        -webkit-transform:translate(0,-10px);
        -moz-transform:translate(0,-10px);
        -o-transform:translate(0,-10px);
        -ms-transform:translate(0,-10px);
    }
    .merge{
        width: auto!important;
        margin: 0!important;
    }
    figure{
        margin: 0;
    }
</style>

          
    

            
        			
                
<!-- Generated by OsChina.NET (init:0[ms],page:102[ms],ip:183.30.124.186) --></body>
</html>
