﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0085)https://www.oschina.net/home/login?goto_page=https%3A%2F%2Fwww.oschina.net%2Fquestion -->
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='<c:url value="/jsps/user/js/log.js"></c:url>' type="text/javascript" charset="utf-8"></script>
<script src='<c:url value="/jsps/user/js/jquery-3.1.0.js"></c:url>' type="text/javascript" charset="utf-8"></script>
<link href="./css/login-main-039747cacbd4818e53205f1c5623cc4069967dee.css" type="text/css" rel="stylesheet"/>

<style>
.ie_dialog {
	position: fixed;
	z-index: 10000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: #FAFAFA !important;
	display: none;
}

.ie_notice .logo_osc {
	display: block;
	margin: 0 auto;
	padding-bottom: 24px;
}

.ie_notice h2, .ie_notice h4 {
	margin: 0;
	text-align: center;
}

.ie_notice .title {
	font-size: 28px;
	color: #4A4A4A;
}

.ie_notice .subtitle {
	font-size: 20px;
	color: #9B9B9B;
	font-weight: normal;
}

.ie_notice .ie_box {
	width: 560px;;
	margin: 24px auto;;
	background: #FFFFFF;
	border: 1px solid #E6E6E6;
	box-shadow: 0 2px 0 0 rgba(0, 0, 0, 0.10);
	border-radius: 4px;
	display: table !important;
}

.ie_notice .ie_box .desc {
	font-size: 14px;
	color: #6D6D6D;
	line-height: 22px;
	padding: 20px;
}

.ie_notice .ie_box a {
	display: inline-block;
	width: 30%;
	text-align: center;
}

.ie_notice .ie_box .go {
	width: 100%;
	background: #F6F6F6;
	font-size: 16px;
	color: #9B9B9B;
	padding: 16px 0;
	text-align: center;
	border: none;
	margin-top: 20px;
	text-decoration: none;
}

