<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%-- <%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>  --%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
	<!--   <sitemesh:write property='head' /> -->
</head>
<body>
<style>
.szw_divlist{
     width: 210px;
    height: 240px;
    background: #fff;
    float:left;
    margin: 15px 4px ;
    text-align: left;
}
.cource_cover_img{
	width: 198px;
    height: 132px;
    margin: 6px;
}
.szw_cname{
	text-align:left;
	margin-left:16px;
	margin-right:16px;
	margin-bottom:10px;
}
.szw_cname a:hover{
	    text-decoration: underline;  
}
.szw_keshi{
	margin-left:16px;
}
.uploder a:hover{
	color:#6ebfd3;
}
.szw_list_content{
	margin:0 auto;
	width:80%;
    text-align:center;
}
body{
	text-align:center;
}
.szw_list_content_top{
	width:1084px;
	background:#fff;
	margin:0 auto;
	text-align:left;
	min-height:40px;
}
.szw_list_content_cource{
	margin:0 auto;
	width:1090px;
    min-height:278px;
}
.szw_list_content_tips{
	width:1084px;
	height:50px;
	text-align:left;
	margin:0 auto;
}
.tips_span{
	padding: 4px;
    border: 0.4px dashed #000;
    margin-top: 14px;
    font-size: 12px;
    display: -webkit-inline-box;
}
.top_left{
	padding:8px 0px 8px 20px;
	width:5%;
	font-size: smaller;
    color: #969292;
    float:left;
}
.classify1{
	padding:8px 20px 8px 20px;
	font-size: 12px;
    width:86%;
    float:left;
}
.classify1 div{
	width:150px;
    float:left;
}
</style>
  <script type="text/javascript" src="${ctx}/resources/css/layui/layui.js"></script>
  <script type="text/javascript" src="${ctx}/resources/js/layer/layer.js"></script>
  <link rel="stylesheet" href="${ctx}/resources/css/layui/css/layui.css">
	<div class="szw_list_content">
	<div class="szw_list_content_tips">
		<span class="tips_span">全部课程</span>
		<span style="margin-left:20px;">共找到<span style="color:red;">${pageList.allSize}</span>门课程</span>
	</div>
	<div class="szw_list_content_top">
		<div class="top_left">课程：</div>
		<div class="classify1">
			<div><a href="/listView/courceList"><span style="color:#4cb1ca;margin-right:0px;">全部</span>(${pageList.allSize})</a></div>
			<c:forEach items="${cyiji}" var="yiji">
				<div><a href="/listView/courceList?typeParentId=${yiji.courseTypeId}"><span>${yiji.courseTypeName }</span></a></div>
			</c:forEach>
		</div>
	</div>
		<div class="szw_list_content_cource">
		 <c:forEach items="${pageList.results}" var="courceList">
			<div class="szw_divlist">
				<a target="_blank" href="${ctx}/player/player?courceId=${courceList.courceId}"><img class="cource_cover_img" src="${ctx}/${courceList.coverUrl}cover/${courceList.courceName}.png"></img></a>
				<div class="szw_cname"><a  target="_blank" href="${ctx}/player/player?courceId=${courceList.courceId}">${courceList.courceName}</a></div>
				<span class="szw_keshi studytimes">${courceList.pageView}</span>次学习 <span class="uploder" style="float:right;color: #a59999; margin-right:16px;"><a>admin</a></span>
			</div>
		</c:forEach>
		</div>
	</div>
	<div id="pageIndex"></div>
		<script>
		layui.use(['laypage', 'layer'], function(){
			  var laypage = layui.laypage
			  ,layer = layui.layer;
			  laypage({
				    cont: 'pageIndex'
				    ,pages: "${pageList.allPage}"
				    ,skip: true
				    ,curr: "${pageList.currentPage}"
				    ,last: "${pageList.allPage}"
				    ,jump: function(obj, first){
				        //得到了当前页，用于向服务端请求对应数据
				        var curr = obj.curr;
				        if(!first){
				        window.location.href="/listView/courceList?courceName="+$(".searchInput").val()+"&courceNameFlag="+$(".searchInput").val()+"&courceId="+"${param.courseTypeId}&labelId="+"${param.labelId}"+"&currentPage="+curr;
				        } 
				      }
				  });
		})
	</script>
<script type="text/javaScript">
	 $(function(){
		$(".szw_divlist").mouseenter(function(){
			$(this).css("box-shadow"," 0 0 12px #82caff");
		}).mouseleave(function(){
			$(this).css("box-shadow","none");
		})
		
	}) 
</script>
</body>
	
</html>