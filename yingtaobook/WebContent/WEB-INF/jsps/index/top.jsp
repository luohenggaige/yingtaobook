<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<base target="body"/>
<style>
	div_top{
		font-size: 10pt;/* 字体在样式中定义无效，在属性中定义有效 */
	}
	a{
		text-transform:none;
		text-decoration:none;
		float: right;
		margin: 0px 20px 0px 0px;/* 四个外边距：从上外边距开始顺时针旋转 */
	}
	a:hover {/* a:hover指的是鼠标经过它时候的效果 */
		text-decoration:underline;/* underline定义文本下的一条线。 */
	}
	#ic:hover{
		color:#f60;
		text-decoration:none;
	}
	
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript">

$(function(){
	$("a#ic").mouseover(function(){
		alert("jiaodian");
	});	
});

</script>
</head>

<body>
	<h1 style="text-align: center;">樱桃图书社区</h1>
	<div height="48px" style="font-size: 11pt;">
		<a href="${path}/index/toBody.do">首页</a>
		<a href="${path}/Colltrade/CollTradeList.do">藏书交易</a>
		<a href="${path }/share/SelectAllShare.do">好书分享</a>
		<c:if test="${empty exisuser}">
			<a href="${path }/user/toLogin.do"  target="_top">登录</a>
			<a href="${path }/user//toRegister.do"  target="_top">注册</a>
		</c:if>
		<c:if test="${not empty exisuser}">
			<a id="ic" style="float:right;margin: 0px 20px 0px 0px;" href="#">${exisuser.username }</a>
		</c:if>
	</div>
	
</body>
</html>