<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base target="body"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	*{
			font-size:11pt;
		}
	.input_tf{
		display:block;/* 想设置input或a在页面中的位置，input或a标签是行内元素，先dispaly：block作为块级元素；然后再margin设置外边距即可 */
		margin:40px 70px 0px 0px;
	}
	div{float:right}
	a{
		align:right;
		text-transform:none;
		text-decoration:none;
		margin: 0px 0px 20px 20px;/* 四个外边距：从上外边距开始顺时针旋转 */
	}
	a:hover {/* a:hover指的是鼠标经过它时候的效果 */
		text-decoration:underline;/* underline定义文本下的一条线。 */
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<a class="input_tf" href="${path }/share/toAddShare.do">添加分享</a>
		</div>
		
		<div>
			<%-- <c:forEach items="" var="">
				<div> 
				</div>
			</c:forEach> --%>
		</div>
	</div>
	
</body>
</html>