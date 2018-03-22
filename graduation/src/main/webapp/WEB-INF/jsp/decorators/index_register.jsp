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
<style>
	.searchInput{
		margin-left:5px;
		height:28px;
		border:none;
		outline:none;
		float:left;
		width:259px;
		
	}
	.divSearch{
		float:left;
		color:#6B6B6B;
		font-size: 0.8125em;
		height:40px;
		padding:15px;
	}
	
	.spanSearch{
		height:30px;
		width:329px;
		background-color:#ffffff;
		display:inline-block;
	}
	.searchimg{
	 	position:absolute;
		display:inline-block;
		width:30px;
		height:30px;
		background-color:#2da5da;
	}
	.searchTitle{
		float:left;
		display:inline-block;
		width:40px;
		background-color:#F7F7F7;
		font-color:#6B6B6B;
		height:30px;
		line-height:230%;
		text-align:center;
	}
	.active{
		font-size:16px;
		font-weight: 900;
	}
	.logoimg{
		width:180px;
		height:45px;
		padding:7.5px;
	}
	.cssmenu{
		margin-left:300px;
	}
</style>
 <div class="header-top">
			  <div class="header-top-left">
   				    	<a href="/graduation/index/main"><img class="logoimg" src="${ctx}/resources/images/kklogo.png"></img></a>|用户注册
   			 <div class="clear"></div>
   			 </div>
   			
			 <div class="cssmenu">
				<ul>
				 	<li class="active">我已注册马上<a href="/graduation/login/login">登录</a></li>
				</ul>
			</div>
			<div class="clear"></div>
	</div>
	<script type="text/javascript">
	$(function(){
		$(".imgsearch").mouseover(function(){
			$(this).css("opacity","0.8");
			$(this).css("filter","alpha(opacity=40)");
		})
		$(".imgsearch").mouseleave(function(){
			$(this).css("opacity","1");
			$(this).css("filter","alpha(opacity=40)");
		})
	})
</script>
</body>

</html>