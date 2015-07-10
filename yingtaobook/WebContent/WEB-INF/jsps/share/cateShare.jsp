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

$(function(){
	
	$("input").focus(function(){
		var tip = $(this).attr("tip");
		var value = $(this).val();
		if(value==tip){
			$(this).val("");
			this.style.color='#000';
		}
	});
	
	$("input").blur(function(){
		var tip = $(this).attr("tip");
		var value = $(this).val();
		if(!value){
			$(this).val(tip);
			this.style.color='#999';
		}
	});
	
	$("a").mousedown(function(){
		var aList = $(this).parent().find('a');
		aList.removeClass('here');
		//$(this).css({background: "blue"});//单独定义样式，而非引入样式
		$(this).addClass('here');//给所点中的增加样式
	
		/* 页面的样式已经在上方保存好，只需遍历到所有的具有标志样式的参数，再拼接查询即可（实际是每遍历到一个标志就拼接查询一次，最终遍历到所有野就） */
		/* var cid = "";
		var orderid = "";
		$('a').each(function(){
			var cla = $(this).attr("class");
			if(cla == "here"){
				var fType = $(this).attr("fType");
				var fValue = $(this).attr("fValue");
				if(fType == "cid"){
					cid = fValue;
				}else if(fType = "orderid"){
					orderid = fValue;
				};
			}
			var path = "${path }/share/selectByCondition.do?cid="+cid+"&orderid="+orderid;
			$("#cateShareIframe").attr("src",path);
		}); */
		var author = "";
		var bookname = "";
		var cid = "";
		var orderid = "";
		$("div#portal").find("div").children().each(function(){
			var cla = $(this).attr("class");
			var fType = $(this).attr("fType");
			var fValue = $(this).attr("fValue");
			if(cla == "here"){
				if(fType == "cid"){
					cid = fValue;
				}else if(fType = "orderid"){
					orderid = fValue;
				};
			}
			var val = $(this).val();
			/* alert("fType="+fType+";val="+val); */
			if(fType == "bookname" && val != "图书书名"){
				bookname = val;
			}else if(fType == "author" && val != "图书作者"){
				author = val;
			}
			var path = "${path }/share/selectByCondition.do?cid="+cid+"&bookname="+bookname+"&author="+author+"&orderid="+orderid;
			$("#cateShareIframe").attr("src",path);
		});
	});
	
	$("div#cs").find("input").each(function(){/* 或者$("#cs3").find("input").each() */ 
		$(this).blur(function(){
			cs();
		});
	});
});

function cs(){
	var author = "";
	var bookname = "";
	var cid = "";
	var orderid = "";
	$("div#portal").find("div").children().each(function(){
		var cla = $(this).attr("class");
		var fType = $(this).attr("fType");
		var fValue = $(this).attr("fValue");
		if(cla == "here"){
			if(fType == "cid"){
				cid = fValue;
			}else if(fType = "orderid"){
				orderid = fValue;
			};
		}
		var val = $(this).val();
		/* alert("fType="+fType+";val="+val); */
		if(fType == "bookname" && val != "图书书名"){
			bookname = val;
		}else if(fType == "author" && val != "图书作者"){
			author = val;
		}
		var path = "${path }/share/selectByCondition.do?cid="+cid+"&bookname="+bookname+"&author="+author+"&orderid="+orderid;
		$("#cateShareIframe").attr("src",path);
	});
}

</script>
</head>
<body>
	<div id="portal">
		<div style="float:right;margin-top:40px;margin-right:45px;">
			<a href="#" fType="cid" fValue="" class="here">全部</a>&nbsp;
			<c:forEach items="${cateList }" var="cate">
				<a href="#" fType="cid" fValue="${cate.cid }">${cate.cname }</a>&nbsp;&nbsp;&nbsp;
			</c:forEach>
		</div>
		<div class="clear"></div>
		<div id="cs" style="float:right;margin-right:45px;margin-top:10px;">
			<input id="cs1" type="text" fType="author" fValue="" value="图书作者" tip="图书作者" style="color:#999999"></input>
			<input id="cs2" type="text" fType="bookname" fValue="" value="图书书名" tip="图书书名" style="color:#999999"></input>
			<input type="button" value="搜索" onclick="cs()"></input>
		</div>
		<div class="clear"></div>
		<div style="float:right;margin-right:45px;margin-top:10px;">
			<a href="#" fType="orderid" fValue="1" class="here">最新分享</a>
			<a href="#" fType="orderid" fValue="2">最热分享</a>
		</div>
		<div class="clear"></div>
	</div>
	<iframe id="cateShareIframe" src="${path }/share/selectByCondition.do" frameBorder=0 scrolling=no width="100%" height="200%"  ></iframe>
	
</body>
</html>