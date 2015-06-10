$(function(){
	$.ajax({
		url:"/ds-portal/user/getUser.do",
		type:"post",
		dataType:"text",
		success:function(responseText){
			if (responseText != null && responseText != ""){
				$("#loginAlertIs").html(responseText);
			}
		},
		error:function(){
			alert("system error");
		}
	});
});