.ie_notice .ie_box a img {
	border: none;
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
</head>
<body class="sc">
	<center class="ie_dialog" id="incompatible_tip">
		<div>
			<br>
			<table class="ie_notice" style="border:0">
				<tbody>
					<tr>
						
					</tr>
					<tr>
						<td><h2 class="title">我们不支持 IE 10 及以下版本浏览器</h2></td>
					</tr>
					<tr>
						<td><h4 class="subtitle">It appears you’re using an
								unsupported browser</h4></td>
					</tr>
					<tr>
						<td>
							<div class="ie_box">
								<div class="desc">为了获得更好的浏览体验，我们强烈建议您使用较新版本的 Chrome、
									Firefox、 Safari 等，或者升级到最新版本的IE浏览器。 如果您使用的是 IE 11
									或以上版本，请关闭“兼容性视图”。</div>
								<div class="logos">
									<a
										href="http://www.google.cn/chrome/browser/desktop/index.html"
										target="_blank" title="下载Chrome浏览器"> 
									</a> <a href="http://www.firefox.com.cn/" target="_blank"
										title="下载Firefox浏览器"> 
									</a> <a
										href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie"
										target="_blank" title="升级IE浏览器"> 
									</a>
								</div>
								<div>
									<a href="javascript:void(0);"
										onclick="document.getElementById(&#39;incompatible_tip&#39;).style.cssText = &#39;display:none;&#39;;"
										class="go">继续访问</a>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</center>

	<script>
    var isIE = (function () {
        var browser = {};
        return function (ver, c) {
            var key = ver ? ( c ? "is" + c + "IE" + ver : "isIE" + ver ) : "isIE";
            var v = browser[key];
            if (typeof(v) != "undefined") {
                return v;
            }
            if (!ver) {
                v = (navigator.userAgent.indexOf('MSIE') !== -1 || navigator.appVersion.indexOf('Trident/') > 0);
            } else {
                var match = navigator.userAgent.match(/(?:MSIE |Trident\/.*; rv:|Edge\/)(\d+)/);
                if (match) {
                    var v1 = parseInt(match[1]);
                    v = c ? ( c == 'lt' ? v1 < ver : ( c == 'gt' ? v1 > ver : undefined ) ) : v1 == ver;
                } else if (ver <= 9) {
                    var b = document.createElement('b')
                    var s = '<!--[if ' + (c ? c : '') + ' IE ' + ver + ']><i></i><![endif]-->';
                    b.innerHTML = s;
                    v = b.getElementsByTagName('i').length === 1;
                } else {
                    v = undefined;
                }
            }
            browser[key] = v;
            return v;
        };
    }());

        if (isIE(11, 'lt')) {
        console.log("fvck ie");
                document.getElementById('incompatible_tip').style.cssText = 'display:block;';
    }

</script>


	<meta http-equiv="Content-Language" content="zh-CN">
	<meta name="referrer" content="always">
	<meta name="robots" content="index, follow">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="开源中国,登录/注册">

	<meta name="description" content="登录/注册 - 开源中国社区">
	<title>登录 - 开源中国社区</title>

	
	

	<!--======================================logo icon svg======================================-->
	<x-foo-define data-define="www_login"></x-foo-define>
	<header class="home-header"> <a
		href="https://www.oschina.net/"><span class="logo"></span></a> </header>
	<val data-name="captcha" data-value="/action/user/captcha?t="></val>
	<val data-name="hash_login" data-value="/action/user/hash_login?from="></val>
	<val data-name="before_login"
		data-value="/action/user/before_login?email="></val>
	<val data-name="get_qrcode" data-value="/action/user/get_qrcode"></val>
	<val data-name="long_connection"
		data-value="/action/user/long_connection"></val>
	<val data-name="login_success"
		data-value="https://www.oschina.net/question"></val>
	<section class="box vertical home-wrapper">
	<div class=" login-body">
		<nav class="login-tabs"> <span class="tab-item"
			data-tab-for="account_login"> <i class="ic-svg ic-pc-white"></i>
			<span class="hide">帐号登录</span>
		</span> <span class="tab-item active" data-tab-for="wechat_login"> <i
			class="ic-svg ic-qw-white"></i> <span class="hide">扫码登录</span>
		</span> <span class="tab-bg"></span> </nav>
		<div class="text-center login-title">登录</div>
		<div class="box">
			<div class="box-aw login-box">
				<article>
				<div class="account-login tab-box" id="account_login">
					<form id="Form1" action="login.action" method="post">
						<div class="login-form form-wrapper">
							<div class="form-item">
								<div class="form-ctrl">
									<input type="text" id="username" name="username" value="" placeholder="用户名">
									<span class="spanDiv" id="spanDiv"></span>
								</div>
								<div class="form-tips"></div>
							</div>
							<div class="form-item">
								<div class="form-ctrl">
									<input type="password" name="password" id="password" value=""
										placeholder="请输入密码">
								</div>
								<div class="form-tips"></div>
							</div>
							<div class="form-item box v-code hide">
								<div class="form-ctrl box-aw">
									<input type="text" maxlength="4" id="f_vcode" value=""
										placeholder="四位验证码">
								</div>
								<div class="box form-v-code box-fr vertical">
									
								</div>
								<div class="form-tips"></div>
							</div>
							<div class="form-item box">
								<div class="box-aw rememb">
									<div class="checkbox-group">
										<input type="checkbox" checked="checked" id="save_login">
										<label for="save_login" class="checkbox"> 记住密码 </label>
									</div>
								</div>
								<!-- <div class="box-fr">
									<a href="https://www.oschina.net/home/reset-pwd"
										class="btn btn-link"> 忘记密码? </a>
								</div> -->
							</div>
							<div class="form-item form-button">
								<div class="form-tips"></div>
								<button type="submit" id="submit" class="btn btn-green block btn-login">
									登录</button>
							</div>
						</div>
					</form>
				</div>
				<div class="wechat-login tab-box hide" id="wechat_login">
					<div class="text-center">
						<div>手机扫描，安全登录</div>
						
						<div class="">
							使用 <a href="https://www.oschina.net/app" class="btn btn-link">OSC客户端</a>
							扫描二维码安全快速登录
						</div>
					</div>
				</div>
				</article>
			</div>
			<div class="box-fr other-login-wrapper">
				<span class="span-box"> 没有账号? </span> <a
					href="./register.jsp"
					class="btn btn-link btn-lg btn-logon"> 立即注册 → </a>
				<svg xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" width="0" height="0"
					style="position:absolute;"> <defs> <svg width="83"
					height="83" viewBox="0 0 83 83" id="icon-logo-github"> <path
					d="M0 42.556c0 18.805 11.894 34.738 28.383 40.37.26.055.482.074.704.074 1.538 0 2.13-1.13 2.13-2.112 0-1.019-.036-3.687-.055-7.244-1.556.352-2.946.5-4.187.5-7.985 0-9.8-6.206-9.8-6.206-1.89-4.91-4.614-6.225-4.614-6.225-3.612-2.539-.018-2.613.26-2.613 4.186.371 6.373 4.41 6.373 4.41 2.075 3.631 4.854 4.65 7.336 4.65 1.946 0 3.706-.63 4.743-1.112.37-2.742 1.445-4.613 2.631-5.687-9.208-1.075-18.897-4.725-18.897-21.028 0-4.65 1.612-8.449 4.26-11.412-.425-1.075-1.852-5.41.409-11.265 0 0 .296-.093.926-.093 1.5 0 4.89.575 10.486 4.465 3.316-.945 6.855-1.408 10.393-1.426 3.52.018 7.078.481 10.394 1.426 5.595-3.89 8.986-4.465 10.486-4.465.63 0 .926.093.926.093 2.26 5.854.834 10.19.408 11.265 2.65 2.982 4.261 6.78 4.261 11.412 0 16.34-9.708 19.935-18.953 20.99 1.482 1.316 2.816 3.91 2.816 7.875 0 5.687-.055 10.282-.055 11.671 0 1 .574 2.131 2.112 2.131.222 0 .482-.019.74-.074C71.125 77.294 83 61.342 83 42.556 83 19.064 64.418 0 41.5 0S0 19.064 0 42.556z"
					fill="#0A0203" fill-rule="evenodd"></path> </svg> <svg width="82"
					height="83" viewBox="0 0 82 83" id="icon-logo-google"> <g
					fill="#3D83ED" fill-rule="evenodd"> <path
					d="M32.374 22.679c-3.228-.097-5.395 3.2-4.835 7.503.554 4.309 3.625 7.317 6.852 7.418 3.223.095 5.077-2.675 4.522-6.985-.554-4.303-3.317-7.836-6.54-7.936zM33.727 46.41c-4.808-.054-8.88 3.086-8.88 6.728 0 3.715 3.47 6.81 8.28 6.81 6.758 0 9.114-2.905 9.114-6.622 0-.448-.056-.887-.153-1.311-.532-2.102-2.634-3.255-5.248-5.1a10.278 10.278 0 0 0-3.113-.504z"></path>
				<path
					d="M40.62.056C18.187.056 0 18.541 0 41.34 0 64.14 18.187 82.62 40.62 82.62c22.436 0 40.619-18.48 40.619-41.28C81.239 18.54 63.056.055 40.619.055zm3.104 30.378c0 2.692-1.463 4.858-3.536 6.5-2.022 1.608-2.405 2.279-2.405 3.645 0 1.163 2.415 2.897 3.527 3.741 3.866 2.948 4.65 4.802 4.65 8.487 0 4.6-4.88 9.172-12.807 9.172-6.957 0-12.828-2.873-12.828-7.474 0-4.666 4.87-9.534 11.826-9.534.759 0 1.452-.021 2.17-.021-.95-.937-1.72-1.747-1.72-3.167 0-.847.263-1.653.636-2.374-.377.025-.764.05-1.162.05-5.71 0-9.039-4.08-9.039-9.197 0-5.009 5.064-9.564 11.138-9.564h11.974l-2.677 2.858h-3.144c2.221 1.29 3.397 3.944 3.397 6.878zm17.191-.75h-5.524v5.608h-2.762v-5.609H47.11v-2.806h5.518V21.26h2.762v5.616h5.524v2.806z"></path>
				</g> </svg> <svg width="83" height="83" viewBox="0 0 83 83"
					id="icon-logo-linkedin"> <defs> <lineargradient
					x1="14.645%" y1="14.645%" x2="85.355%" y2="85.355%" id="ca">
				<stop stop-color="#2489BE" offset="0%"></stop> <stop
					stop-color="#0575B3" offset="100%"></stop> </lineargradient> </defs> <path
					d="M41.5.004C18.582.004.004 18.582.004 41.5c0 22.918 18.578 41.496 41.496 41.496 22.918 0 41.496-18.578 41.496-41.496C82.996 18.582 64.417.004 41.5.004zM30.429 61.561h-9.111V32.127h9.11V61.56zM25.83 28.272c-2.975 0-5.388-2.432-5.388-5.431 0-3 2.413-5.431 5.388-5.431s5.387 2.431 5.387 5.431-2.412 5.431-5.387 5.431zm38.742 33.29h-9.067V46.11c0-4.238-1.61-6.603-4.96-6.603-3.647 0-5.553 2.463-5.553 6.603v15.45h-8.738V32.127h8.739v3.964s2.628-4.862 8.87-4.862c6.24 0 10.709 3.811 10.709 11.695V61.56z"
					fill="url(#ca)" fill-rule="evenodd"></path> </svg> <svg width="83"
					height="83" viewBox="0 0 83 83" id="icon-logo-qq"> <path
					d="M41.5 0C18.58 0 .002 18.58.002 41.5S18.58 83 41.5 83c22.92 0 41.498-18.58 41.498-41.5S64.42 0 41.5 0zm22.848 54.434c-1.072 1-2.912-.09-4.68-2.537a26.78 26.78 0 0 1-2.93 5.7c2.501.893 4.109 2.286 4.109 3.858 0 2.716-4.806 4.913-10.736 4.913-3.52 0-6.628-.768-8.593-1.965-1.947 1.197-5.074 1.965-8.593 1.965-5.93 0-10.736-2.197-10.736-4.913 0-1.554 1.608-2.965 4.109-3.859a25.975 25.975 0 0 1-2.93-5.699c-1.768 2.43-3.608 3.538-4.68 2.537-1.465-1.375-.911-6.235 1.268-10.844.5-1.054 1.036-2 1.59-2.822.303-13.399 9.128-24.154 19.954-24.154h.036c10.825 0 19.65 10.737 19.954 24.154.554.821 1.09 1.768 1.59 2.822 2.161 4.61 2.733 9.469 1.268 10.844z"
					fill="#2A9CD5" fill-rule="evenodd"></path> </svg> <svg width="83"
					height="83" viewBox="0 0 83 83" id="icon-logo-stackoverflow">
				<g fill="none" fill-rule="evenodd"> <circle fill="#0A0203"
					cx="41.5" cy="41.5" r="41.5"></circle> <g
					transform="translate(25.938 20.75)" fill="#FFF"> <path
					d="M23.702 28.303L7.436 24.23l.79-3.359 16.265 4.074-.79 3.36M24.792 24.284L9.888 16.42l1.523-3.078 14.905 7.864-1.524 3.078M27.088 20.121L14.484 8.751l2.202-2.604L29.29 17.518l-2.203 2.603M30.556 16.462l-9.4-14.3L23.926.22l9.4 14.3-2.77 1.942M23.442 32.505l-16.713-.942.182-3.452 16.713.942-.182 3.452"></path>
				<path
					d="M26.907 40.635v-14.32h3.344l.003 17.778H0V26.3h3.348v14.335h23.559"></path>
				<path d="M6.682 33.736h16.852v3.456H6.682z"></path> </g> </g> </svg> <svg
					width="83" height="83" viewBox="0 0 83 83" id="icon-logo-wechat">
				<path
					d="M46.977 41.466c-.947 0-1.893.879-1.893 1.961 0 .879.946 1.758 1.893 1.758 1.42 0 2.434-.88 2.434-1.758 0-1.082-1.014-1.96-2.434-1.96zm-6.22-9.128c1.487 0 2.434-.946 2.434-2.367 0-1.487-.947-2.366-2.435-2.366-1.42 0-2.772.879-2.772 2.366 0 1.421 1.353 2.367 2.772 2.367zM41.5 0C18.58 0 0 18.58 0 41.5S18.58 83 41.5 83 83 64.42 83 41.5 64.42 0 41.5 0zm-7.843 52.014c-2.502 0-4.328-.405-6.694-1.082l-6.83 3.449 1.962-5.815c-4.8-3.38-7.64-7.64-7.64-12.847 0-9.196 8.654-16.228 19.202-16.228 9.33 0 17.648 5.545 19.27 13.389a9.36 9.36 0 0 0-1.825-.203c-9.196 0-16.295 6.896-16.295 15.213 0 1.42.202 2.704.54 4.057-.54.067-1.15.067-1.69.067zm28.196 6.626l1.352 4.869-5.14-2.908c-1.96.406-3.853 1.014-5.814 1.014-9.06 0-16.228-6.22-16.228-13.928 0-7.708 7.168-13.929 16.228-13.929 8.587 0 16.295 6.22 16.295 13.929 0 4.327-2.907 8.18-6.693 10.953zM27.369 27.605c-1.42 0-2.908.879-2.908 2.366 0 1.42 1.488 2.367 2.908 2.367 1.352 0 2.434-.946 2.434-2.367 0-1.487-1.082-2.366-2.434-2.366zm30.224 13.861c-1.015 0-1.894.879-1.894 1.961 0 .879.88 1.758 1.894 1.758 1.352 0 2.366-.88 2.366-1.758 0-1.082-1.014-1.96-2.366-1.96z"
					fill="#51C332" fill-rule="evenodd"></path> </svg> <svg width="83"
					height="83" viewBox="0 0 83 83" id="icon-logo-weibo"> <g
					fill="#E32932" fill-rule="evenodd"> <path
					d="M33.303 49.286c-1.456-.608-3.335.019-4.232 1.42-.909 1.409-.482 3.086.961 3.741 1.466.667 3.412.034 4.32-1.41.893-1.46.423-3.126-1.05-3.751zM36.888 47.804c-.557-.22-1.256.047-1.583.594-.317.55-.142 1.176.417 1.406.568.234 1.296-.037 1.623-.597.315-.562.11-1.195-.457-1.403z"></path>
				<path
					d="M34.619 38.084c-9.39.927-16.513 6.658-15.902 12.8.61 6.147 8.717 10.378 18.11 9.454 9.393-.926 16.513-6.657 15.903-12.806-.609-6.142-8.717-10.373-18.111-9.448zm8.241 14.494c-1.917 4.32-7.43 6.623-12.108 5.12-4.515-1.452-6.427-5.896-4.45-9.9 1.94-3.924 6.993-6.143 11.462-4.984 4.627 1.191 6.988 5.54 5.096 9.764z"></path>
				<path
					d="M41.46.081C18.563.081 0 18.643 0 41.541 0 64.437 18.563 83 41.46 83c22.897 0 41.459-18.563 41.459-41.46 0-22.897-18.562-41.459-41.46-41.459zm-4.573 64.374c-11.77 0-23.802-5.685-23.802-15.035 0-4.888 3.108-10.541 8.46-15.877 7.146-7.12 15.48-10.364 18.614-7.24 1.383 1.378 1.518 3.763.629 6.61-.464 1.433 1.349.64 1.349.643 5.777-2.41 10.815-2.552 12.658.07.983 1.397.887 3.358-.017 5.629-.42 1.046.128 1.209.928 1.447 3.254 1.007 6.877 3.438 6.877 7.724-.002 7.094-10.266 16.029-25.696 16.029zm21.308-29.732a3.546 3.546 0 0 0-.745-3.487 3.593 3.593 0 0 0-3.404-1.096v-.002a1.863 1.863 0 1 1-.781-3.644 7.322 7.322 0 0 1 6.963 2.244 7.256 7.256 0 0 1 1.526 7.131 1.872 1.872 0 0 1-2.354 1.203 1.866 1.866 0 0 1-1.204-2.348h-.001v-.001zm10.898 3.508v.009a2.175 2.175 0 0 1-2.736 1.39 2.163 2.163 0 0 1-1.401-2.726v-.002a10.616 10.616 0 0 0-2.232-10.41c-2.649-2.925-6.555-4.043-10.163-3.279a2.173 2.173 0 0 1-2.578-1.666 2.165 2.165 0 0 1 1.671-2.568h.002c5.072-1.075 10.57.495 14.296 4.613 3.726 4.11 4.73 9.72 3.141 14.64z"></path>
				</g> </svg> <svg width="425.197px" height="425.197px"
					viewBox="0 0 425.197 425.197" id="icon-logo-csdn"> <g
					display="none"> <path display="inline" fill="#FFFFFF"
					d="M254.371,1231.77c34.316-24.4,63.848-62.4,88.579-114.013l19.76,7.322
		c1.269,1.406,1.866,2.452,1.779,3.138c-0.089,0.703-1.268,1.406-3.533,2.092c-3.732,0.703-7.023,3.842-9.911,9.414
		c-5.602,9.774-12.467,20.92-20.599,33.472l-21.042,165.268c-0.62,4.868-1.285,12.895-1.975,24.056h-18.516
		c1.869-9.069,3.265-17.094,4.151-24.056l17.712-139.118c-11.222,13.958-23.573,28.242-37.046,42.886
		C268.445,1238.047,261.996,1234.564,254.371,1231.77z M322.364,1347.874c28.918-10.46,51.61-26.149,68.074-47.067l15.273,8.366
		c1.356,0.704,1.997,1.405,1.91,2.094c-0.09,0.701-1.267,1.404-3.533,2.09c-3,0.703-6.98,3.498-11.957,8.368
		c-13.134,11.865-31.11,24.743-53.939,38.703C334.369,1356.241,329.08,1352.06,322.364,1347.874z M380.826,1128.217
		c8.536,1.406,16.787,2.092,24.785,2.092h70.796c6.534,0,14.246-0.686,23.137-2.092c-1.884,9.071-3.265,17.097-4.151,24.058
		l-16.646,130.748h7.624c7.98,0,16.051-0.686,24.229-2.092l-2.131,16.738c-7.179-0.688-15.116-1.049-23.828-1.049h-130.7
		c-7.267,0-14.936,0.36-23.004,1.049l2.13-16.738c7.802,1.406,15.339,2.092,22.604,2.092h7.624l16.515-129.702
		c0.266-2.092,0.426-6.275,0.51-12.552C380.206,1135.899,380.38,1131.715,380.826,1128.217z M381.74,1257.919l-3.197,25.104h83.866
		l3.196-25.104H381.74z M386.667,1219.218l-3.196,25.104h83.865l3.197-25.104H386.667z M391.461,1181.563l-3.197,25.104h83.866
		l3.196-25.104H391.461z M396.255,1143.907l-3.196,25.104h83.866l3.195-25.104H396.255z M431.584,1311.267l13.444-11.508
		c14.366,12.552,30.302,27.195,47.775,43.931l-14.801,13.599C468.709,1344.735,453.236,1329.406,431.584,1311.267z"></path>
				<path display="inline" fill="#FFFFFF"
					d="M536.479,1334.276c26.808-16.736,50.698-41.838,71.672-75.312l15.961,11.508
		c1.268,1.404,1.867,2.448,1.78,3.138c-0.091,0.701-1.271,1.404-3.537,2.091c-2.908,0-7.307,3.14-13.178,9.413
		c-15.733,20.922-33.932,41.154-54.559,60.668C549.511,1340.191,543.462,1336.37,536.479,1334.276z M597.59,1136.585
		c19.252,2.795,47.613,2.45,85.089-1.046c38.191-3.481,64.235-8.368,78.104-14.644l10.807,17.781
		c1.268,1.406,1.866,2.452,1.779,3.138c-0.822,0.703-2.269,0.703-4.357,0c-4.18-1.389-11.134-1.046-20.827,1.046
		c-42.186,6.276-87.662,9.772-136.386,10.46l-21.437,74.266h74.063l4.526-35.563c0.886-6.962,1.175-14.987,0.884-24.058l21.52,2.092
		c1.266,1.406,0.689,3.138-1.757,5.231c-2.358,1.404-4.2,7.32-5.53,17.78l-4.395,34.518h78.42c1.445,0,4.712,0,9.801,0
		c6.623-0.687,11.022-1.046,13.203-1.046l-1.999,15.689c-2.177,0-6.49-0.343-12.938-1.046c-5.085,0-8.356,0-9.801,0h-78.42
		l-11.985,94.139c1.585,16.034-15.087,24.402-50.03,25.105c0.513-9.774-0.734-17.098-3.737-21.966
		c29.055,5.571,42.125,2.777,39.186-8.37l11.318-88.908h-66.438c-7.998,0-16.47,1.046-25.45,3.138l-4.403-16.735
		c6.711-1.39,11.003-6.619,12.891-15.69l14.282-52.299C594.821,1155.413,596.169,1147.748,597.59,1136.585z M768.604,1333.231
		l-15.36,9.412c-15.048-24.4-33.04-48.458-53.98-72.171l15.624-11.508C735.474,1285.475,753.375,1310.219,768.604,1333.231z"></path>
				<path display="inline" fill="#FFFFFF"
					d="M842.757,1221.31h60.993c10.664-15.329,20.045-32.065,28.176-50.207l17.45,8.368
		c1.356,0.703,1.626,1.406,0.825,2.092c-0.091,0.703-0.914,1.404-2.447,2.092c-3.908,2.092-7.2,5.231-9.912,9.414
		c-7.419,12.552-13.688,21.966-18.844,28.241h27.229c10.892,0,18.561-0.343,23.006-1.046l-2.131,16.735
		c-7.09-1.389-14.624-2.092-22.606-2.092h-103.47c-6.534,0-13.891,0.703-22.049,2.092l2.131-16.735
		C825.375,1220.967,832.581,1221.31,842.757,1221.31z M847.229,1357.288h-18.517c0.267-2.091,1.114-5.932,2.553-11.506
		c0.622-4.886,1.022-8.023,1.2-9.412l7.19-56.485c0.176-1.389,0.532-4.184,1.065-8.368c0.069-6.273,0.243-10.46,0.509-12.552
		c4.983,0.703,12.205,1.046,21.649,1.046h57.726c1.447,0,4.714,0,9.804,0c6.622-0.688,11.023-1.046,13.204-1.046
		c-1.179,3.498-2.469,10.82-3.887,21.966l-6.261,49.161c-1.242,9.759-1.772,16.738-1.572,20.92h-18.516
		c1.16-3.496,2.242-9.071,3.217-16.735H847.98l-0.267,2.094C846.737,1344.033,846.562,1351.012,847.229,1357.288z M865.573,1153.32
		h43.567c-6.025-9.759-13.898-19.17-23.636-28.241l14.402-10.46c2.537,2.795,8.605,9.414,18.164,19.876
		c3.18,3.496,5.404,5.931,6.691,7.319l-14.534,11.506h35.943c5.07,0,12.781-0.688,23.137-2.092l-2.131,16.736
		c-6.356-1.39-13.89-2.093-22.604-2.093h-80.597c-6.534,0-14.249,0.703-23.141,2.093l2.13-16.736
		C850.769,1152.633,858.307,1153.32,865.573,1153.32z M855.705,1273.61l-6.261,49.16h68.617l6.258-49.16H855.705z M867.401,1173.194
		c1.179,2.094,3.269,5.59,6.291,10.46c7.203,11.866,11.627,19.874,13.274,24.058l-16.447,9.414
		c-5.025-11.849-11.186-23.354-18.479-34.518L867.401,1173.194z M989.555,1137.631c10.803,0.701,19.098,1.046,24.919,1.046h38.12
		c7.25,0,15.293-0.345,24.094-1.046c-19.326,37.657-34.815,65.211-46.462,82.633c34.55,25.104,43.087,55.095,25.579,89.955
		c-8.135,12.552-23.557,19.53-46.231,20.919c-1.934-7.662-5.401-14.644-10.406-20.919c22.431,6.275,37.39,2.795,44.898-10.46
		c10.799-27.882-0.206-52.643-33.021-74.266c15.354-23.699,28.623-48.115,39.816-73.219h-45.744L981.014,1341.6
		c-1.065,8.368-1.327,16.031-0.751,23.01h-19.606c2.246-6.275,3.911-13.598,4.977-21.966l23.171-182.001
		C989.781,1152.978,990.024,1145.313,989.555,1137.631z"></path>
				</g> <polygon display="none" opacity="0.2"
					points="5663.897,1516.51 5395.821,1516.51 5389.375,1577.737 5479.501,1577.737
	5454.86,1788.698 5542.824,1788.642 5567.458,1577.737 5657.454,1577.737 "></polygon>
				<path fill="#CA0915"
					d="M348.086,361.843c-16.888,5.858-51.875,9.859-100.773,9.859c-140.596,0-216.485-66.102-207.504-153.483
	c10.738-104.138,123.15-162.723,246.25-162.723c47.679,0,75.74,3.854,102.044,10.294l-8.441,70.153
	c-17.497-5.908-58.49-11.321-91.676-11.321c-72.42,0-133.933,21.616-140.986,89.96c-6.293,61.133,36.893,90.355,118.369,90.355
	c28.353,0,70.177-4.068,89.5-9.948L348.086,361.843z"></path>
				<g display="none"> <rect x="-6481.381" y="3352.093"
					display="inline" width="711.071" height="778.92"></rect> <rect
					x="-5937.268" y="3964.054" display="inline" fill="#F5F5F5"
					width="166.958" height="166.96"></rect> <rect x="-5910.189"
					y="3991.133" display="inline" width="139.88" height="139.881"></rect>
				<path display="inline" fill="#F5F5F5"
					d="M-5872.391,3930.721l-216.347-470.94h-90.18l-242.924,563.545h88.885l69.469-170.679
		h264.498l33.751,78.074H-5872.391z M-6239.325,3791.91l69.468-165.296c14.671-35.618,26.031-71.5,34.087-107.635
		c9.776,30.501,24.736,69.452,44.874,116.86l66.017,156.07H-6239.325z"></path>
				</g> </svg> </defs> </svg>
				
			</div>
		</div>
	</div>
	</section>
	
	

	<!-- Generated by OsChina.NET (init:1[ms],page:3[ms],ip:14.112.212.146) -->
	
</body>
<style type="text/css" id="2744857170"></style>
</html>
