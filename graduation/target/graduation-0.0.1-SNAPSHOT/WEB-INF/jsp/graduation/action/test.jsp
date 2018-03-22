<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%-- <%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>  --%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
 	<slides>  
      <sitemesh:write property='slides'>slides goes here</sitemesh:write> 
    </slides>  
	<!--   <sitemesh:write property='head' /> -->

			
</head>
<!--  
<frameset id="mainFrame" rows="7.8%,*" rameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" name="topFrame" frameborder=0  scrolling="no" noresize="noresize" id="topFrame" slides="topFrame">
	<frame src="${window.location.href}" name="register" frameborder=0   scrolling="no" noresize="noresize" id="register" slides="register"/>
</frameset>
<noframes><body>
</body></noframes>-->
<body>
	 <script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>
	 <script type="text/javascript" src="${ctx}/resources/js/jquery.uploadify.min.js"></script>
	<link href="${ctx}/resources/css/uploadify.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javaScript">
$(document).ready(function() {
	 $("#uploadify").uploadify({
		 			'auto'           : false,
	                'swf'       	 : '${ctx}/resources/uploadify.swf',
	                'uploader'       : '${ctx}/graduation/teacher/uploadVideoResource',//后台处理的请求
	                'queueID'        : 'fileQueue',//与下面的id对应
	                'queueSizeLimit' :1,
	                'fileTypeDesc'   : 'mp4文件或zip文件',
	                'fileTypeExts' 	 : '*.mp4;*.png', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc
	                'multi'          : true,
	                'buttonText'     : '上传'
	 });
	});
</script>

<div id="fileQueue"></div>
	        <input type="file" name="uploadify" id="uploadify" multiple="multiple" />  
	        <p>
		        <a href="javascript:$('#uploadify').uploadify('upload')">开始上传</a> 
		        <a href="javascript:$('#uploadify').uplaodify('cancel','*')">取消上传</a>
	        </p>
</body>

</html>	