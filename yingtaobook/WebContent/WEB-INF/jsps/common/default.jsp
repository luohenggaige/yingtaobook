<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><decorator:title/>_樱桃图书平台</title>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/res/css/style.css'/>" />
<link rel="stylesheet" type="text/css" media="print" href="<c:url value='/res/css/print.css'/>" />
<script language="javascript" type="text/javascript" src="<c:url value='/res/js/jquery.js'/>"></script>
<script language="javascript" type="text/javascript" src="<c:url value='/res/js/com.js'/>"></script>
<script language="javascript" type="text/javascript" src="<c:url value='/res/js/many_form_validator.js'/>"></script>
<script language="javascript" type="text/javascript" src="<c:url value='/res/js/jquery.md5.js'/>"></script>
<decorator:head/>
</head>
<body>

<div <decorator:getProperty property="body.id" writeEntireProperty="true"/> <decorator:getProperty property="body.class" writeEntireProperty="true"/>>
	<jsp:include page="/WEB-INF/jsps/index/top.jsp"/>
</div>

</body>
</html>
