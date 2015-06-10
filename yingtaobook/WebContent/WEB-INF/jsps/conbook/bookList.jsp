<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="../common/taglibs.jsp"%>
<%-- <jsp:include page="../taglibs.jsp" flush="true"/> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${path}/book/toAddBook.do">添加图书</a>
	<input type="txt">添加图书</input>
	<div>
		<tr>
			<a href=""><img alt="" src=""></a><br>
			<td id="bookName"></td><br>
			<td id="stock"></td>
		</tr>
	</div>
</body>
</html>