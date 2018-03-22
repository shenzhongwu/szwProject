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
	 <script src="${ctx}/resources/js/video/video.min.js"></script>	
</head>
<body>
<style>
	body{
		text-align:center;
	}
	.wod_top{
		margin:0 auto;
		
	}
	.wod_img img{
		width:1300px;
		height:200px;
	}
	.wod_top_content{
		background:#fff;
		width:1300px;
		height:60px;
		margin:0 auto;
		border-radius: 0px 0px 10px 10px;
	}
	.wod_touxiang{
	    float: left;
	    width:106px;
		height:106px;
		background:rgba(48, 152, 228, 0.15);
		border-radius:3px;
	}
	.wod_info{
	   position: absolute;
	   margin-left: 16%;
	   width:1000px;
	   height:106px;
	   margin-top: -53px;
	}
	.wod_info_content{
		float: left;
	}
	.wod_name{
		text-align:left;
		color:#4cb1ca;
		font-weight:700;
		font-size:18px;
		margin-left:10px;
	}
	.wod_remark input{
		border:none;
		background:none;
		width:360px;
		height:24px;
		border-radius:5px;
		text-indent: 10px;
	}
	.wod_remark input:hover{
		border:1px solder red;
		background:rgba(255, 255, 255, 0.44);;
	}
	.wod_remark input:focus {
		 color: #ed1941;
	     border: none; 
		 background-color: #fff;
		 -webkit-box-shadow:inset 0 0 4px #060606;  
  		-moz-box-shadow:inset 0 0 4px #060606;  
 		 box-shadow:inset 0 0 4px #060606;  
 		 outline: none;
		}
	.wod_touxiang img{
		width:100px;
		height:100px;
	    margin-top:3px;
	}
	.wode_middle{
		background:#fff;
		width:1300px;
		min-height:360px;
		margin:0 auto;
		border-radius:10px;
		margin-top:30px;
	}
	.wod_top_content_ul ul{
		margin-left:320px;
	}
	.wod_top_content_ul li{
		float:left;
		margin-left:36px;
		margin-top:20px;
	}
	.wod_top_content_ul{
		width:100%;
	}
	.wode_middle_top{
		width:100%;
		height:40px;
		border-bottom:1px solid #f0f0f0;
	}
</style>
	<div class="wod_top">
		<div class="wod_img">
			<img src="${ctx}/resources/images/wod_top.png">
		</div>
		<div class="wod_info">
			<div class="wod_touxiang">
				<a><img  alt="" src="${ctx}/resources/images/toufemale.png"></a>
			</div>
			<div class="wod_info_content">
			<div class="wod_name">${platUser.userName}</div>
			<div class="wod_remark"><input placeholder="编辑个性签名" type="text" value="${platUser.remark}"></div>
			</div>
		</div>
		<div class="wod_top_content">
		 <div class="wod_top_content_ul">
			<ul class="wod_ul">
				<li>我的收藏</li>
				<li>我的课程</li>
				<li>观看历史</li>
			</ul>
		</div>	
		</div>
	</div>
	<div class="wode_middle">
		<div class="wode_middle_top">
		<div style="float:left;margin: 10px;">我的收藏夹</div>
		</div>
		<div class="wod_cource">
			<c:forEach var="cource" items="${courceList}" > 
				<div>${cource.courceName } </div>
			</c:forEach>	 
		</div>	
	</div>

</body>

</html>