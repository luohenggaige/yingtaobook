<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	.table{
			width:1024px;
			height:100%;
			border:1px solid gray;/*固定边框,1像素*/
		    border-collapse: collapse;/*单线的列表边框*/
		}
	iframe {           
			width: 100%;
			height: 100%;
		}
</style>
<title>Insert title here</title>
</head>
<body>
<table class="table" align="center">
		<div>
			<tr style="background: #4682B4; height: 120px; ">
				<td colspan="2" align="center">
					<iframe frameborder="0" src="${pageContext.request.contextPath }/top.jsp" name="top"></iframe>
				</td>
			</tr>
		</div>
		
	</table>
	<a href="${pageContext.request.contextPath}/user/toLogin.do">登录</a>
	<a href="${pageContext.request.contextPath}/user/toRegister.do">注册</a><br>
	<a href="${pageContext.request.contextPath}/book/toBookList.do">图书管理</a><br>
	<a href="${pageContext.request.contextPath}/order/toPay.do">项目投资</a><br>
</body>
</html>