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
	
	<div style="width:100%;height:40px;">
		<div style="float:right;margin : 10px 40px 0px 0px;}">
			<a type="button" href="${path }/adminUser/toAdd.do">添加</a>
		</div>
	</div>
	<table style="width: 60%;" align="center" border="1" cellspacing="0">
		<tr>
			<th>用户名</th>
			<th>性别</th>
			<th>注册时间</th>
			<th>启用状态</th>
			<th>角色权限</th>
		</tr>
		<c:forEach items="${list }" var="user">
			<tr>
				<th>${user.username }</th>
				<th>${user.dender }</th>
				<th>${user.registime }</th>
				<th>
					<c:if test="${user.state == 1 }">启用</c:if>
					<c:if test="${user.state == 0 }">禁用</c:if>
				</th>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>