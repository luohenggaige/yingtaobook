<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	table{
		margin: 30px 0px 20px 50px;
	}
</style>
<title>Insert title here</title>

<script type="text/javascript" src="<c:url value='/res/js/jquery-1.8.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/res/js/jquery.form.js'/>"></script>
<script type="text/javascript">

function submitUpload(){
	var option = {
		url:"${path}/upload/upload.do",//如果ajax提交表单，那标签中的路径被覆盖
		type:"post",
		dataType:"text",
		data:{
			file:"imgsFile"
		},
		success:function(responseText){//上传成功后，填充小框展示
			var obj = $.parseJSON(responseText);
			//$("#imgsImgSrc").attr("src",obj.filePath);//先拿到元素，再填充里面的属性
			$("#imgSize").val(obj.ralPath);//把图片相对路径放入隐藏域(以防换主机造成图片数据失效所以不用绝对路径)
		},
		error:function(){
		}
	};
	$("#form11").ajaxSubmit(option);
}
</script>

</head>
<body>

	<form id="form11" name="form11" action="${path}/share/addShare.do" class="table" method="post" enctype="multipart/form-data">
		图书名称：<input type="text" id="bookname" name="bookname" ></input><br/>
		图书图片：<input type="file" id="imgsFile" name="imgsFile" onchange='submitUpload()'></input><br/>
		<input type='hidden' id='imgSize' name='imgsize' value='' reg2="^.+$" tip="亲！您忘记上传图片了。" /><span></span>
		图书作者：<input type="text" id="author" name="author" ></input><br/>
		分享理由：<input type="text" id="reason" name="reason" ></input><br/>
		图书分类：<select style="width: 150px; height: 20px;" name="cid">
    			</select><br/>
		<input type="submit" id="submit11" name="submit11" value="保存"></input>
	</form>
	
</body>
</html>