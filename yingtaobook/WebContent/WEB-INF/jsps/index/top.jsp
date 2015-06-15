<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<base target="body"/>
</head>
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
</style>
<body>
	<h1 style="text-align: center;">樱桃图书社区</h1>
	<div height="48px" style="font-size: 11pt;">
		<a href="${path}/index/toBody.do">首页</a>
		<a href="${path}/Colltrade/toCollTradeList.do">藏书交易</a>
		<a href="${path }/share/CateSelectAllDate.do?cid=1">好书分享</a>
	</div>
	
</body>
</html>