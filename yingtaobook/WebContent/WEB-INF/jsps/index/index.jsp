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
	body,div,p,ul,li,tr,td { margin:0px auto; padding:0px;}
	a{display:block;text-decoration:none;font-family:"微软雅黑";font-size:13px;height:40px;padding:0;}
	a:hover{color:red;}
	.table{width:90%;height:100%;border:1px solid gray;border-collapse:collapse; }/*border 边框宽度  类型  颜色*/ /*单线的列表边框*/
	.table td{border:1px solid gray;} /*固定边框,1像素*/
	#logo{width:100%;height:140px;}
	#navi{width:100%;height:40px;border:1px solid gray;background:/* #87CEFA */;}
	#navi ul{width:100%;height:40px;}
	#navi ul li{float:right;padding: 0 10px;line-height: 40px;}
	
	#container{float:left;}
	#navi_ri{width:100%;border:1px solid gray;background:/* #87CEFA */;}
	#navi_ri ul{width:100%;height:40px;}
	#navi_ri ul li{padding: 0 10px;line-height: 40px;}
	
	.div_list{width:140px;height:170px;border:solid 2px gray;
		margin-top:20px;margin-right:30px;text-align:center;text-indent:-18px;
		float:right;}
	.div_fxyq{float:right;margin-top:20px;margin-right:45px;}
	.div_csyq{float:right;margin-top:40px;margin-right:45px;}
	
	
</style>
<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript">


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
	<div id="container">
		<div id="navi_ri">
			<ul>
				<li><a href="${path}/share/myListShare.do?userid=${sessionScope.exisuser.userid}">我的分享</a></li>
				<li><a href="${path}/Colltrade/myCollTrade.do?userid=${sessionScope.exisuser.userid}">我的藏书</a></li>
			</ul>
		</div>
		<div id="list">
			<%-- <div class="div_fxyq">
				<a href="">最新分享</a>
				<a href="">最热分享</a>
			</div>
			<div class="clear"></div>
			<div style="">
				<c:forEach items="${shareList }" var="share">
					<div class="div_list">
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
					<div class="div_list">
						<a href=""><img src="${path }/${heat.imgsize }"></a><br>
						<a href="" style="text-indent:-18px;align:center;">${heat.bookname }</a>
					</div>
				</c:forEach>
			</div> --%>
		</div>
	</div>

	<%-- <table class="table" align="center">
		<input type="hidden" id="exisuser" value="${exisuser }"></input>
		<tr style="background: #66CCFF;height: 120px;">
			<td colspan="2" align="center">
				<iframe frameborder="0" width="120" src="${path}/index/toTop.do" name="top"></iframe>
			</td>
		</tr>
			
		<tr>
			<td width="86%" align="center">
				<iframe frameborder="0" src="${path}/index/toBody.do" name="body"></iframe>
			</td>
			<td style="padding:5px;" align="center" valign="top"><!-- valign规定单元格中内容的垂直排列方式 -->
				<iframe frameborder="0" src="${path}/index/toRight.do" name="right"></iframe>
			</td>
		</tr>
	</table> --%>
	
</body>
</html>