<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Insert title here</title>
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
	.div_share{width:140px;height:170px;border:solid 2px gray;
		margin-top:20px;margin-right:30px;text-align:center;text-indent:-18px;
		float:right;}
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript">

$(function(){
	
	$("input").focus(function(){
		var tip = $(this).attr("tip");
		var value = $(this).val();
		if(value==tip){
			$(this).val("");
			this.style.color='#000'
		}
	});
	
	$("input").blur(function(){
		var tip = $(this).attr("tip");
		var value = $(this).val();
		if(!value){
			$(this).val(tip);
			this.style.color='#999'
		}
	});
	
});

</script>
</head>
<body>
	<div>
		<div style="float:right;margin-top:40px;margin-right:45px;">
			<a href="${path }/share/CateSelectAllDate.do?cid=2">小说类&nbsp;&nbsp; </a>
			<a href="${path }/share/CateSelectAllDate.do?cid=1">文学类&nbsp;&nbsp;</a>
		</div>
		<div class="clear"></div>
		<div style="float:right;margin-right:45px;margin-top:10px;">
			<input type="text" value="图书作者" tip="图书作者" style="color:#999999"></input>
			<input type="text" value="图书书名" tip="图书书名" style="color:#999999"></input>
			<input type="button" value="确定"></input>
			<a href="${path }/share/CateSelectAllDate.do">最新藏书交易</a>
		</div>
		<div class="clear"></div>
		<div style="width:100%">
			<c:forEach items="${cateList }" var="cate">
				<div class="div_share">
					<a href=""><img src="${path }/${cate.imgsize }"></a><br>
					<a href="" style="text-indent:-18px;align:center;">${cate.bookname }</a>
				</div>
			</c:forEach>
		</div>
		
	</div>
	
</body>
</html>