<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Insert title here</title>
<base target="body"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../res/css/style.css" />
<style type="text/css">
	*{
		font-size:12pt;
	}
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript">


</script>
</head>
<body>
	
	<form id="formrj" name="formrj" action="${path}/role/editRoleJuri.do" class="table" method="post" enctype="multipart/form-data">
		当前角色：<label style="font-size:11pt;">${role.rname }</label><br/><%-- <input type="text" id="rid" name="rid" value="${rname}"></input><br/> --%>
		所有权限：
				<input type="checkbox" id="jid" name="jid">全部</option>
				<c:forEach items="${listJuri }" var="juri">
					<input type="checkbox" id="jid" name="jid" value="${juri.jid }">${juri.jname }</option>
				</c:forEach><br/>
		<input type="hidden" id="rid" name="rid" value="${role.rid }"></input>
		<input type="submit" id="submit11" name="submit11" value="保存"></input>
	</form>
	
</body>
</html>