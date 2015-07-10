<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Insert title here</title>
<base target="body"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../res/css/style.css" />
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
	.special_color{
		color:"rgb";
		background-color: "blue";
	}
	.here{color:#fff;background-color:#06c;text-decoration:none}
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<div>
		<div style="width:100%">
			<c:forEach items="${shareList }" var="share">
				<div class="div_share">
					<a href=""><img src="${path }/${share.imgsize }"></a><br>
					<a href="" style="text-indent:-18px;align:center;">${share.bookname }</a>
				</div>
			</c:forEach>
		</div>
	</div>
	
</body>
</html>