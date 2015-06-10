<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">
$(function(){
	$("#myForm").submit(function(){
		var isSubmit = true;
		 $(this).find("[req]").each(function(){
			var val = $(this).val();
			var userName = $("#username").val();
			var pro = $(this).attr("pro");
			if(val == "" || val == null){
				$(this).next("span").html(pro);
				isSubmit = false;
			}else{
				$(this).next("span").html("");

				var username = $(this).attr("name");
				if(username=="username"){
					var option = {					
						url:"${path}/user/findByUserName.do",
						type:"post",
						dataType:"text",
						async:false,			
						data:{
							userName:userName
						},
						success:function(responseText){
							if(responseText=="yes"){
								$("#username").next().html("用户名已存在");
							}else{
								$("#username").next().html("");
							}
						},
						error:function(){
						}
					};
					$.ajax(option);
				}
				
				var passwordQR = $(this).attr("name");
				if(passwordQR=="passwordQR"){
					var password = $("#password").val();
					var passwordQR = $("#passwordQR").val();
					if(passwordQR != password && password != "" && password != null){
						$("#passwordQR").next().html("密码不正确，请保持一致");
					};
				}
			}
			
		}); 
		return isSubmit;
		
	});
	
	$("#myForm").find("[req]").blur(function(){
		var val = $(this).val();
		var userName = $("#username").val();
		var pro = $(this).attr("pro");
		if(val == "" || val == null){
			$(this).next("span").html(pro);
		}else{
			$(this).next("span").html("");
			
			var username = $(this).attr("name");
			if(username=="username"){
				var option = {					
					url:"${path}/user/findByUserName.do",
					type:"post",
					dataType:"text",
					async:false,			
					data:{
						userName:userName
					},
					success:function(responseText){
						if(responseText=="yes"){
							$("#username").next().html("用户名已存在");
						}else{
							$("#username").next().html("");
						}
					},
					error:function(){
					}
				};
				$.ajax(option);
			}
			
			var passwordQR = $(this).attr("name");
			if(passwordQR=="passwordQR"){
				var password = $("#password").val();
				var passwordQR = $("#passwordQR").val();
				if(passwordQR != password && password != "" && password != null){
					$("#passwordQR").next().html("密码不正确，请保持一致");
				};
			}
			
		}
		
	});

	var tip = $("#tip").val();
	if(tip == "picError"){
		alert(tip);
		$("#piccodeImage").next().html("验证码错误");
		$("#piccodeImage").show(500);
	};
});

function changeCaptcha(){
	var path = "${path}/user/getImage.do?date="+new Date();
	$("#captchaImage").attr("src",path);
}

</script>
</head>
<body>
	<form id="myForm" action="${path}/user/register.do">
		<input type="hidden" id="tip" value="${tip}"></input>
		<li><label>用户名：</label><input type="txt" id="username" name="username" req="yes" pro="请输入用户名"></input><span></span></li>
		<li><label>密码：</label><input type="password" id="password" name="password" req="yes" pro="请输入密码"></input><span></span></li>
		<li><label>确认密码：</label><input type="password" id="passwordQR" name="passwordQR" req="yes" pro="请确认密码"></input><span></span></li>
		<li><label>验证码：</label><input type="txt" id="piccodeImage" name="piccodeImage" req="yes" pro="请输入验证码"></input><span></span>
			<img id="captchaImage" src="${path}/user/getImage.do" onclick="changeCaptcha()" class="code" alt="换一张" /><a href="javascript:void(0);" onclick="changeCaptcha()" title="换一张">换一张</a>
		</li>
		<input type="submit" id="button1" name="button1" value="注册"></input>
	</form>
</body>
