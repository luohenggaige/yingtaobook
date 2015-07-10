<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
		<title>Insert title here</title>
		<base target="body"/>
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
		<style>
		
			a{
				align:right;
				text-transform:none;
				text-decoration:none;
				margin: 0px 0px 20px 20px;/* 四个外边距：从上外边距开始顺时针旋转 */
			}
			a:hover {/* a:hover指的是鼠标经过它时候的效果 */
				text-decoration:underline;/* underline定义文本下的一条线。 */
			}
			div_right{
				font-size: 10pt;/* 字体在样式中定义无效，在属性中定义有效 */
			}
			div {
					background: #87CEFA; 
					margin: 3px; 
					padding: 3px;
					font-size:11pt;
				}
		
		</style>
	</head>
	<body>
	
		<div bgcolor="" align="left" >
			<a href="${path}/share/myListShare.do?userid=${sessionScope.exisuser.userid}">我的分享</a>
		</div>
		<div bgcolor="" align="left" >
			<a href="${path}/Colltrade/myCollTrade.do">我的藏书</a>
		</div>
		
	</body>
</html>