<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	.ul_two li {/* li的不换行方式。float: left;没有 display:inline;好用，因为li会在ul外面    */
			float: left;/* div默认一行只显示一个，Float属性可以实现一行显示多个div的功能，最常实现表格的多列布局（左右布局） */
			width: 100px;
			margin: 0px 20px 10px 0px;/* 四个外边距：从上外边距开始顺时针旋转 */
			background-color: #ccd;/* 背景颜色 */
			overflow: hidden;/* 去掉圆点 */
			line-height:1.6em;/* li的高度 */
			display:block;/* 边框线 */
		 	border:1px solid red;/* 边框线 */
		 	text-decoration:none;/* 下划线 */
		}
	.ul_three li{
			display:inline;
			margin: 0px 20px 10px 0px;
			text-decoration:none;
			list-style:none;
			overflow: hidden;
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
		<tr style="background: #f60; height: 120px; ">
			<td width="100%" style="padding:5px;" align="center" valign="top">
				<iframe frameborder="0" width="120" src="${path}/index/toAdminTop.do" name="top"></iframe>
			</td>
		</tr>
			
		<tr>
			<td width="120" style="padding:5px;" align="center" valign="right">
				<iframe frameborder="0" width="120" src="${path}/index/toRight.do" name="right"></iframe>
			</td>
			<td>
				<iframe frameborder="0" src="${path}/index/toBody.do" name="body"></iframe>
			</td>
		</tr>
	</table>
</body>
</html>