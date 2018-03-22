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
	
	
</head>
<body>
	 <script type="text/javascript" src="${ctx}/resources/js/layer/layer.js"></script> 
	<!-- stylesheet for demo and examples -->
	<!-- custom scrollbar stylesheet -->
	<link rel="stylesheet" href="${ctx}/resources/js/gundongtiao/css/jquery.mCustomScrollbar.min.css">
	<script src="${ctx}/resources/js/gundongtiao/js/jquery-1.11.1.js" type="text/javascript"></script>
	<script src="${ctx}/resources/js/gundongtiao/js/jquery.mCustomScrollbar.concat.min.js"></script>
	
		<div class="player_content">
		<div class="player_left">
		<div class="video_top"><span style="color:#fff; font-size: 16px;margin-left:16px;" >${cource.courceName}</span><span style="margin-left:30px;" >正在学习:</span><span class="resourceOrder">1课时</span><span>/${cource.resourceNum}课时</span> <a class="video_top_add" <c:if test='${empty platUser or platUser==null}'>href="${ctx}/login/login"</c:if> <c:if test="${!empty platUser}">onclick="collectCource()"</c:if>><span >加入我的课程</span></a></div>
		<video   id="my-video" class="video-js" controls="controls" autoplay preload="auto"   poster="${ctx}/resources/images/dongzuo/huanchongb.gif" data-setup="{}" /> 
		</div>
		<div class="player_right">
			<div class="player_right_top"><span>目录</span></div>
			<div class="player_right_list">
				<div id="content-1" class="content">
					<ul>
						<c:forEach items = "${resourceList}" var="rlist" varStatus="idx">
							<li src="${ctx}/${cource.coverUrl}video/${rlist.resourceName}.${rlist.resourceType}" value="${rlist.resourceId}"><span>第${idx.index+1}章</span><span>${rlist.resourceName}</span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		</div>
		<script type="text/javascript">
		function collectCource(){
			var resourceId = $(".currentVideo").attr("value");
			$.ajax({
				url:"${ctx}/wod/collectCource",
				data:{"resourceId":resourceId,"courceId":"${param.courceId}"},
				type : "post",
				success:function(msg){
					console.log(msg)
					if(msg=="none"){
						layer.msg("课程添加成功，可以在我的课程中进行查看。")
					}else if(msg=="has"){
						layer.msg("已加入课程，请不要反复添加。")
					}
				}
			})
		}
			//$("#my-video").attr('src',"${ctx}/resources/graduation/cource/1/会计人/video/会计人1.avi");
		//页面加载完毕后自动播放视频
		$(document).ready(function(){
			var logined="${!empty platUser}";
			console.log(!logined||"${empty courceVisitInfo.lastVisitResourceId}"=="true")
			if((!logined||"${empty courceVisitInfo.lastVisitResourceId}")=="true"){
				var autoVideo = $("#content-1").children("ul").find("li").eq(0).attr("src");
				$("#content-1").children("ul").find("li").eq(0).addClass("currentVideo");
				$("#my-video").attr('src',autoVideo);
				$(".resourceOrder").text("1课时")
			}else if(("${!empty  courceInfo.lastVisitResourceId}" || "${!empty courceVisitInfo.lastVisitResourceId}")){
				var lastVisitResourceId ;
				var videoList = $("#content-1").children("ul").find("li");
				console.log("${!empty courceVisitInfo.lastVisitResourceId}"+"dsds")
				if("${!empty courceVisitInfo.lastVisitResourceId}"==true){
					lastVisitResourceId = "${courceInfo.lastVisitResourceId}";
				}else{
					lastVisitResourceId = "${courceVisitInfo.lastVisitResourceId}";
				}
				videoList.each(function(idx){
					if($(this).attr("value")==lastVisitResourceId){
						var lr = $(this).attr("src");
						$("#content-1").children("ul").find("li").eq(idx).addClass("currentVideo");
						$("#my-video").attr('src',lr);
						$(".resourceOrder").text(idx+1+"课时");
					}
				})
			}
			updateViewInfo();
		})	
		//播放完毕事件
		$(function(){
			$("#my-video")[0].onended = function(){
				var readyVideo = $("#content-1").find("li.currentVideo").next();
				$("#my-video").attr('src',readyVideo.attr("src"));
				$("#content-1").find("li.currentVideo").removeClass("currentVideo");
				readyVideo.addClass("currentVideo");
				$(".resourceOrder").text($("#content-1").find("li.currentVideo").index()+1+"课时")
				updateViewInfo();
			}
		//点击播放界面暂停
		$("#my-video").click(function(){
			if($(this)[0].paused){
				$(this)[0].play();
			}else{
				$(this)[0].pause();
			}
		})
			
		})
		//滚动条	
		$(document).ready(function(){
				$(window).load(function(){
					$("#content-1").mCustomScrollbar({
						theme:"minimal"
					});
				});
			});
		//鼠标移动事件	
		$("#content-1").find("li").mouseenter(function(){
			$(this).css("background","#666666");
		}).mouseleave(function(){
			$(this).css("background","#191919");
		})
		//选择视频资源
		$("#content-1").find("li").click(function(){
			$("#my-video").attr('src',$(this).attr("src"));
			$("#content-1").find("li.currentVideo").removeClass("currentVideo");
			$(this).addClass("currentVideo");
			$(".resourceOrder").text($(this).index()+1+"课时")
			updateViewInfo();
		})
		//视频头部显示事件
		$("#my-video,.video_top").mouseenter(function(){
			 $(this).parent().find(".video_top").stop();
	         $(this).parent().find(".video_top").animate({
	        	 marginTop:"0",
	          },600);
		}).mouseleave(function(){
			 $(this).parent().find(".video_top").stop();
	         $(this).parent().find(".video_top").animate({
	        	 marginTop:"-48",
	          },600);
		})
			
		function updateViewInfo(){
			var currentResourceId = $("#content-1").find("li.currentVideo").attr("value");
			$.ajax({
				url:"${ctx}/player/updateViewInfo",
				data:{"id":"${courceInfo.id}","visitId":"${courceVisitInfo.id}","currentResourceId":currentResourceId},
				type : "post",
				success:function(msg){
					/* if(msg=="none"){
						layer.msg("更新成功")
					}else if(msg=="has"){
						layer.msg("更新失败")
					} */
				}
			})
		} 
		</script>
		<style>
		.video_top_add{
		    padding: 8px 8px;
		    background: #6cbdd1;
		    color: #fff;
		    float: right;
		    margin-right: 60px;
		    cursor: pointer;
		    margin-top: -4px;
		}
		.resourceOrder{
			color:#4cb1ca;
		}
		.video_top{
			width: 920px;
		    height: 36px;
		    position: absolute;
		    color: #999;
		    background: rgba(0, 0, 0, 0.49);
		    margin-top:-48px;
		    padding: 12px 0px 0px;
   		    font-size: 13px;
   		    cursor: auto;
   		    z-index:10000;
		}
		.video-js{
	     	 width: 100%;
   			 height: 100%;
   			 cursor: pointer;
		}
		.content{
			position: relative;
			height:520px;
			width:100%;
			overflow: auto;
		}
		.player_right_top{
			height:36px;
		}
		.player_right_list ul{
			border-top:1px solid #666666;
			width:100%;
		}
		.player_right_list li span{
			margin-left:20px;
		}
		.player_right_list li{
			padding: 12px 10px 10px 0px;
			width:100%;
			word-wrap: break-word;
			cursor: pointer;
		}
		.player_right_top span{
			padding: 0px 0px 0px 18px;
			line-height: 36px;
			width: 60px;
		    height: 36px;
		    display: block;
		    text-align: center;
		    border-bottom:1px solid #6cbdd1;;
		}
		.body{
			text-align:center;
			
		}
		.player_left{
			width:920px;
			height:100%;
			float:left;
			position:relative;
		}
		.player_right{
			height:100%;
			float:left;
			width:280px;
			background:#191919;
			color:#6cbdd1;;
		}
		.player_content{
			margin:0 auto;
			width: 1200px;
  		    height: 521px;
  		    overflow:hidden;
		}
		
		</style>
</body>
	
</html>