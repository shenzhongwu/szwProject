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

<body>
  	<script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>

	<script type="text/javascript" src="${ctx}/resources/js/webupload/webuploader.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/webupload/script.js"></script>
	<link href="${ctx}/resources/js/webupload/webuploader.css" rel="stylesheet" type="text/css" />
 <div id="wrapper">
        <div class="uploader-container">
            <div  id="filePicker">html5版本</div>
        </div>
        <div id="log">
            <strong>console 会影响 md5 时间的计算，所以在测试 md5 速度的时候，把 console 关了</strong>
        </div>
    </div>

<script type="text/javascript">


</script>

</body>

</html>