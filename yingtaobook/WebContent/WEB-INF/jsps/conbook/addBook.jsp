<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">
$(function(){
	
	$("#myForm").submit(function(){
		alert("123");
		return false;
	});
	
});

function submitUpload(){
	var option = {
		
	};
	$("#myForm").ajaxSubmit(option);
}
</script>
</head>
<body>
	<form id="myForm" name="myForm" action="${pageContext.request.contextPath}/book/addBook.do" method="post" enctype="multipart/form-data">
		<div>
			<tr>
				<input type="hidden" id="subAndAdd" name="subAndAdd" value=""></input>
				<label>图书名称</label><input type="txt" id="bookName" name="bookName"></input><br>
				<label>图书作者</label><input type="txt" id="author" name="author"></input><br>
				<img id="imageSrc" src="" height="100" width="100" onchange="submitUpload()">
				<input type="file" id="image" name="image"></input>
				<input type="hidden" id="imageHidden" name="imageHidden"></input><br>
				<label>图书价格</label><input type="txt" id="price" name="price"></input><br>
				<label>图书数量</label><input type="txt" id="conut" name="conut"></input><br>
				<input type="submit" id="button1" name="button2" value="提交" oclick="subAndAdd1()"></input>
			</tr>
		</div>
	</form>
</body>
</html>