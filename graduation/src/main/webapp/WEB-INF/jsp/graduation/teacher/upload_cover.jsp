<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%-- <%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>  --%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <link href="${ctx}/resources/css/cover/normalize.css" rel="stylesheet">
 <link href="${ctx}/resources/css/cover/bootstrap.min.css" rel="stylesheet">
 <link href="${ctx}/resources/css/cover/default.css" rel="stylesheet">
 <link href="${ctx}/resources/css/cover/cropper.css" rel="stylesheet">
 <link href="${ctx}/resources/css/cover/main.css" rel="stylesheet">
</head>
<body>
<style>
	.img-container img{
		max-height:360px ;
		max-width:800px ;
	}
	.btn-primary {
	  border-color: #00a1d6; /* hsb(210, 100%, 45%) */
	  background-color: #00a1d6; /* hsb(210, 100%, 55%) */
	}
	。cover_tips{
		width:100%;
		text-align:center;
		float:left;
		position: fixed;
	}
/* 	body{
		text-align:center;
	}
	.img-container{
		width:60%;
		height:60%;
		margin:0 auto;
		margin-top:40px;
	}
	.cropper-hidden{
		width:100%;
		height:100%;
	} */

	.btn-group>.btn:first-child{
		margin-left:400px !important;
	    margin-right: 50px;
	}
	body{
		background:#fff;
	}
</style>
<script type="text/javascript" src="${ctx}/resources/css/cover/js/jquery.min.js"></script>

		<!-- Content -->
	<div class="cover_tips" style="width:100%;text-align:center; height:60px;margin-bottom:30px;border-bottom:1px solid #e5e9ef;   float: left;padding-top:20px; font-family:Microsoft YaHei,Arial,Helvetica,sans-serif">建议上传高清封面800*600的图片</div>
	<div class="container">
	  <div class="col-md-9">
		<!-- <h3 class="page-header">Demo:</h3> -->
		<div class="img-container">
		  <img class="img_cover" src="" alt="Picture">
		</div>
	  </div>
	 </div>
	 
		<div class="modal fade docs-cropped" id="getCroppedCanvasModal" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" role="dialog" tabindex="-1">
				<div class="modal-dialog">
						<div class="modal-body"></div>
				</div>
		</div>
		
	
	<div class="btn-group btn-group-crop" >
		<button class="btn btn-primary" data-method="getCroppedCanvas" type="button">
			<span class="docs-tooltip" data-toggle="tooltip" title="$().cropper('getCroppedCanvas')">确认</span>
		</button>
		<button class="btn btn-primary"  type="button">
			<span class="cancelSpan "  title="">取消</span>
		</button>
	</div>
	  
	<script type="text/javascript" src="${ctx}/resources/css/cover/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/resources/css/cover/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/css/cover/js/cover.js"></script>
    <script type="text/javascript" src="${ctx}/resources/css/cover/js/main.js"></script>
    <script type="text/javascript">
	   
	    
    	$('.cancelSpan').click(function(){
    		parent.layer.closeAll();
    	})
		 


	</script>
</body>
</html>