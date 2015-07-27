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
	
	<form id="formuser" name="formuser" action="${path}/adminUser/add.do" class="table" method="post" enctype="multipart/form-data">
		用户名称：<input type="text" id="username" name="username" ></input><br/>
		用户密码：<input type="password" id="password" name="password" ></input><br/>
		性别：<input type="radio" id="dender" name="dender" ></input><br/>
		用户分类：<select style="width: 150px; height: 20px;" name="cid">
					<option href="#" fType="cid" fValue="">全部</option>
					<c:forEach items="${cateList }" var="cate">
						<option href="#" fType="cid" fValue="${cate.cid }">${cate.cname }</option>
					</c:forEach>
    			</select><br/>
    	<!-- 用户生日：<input type="text" id="birthday" name="birthday" ></input><br/> -->
		<input type="submit" id="submit11" name="submit11" value="保存"></input>
	</form>
	
</body>
</html>