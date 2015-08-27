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
	a{
		align:right;
		text-transform:none;
		text-decoration:none;
		margin: 0px 0px 20px 20px;/* 四个外边距：从上外边距开始顺时针旋转 */
	}
	a:hover {/* a:hover指的是鼠标经过它时候的效果 */
		text-decoration:underline;/* underline定义文本下的一条线。 */
	}
	.clear {
	 	clear: both;
	 }
	.a_tf{
		display:block;/* 想设置input或a在页面中的位置，input或a标签是行内元素，先dispaly：block作为块级元素；然后再margin设置外边距即可 */
		margin:40px 70px 0px 0px;
	}
	.div_list{width:140px;height:170px;border:solid 2px gray;
		margin-top:20px;margin-right:30px;text-align:center;text-indent:-18px;
		float:right;}
</style>
<title>Insert title here</title>
</head>
<body>
	<header>header</header>
       demo.html的title将被填充到这儿：
       <sitemesh:write property='title' /><br />
       demo.html的body将被填充到这儿：
       <sitemesh:write property='body' />
       <hr />
	<div>
		<div style="float:right;">
			<a class="a_tf" href="${path }/share/toAddShare.do">添加分享</a>
		</div>
		<div class="clear"></div>
		<c:forEach items="${shareList }" var="share">
			<div class="div_list">
				<a href=""><img src="${path }/${share.imgsize }"></a><br>
				<a href="" style="text-indent:-18px;align:center;">${share.bookname }</a>
			</div>
		</c:forEach>
	</div>
	
	
	
</body>
</html>