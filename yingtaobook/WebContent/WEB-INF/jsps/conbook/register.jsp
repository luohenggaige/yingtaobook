<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${Path}/book/toAddBook.do">添加图书</a>
	<div>
		<tr>
			<a href=""><img alt="" src=""></a><br>
			<td id="bookName"></td><br>
			<td id="stock"></td>
		</tr>
	</div>
</body>
</html>
