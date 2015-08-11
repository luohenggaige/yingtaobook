<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
	.div_book{width:140px;height:170px;border:solid 2px gray;
		margin-top:20px;margin-right:30px;text-align:center;text-indent:-18px;
		float:right;}
	.div_fxyq{float:right;margin-top:20px;margin-right:45px;}
	.div_csyq{float:right;margin-top:40px;margin-right:45px;}
</style>
</head>
<body>
	<div class="div_fxyq">
		<a href="">最新分享</a>
		<a href="">最热分享</a>
	</div>
	<div class="clear"></div>
	<div style="">
		<c:forEach items="${shareList }" var="share">
			<div class="div_book">
				<a href=""><img src="${path }/${share.imgsize }"></a><br>
				<a href="" style="text-indent:-18px;align:center;">${share.bookname }</a>
			</div>
		</c:forEach>
	</div>
	<div class="clear"></div>
	<div class="div_csyq">
		<a href="">最新藏书交易</a>
		<a href="">所有藏书交易</a>
	</div>
	<div class="clear"></div>
	<div>
		<c:forEach items="${heatList }" var="heat">
			<div class="div_book">
				<a href=""><img src="${path }/${heat.imgsize }"></a><br>
				<a href="" style="text-indent:-18px;align:center;">${heat.bookname }</a>
			</div>
		</c:forEach>
	</div>
	
	
</body>
</html>