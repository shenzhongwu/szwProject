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
	lalalla
</body>

</html>	