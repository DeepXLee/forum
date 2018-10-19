var commentUrl = getBasePath() + "articleServlet";

function getBasePath(){ 
	var obj=window.location; 
	var contextPath=obj.pathname.split("/")[1]; 
	var basePath=obj.protocol+"//"+obj.host+"/"+contextPath; 
	return basePath; 
	}

window.onload = function() {
	//点击评论按钮
	$("#submit-reply").click(function() {
		//获取评论内容
		alert("111111");
		var comment = ue.getContent();
		//判断
		alert(comment);
		if(comment==""){
			alert("评论内容不能为空！");
			return ;
		}
		alert(comment);
		comment=window.encodeURIComponent(comment); //解析特殊字符，防止后台无法解析
		alert("aaaaa");
		var param ="infoId=" + infoId +  "&userId=" + userId + "&comment=" + comment + "&cmd=comment";
		alert(param);
		$.post(commentUrl, param, function(response) {
			if(response==0){//未登录
				alert("回复前请先登陆");
				window.location = getBasePath()+"jsps/user/log.jsp";
			}else if(response==1){
				alert("555555");
				window.location = getBasePath()+"add"+infoId;
			}else{
				alert("评论失败！");
			}
		});
	});
	
}
