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
      <sitemesh:write property='slides'>我是知识传播者</sitemesh:write> 
    </slides>  
	<!--   <sitemesh:write property='head' /> -->
	 <script type="text/javascript" src="${ctx}/resources/js/upload/jquery.fileupload.js"></script>
	 <script type="text/javascript" src="${ctx}/resources/js/upload/jquery.iframe-transport.js"></script>
	 <script type="text/javascript" src="${ctx}/resources/js/upload/jquery.ui.widget.js"></script>
	
</head>
<body>
		 <script src="${ctx}/resources/js/video/js/video.min.js"></script>	
	<a href="${ctx}/teacher/upload">aaaa</a>
	<%-- controls="controls" preload="auto" width="640" height="264"  poster="${ctx}/resources/images/jia.png" data-setup="{}" --%>
		<video  id="my-video" class="video-js vjs-default-skin" controls preload="none" width="640" height="264"  
      poster="test.png"  
      data-setup="{'example_option':true}" >
			<source src="${ctx}/resources/graduation/cource/1/求职宝典/video/321.mp4" type="video/mp4" /> 
		</video >
		  <script type="text/javascript">
			var myPlayer = videojs('my-video');
			videojs("my-video").ready(function(){
				var myPlayer = this;
				myPlayer.play();
			});
		</script>
</body>

</html>