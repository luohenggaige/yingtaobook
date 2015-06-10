<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">

$(function(){
	
	var envolopData = $("#orderinfo").val();
	
	var option = {
		url:"http:// 220.194.27.16:5017",
		type:"post",
		dataType:"text",
		async:true,
		data:{
			envolopData:envolopData,
		},
		success:function(responseText){
			
		},
		error:function(){
			
		}
	};
	$.ajax(option);
});

</script>
<title>投资理财</title>
</head>
<body>
	<form action="${path}/order/pay.do">
		<input id="orderinfo" name="orderinfo" type="hidden" value="${envolopData}"></input><br>
		<input type="txt" ></input><br>
		<input type="txt" ></input><br>
		<input type="txt" ></input><br>
		<input type="txt" ></input><br>
		<input type="txt" ></input><br>
		<input type="submit" value="投资"></input>
	</form>
</body>
</html>