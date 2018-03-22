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
</head>

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
		height:30px;
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
	
	.szw_ul{
		background:#fff;
		color:black;
		font-size:12px;
		display:none;
	    position: absolute;
	    cursor: pointer;
	}
	.szw_ul li{
		padding:10px 20px 10px 12px;
		  display: block !important;
	}
	.szw_ul li:hover{
		background:#fbfbfb;
	}
	.szw_ul li a{
	    color: black !important;
	    display: block !important;
	    margin: 0px !important;
	    margin-top: 0px !important;
	}
</style>
 <div class="header-top">
			  <div class="header-top-left">
   				    	<a href="/index/main"><img class="logoimg" src="${ctx}/resources/images/kklogo.png"></img></a>
   			 <div class="clear"></div>
   			 </div>
   			 <div class="divSearch" id="divSearch">
   			 	<span class="spanSearch">
   			 		<span class="searchTitle" style="align-text:center">课程</span>
   			 		<input class="searchInput" placeholder="输入关键字..." border="none" <c:if test="${!empty courceNameFlag}">value='${courceNameFlag}'</c:if>> 
   			 	<span class="searchimg">	<img class="imgsearch"  src="${ctx}/resources/images/searcht.png" style="height:30px;width:30px; ">  </img></span>
   			 	</span>
   			 </div>
			 <div class="cssmenu" <c:if test="${empty platUser or platUser==null}">style="display:none"</c:if>>
			 	<ul class="wod_tou">
			 		<li class="active" style="width:60px;padding:0px 0px;"><a style="margin-top:10px;" href="/login/login"><img  alt="" src="${ctx}/resources/images/toufemale.png"></a></li> 
			 		<ul class="szw_ul">
			 			<li><a href="${ctx}/wod/myCource">我的课程</a></li>
			 			<li>设置中心</li>
			 			<li><a href="/login/quit">退出</a></li> 
			 		</ul>
			 	</ul>
				<ul>
					<li class="active"><a href="/login/login">我的课程</a></li> 
				</ul>
				<ul>
					<li class="active"><a href="/teacher/teacher">我是老师</a></li> 
				</ul>
				
			</div>
			 <div class="cssmenu" <c:if test="${!empty platUser }">style="display:none"</c:if>>
				<ul>
					<li class="active"><a href="/login/login">马上登录</a></li> |
				 	<li class="active"><a href="/register/register" >注册</a></li>
				</ul>
			</div>
	</div>
<script type="text/javascript">

	$(".searchimg").click(function(){
		window.location.href="/listView/courceList?courceName="+$(".searchInput").val()+"&courceNameFlag="+$(".searchInput").val();
	})
	$(function(){
		$(".imgsearch").mouseover(function(){
			$(this).css("opacity","0.8");
			$(this).css("filter","alpha(opacity=40)");
		})
		$(".imgsearch").mouseleave(function(){
			$(this).css("opacity","1");
			$(this).css("filter","alpha(opacity=40)");
		})
		
		
		$(".wod_tou").mouseover(function(){
			$(this).find(".szw_ul").css("display","block");
		}).mouseleave(function(){
			$(this).find(".szw_ul").css("display","none");
		})
	})
</script>

</body>
</html>