<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%-- <%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>  --%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<title>  
      <sitemesh:write property='title'>看客</sitemesh:write> 
    </title>  
	<!--   <sitemesh:write property='head' /> -->
	 <link rel="stylesheet" href="${ctx}/resources/css/fwslider.css" media="all">
     <link href="${ctx}/resources/css/szw.css" rel="stylesheet" type="text/css" media="all" />
     <link href="${ctx}/resources/css/szw2.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>
</head>
<!--  
<frameset id="mainFrame" rows="7.8%,*" rameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" name="topFrame" frameborder=0  scrolling="no" noresize="noresize" id="topFrame" title="topFrame">
	<frame src="${window.location.href}" name="register" frameborder=0   scrolling="no" noresize="noresize" id="register" title="register"/>
</frameset>
<noframes><body>
</body></noframes>-->
 		
<body>
<div style="min-width:1600px !important">
		<jsp:include page="top.jsp"></jsp:include>
			<sitemesh:write property='body' />
			<div style="width:100%;height:60px;"></div>
		<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>

</html>