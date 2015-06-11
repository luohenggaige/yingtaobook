<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	table{
		margin: 30px 0px 20px 50px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<form id="form" action="${path}/share/addShare.do" class="table" method="post" enctype="multipart/form-data">
		图书名称：<input type="text" id="bookName" name="bookName" ></input><br/>
		图书图片：<input type="file" id="imgSize" name="imgSize" ></input><br/>
		图书作者：<input type="text" id="author" name="author" ></input><br/>
		分享理由：<input type="text" id="reason" name="reason" ></input><br/>
		图书分类：<select style="width: 150px; height: 20px;" name="cid">
    			</select><br/>
		<input type="submit" value="保存"></input>
	</form>
	
</body>
</html>