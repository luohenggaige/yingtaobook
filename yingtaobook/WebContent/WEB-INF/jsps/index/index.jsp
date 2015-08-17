<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
	*{font-size:10pt;}
	body{text-align:center;}
	body,div,p,ul,li,tr,td { margin:0px auto; padding:0px;list-style-type:none;}
	a{text-decoration:none;font-family:"微软雅黑";font-size:13px;height:40px;padding:0;}
	a:hover{color:red;}
	.table{width:90%;height:100%;border:1px solid gray;border-collapse:collapse; }/*border 边框宽度  类型  颜色*/ /*单线的列表边框*/
	.table td{border:1px solid gray;} /*固定边框,1像素*/
	#logo{width:100%;height:140px;}
	.clear{clear:both}
	/* top导航 */
	#navi{width:100%;height:40px;border:1px solid gray;background:/* #87CEFA */;}
	#navi ul{width:100%;height:40px;}
	#navi ul li{float:right;padding: 0 10px;line-height: 40px;}
	
	/* 右侧导航 */
	#navi_right{width:200px;height:400px;float:right;border:1px solid gray;background:#87CEFA;}
	#navi_right ul{width:100%;height:40px;}
	#navi_right ul li{padding: 0 10px;line-height: 40px;}
	/* 内容区域 */
	#navi_body{margin-right:230px;height:400px;border:1px solid Blue;}
	.div_fxyq{float:right;margin-top:20px;margin-right:45px;}
	.div_csyq{float:right;margin-top:40px;margin-right:45px;}
	.div_book{width:140px;height:170px;border:solid 2px gray;
		margin-top:20px;margin-right:30px;text-align:center;text-indent:-18px;
		float:right;}
	
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">

$(function(){
	
	
	
});

</script>
</head>
<body>

	<div id="logo">
		<a><img alt="" src=""></a>
	</div>
	<div id="navi">
		<ul>
			<li style="padding-right:50px;"><a href="#"></a></li>
			<li><a href="${path}/index/toBody.do">首页</a></li>
			<li><a href="${path}/Colltrade/CollTradeList.do">藏书交易</a></li>
			<li><a href="${path }/share/SelectAllShare.do">好书分享</a></li>
		</ul>
	</div>
	<div id="navi_right">
		<ul>
			<li><a href="${path}/share/myListShare.do?userid=${sessionScope.exisuser.userid}">我的分享</a></li>
			<li><a href="${path}/Colltrade/myCollTrade.do?userid=${sessionScope.exisuser.userid}">我的藏书</a></li>
		</ul>
	</div>
	<div id="navi_body">
		<div class="div_fxyq">
			<a href="">最新分享</a>
			<a href="">最热分享</a>
		</div>
		<%-- 
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
		</div> --%>
	</div>

</body>
</html>