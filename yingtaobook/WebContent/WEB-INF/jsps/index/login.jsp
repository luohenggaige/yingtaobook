<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">
$(function(){

	var tip = $("#tip").val();
	if(tip == "picError"){
		alert(tip);
		$("#piccodeImage").next().html("验证码错误");
		$("#piccodeImage").show(500);
	};
});

function changeCaptcha(){
	var path = "${path}/user/getImage.do?date="+new Date();
	$("#captchaImage").attr("src",path);
}
</script>
</head>
<body>
	<form action="${path}/user/login.do">
		<li><label>用户名：</label><input type="txt" id="username" name="username" req="yes" pro="请输入用户名"></input><span></span></li>
		<li><label>密码：</label><input type="password" id="password" name="password" req="yes" pro="请输入密码"></input><span></span></li>
		<li><label>验证码：</label><input type="txt" id="piccodeImage" name="piccodeImage" req="yes" pro="请输入验证码"></input><span></span>
			<img id="captchaImage" src="${path}/user/getImage.do" onclick="changeCaptcha()" class="code" alt="换一张" /><a href="javascript:void(0);" onclick="changeCaptcha()" title="换一张">换一张</a>
		</li>
		<input type="submit" value="登录"></input><br>
		<a href="${path}/user/toRegister.do" >免费注册</a>
		<a href="${path}/user/toLogin.do" >忘记密码</a>
	</form>
	
	<div></div>
</body>
</html>