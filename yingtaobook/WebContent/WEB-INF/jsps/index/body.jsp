<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="" bgcolor="#00FFFF"  height="48px">
		<c:forEach var="book" items="${ list }">
		  <div class="icon">
		    <a href="${path }/bookServlet?method=findById&bid=${ book.bid }"><img src="${pageContext.request.contextPath }/${ book.image }" border="0"/></a>
		      <br/>
		   	<a href="${path }/bookServlet?method=findById&bid=${ book.bid }">${ book.bname }</a>
		  </div>
		</c:forEach> 
	</div>
	
</body>
</html>