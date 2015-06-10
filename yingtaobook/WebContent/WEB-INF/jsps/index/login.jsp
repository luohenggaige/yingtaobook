<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${path}/user/login.do">
		<input type="txt" id="username" name="username">用户名</input><br>
		<input type="password" id="password" name="password">密码</input><br>
		<input type="txt" >验证码</input><br>
		<input type="submit" value="登录"></input><br>
		<a href="${pageContext.request.contextPath}/user/toRegister.do" >免费注册</a>
		<a href="${pageContext.request.contextPath}/user/toLogin.do" >忘记密码</a>
	</form>
	
	<a href="${pageContext.request.contextPath}/user/login.do">图书管理</a>
	
	<div></div>
</body>
</html>