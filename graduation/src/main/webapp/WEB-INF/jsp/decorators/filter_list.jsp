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
	.classify{
		display:none;
	}
</style>
 	 <script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>
	 <script type="text/javascript" src="${ctx}/resources/css/layui/layui.js"></script> 
     <link href="${ctx}/resources/css/layui/css/layui.css" rel="stylesheet" type="text/css" media="all" />
     <script type="text/javascript" src="${ctx}/resources/js/szw.js"></script>
     <link href="${ctx}/resources/css/szw.css" rel="stylesheet" type="text/css" media="all" />
 	<div class="toubu">
		<div style="position: absolute;z-index: 10001;overflow: visible;">
				<div class="allClassify"><a>所有课程分类</a></div>
				<div class="classify">
				 <c:forEach items="${cyiji}" var="li1" >
					<div class="item" yid="${li1.courseTypeId}">
						<div class="item_content">
							<c:forEach items="${cerji}" var="li2" >
								<div style="margin-left:10px;display:none;"><a target="_blank" href="/listView/courceList?courseTypeId=${li2.courseTypeId}" style="<c:if test='${li2.courceLevel eq 3}'>color:#256271;font-weight: bold;</c:if>" group="${li2.parentId}">${li2.courseTypeName}</a><span style="float: left;">、</span></div>
							</c:forEach>
							<span class="layui-icon next">&#xe602;</span>
						</div>
							<div class="classify2">
							<div class="item2_content" style="height:30px;"></div>
								<c:forEach items="${cerji}" var="li2" >
										<div  style="display:none" class="item2" yid="${li2.courseTypeId}" group="${li2.parentId}" yid="${li2.courseTypeId}">
											<c:forEach items="${li2.labelList}" var="li3">
												 	<c:if test="${li3.parentId eq '1'}">
													<div class="item2_content" yid="${li3.labelId}">
														<div group="${li3.parentId}">
															 <span >${li3.labelName}</span>
															 <div class="div_a">
															 	<c:forEach items="${li2.labelList}" var="li4">
															 		<c:if test="${li4.parentId eq li3.labelId}">
															 			<a target="_blank" href="/listView/courceList?labelId=${li4.labelId}"  group="${li4.parentId}">${li4.labelName}</a>
															 		</c:if>
															 	</c:forEach>   
															 </div>
														</div>
													</div>
											</c:if>
										  </c:forEach>   
										</div>
								</c:forEach>
								<div class="item2_content" style="height:30px;border-bottom:none;"></div>
							</div>
					</div>		
				</c:forEach>
			 </div>
		</div>
	</div>
	<script type="text/javaScript">
	//课程分类筛选List
	$(function(){
		var yiji =$(".classify").find(".item");//
		var arr = new Array();
		var index = 0;
		yiji.each(function(){
			var yijiId = $(this).attr("yid");
			var erji = $(this).children(".item_content").find("a");
			var alength = $(this).children(".item_content").find("a[group='"+yijiId+"']").length;
			$(this).children(".item_content").find("a[group='"+yijiId+"']").eq(alength-1).parent().find("span").text("");
			erji.each(function(){
				var groupId =  $(this).attr("group");
				//console.log(groupId)
				if(yijiId == groupId){
					$(this).parent().css("display","block");
					arr[0] = groupId;
					index++;
				}
			})	
			var sanji =$(this).find(".classify2").find(".item2");
			sanji.each(function(){
				var sangroupId =  $(this).attr("group");
				if(yijiId == sangroupId){
					$(this).css("display","block");
				}
			})	
		})
	});
	
	$(".item").mouseenter(function(){
		$(this).children(".classify2").css({"display":"block","border-top":"1px solid #6ebfd3"});
		//$(this).children(".classify2").children(".item2").eq(0).find(".item2_content").css({});
		$(this).children(".item_content").css({'border-right':'1px solid #fff',"border-bottom":"1px solid #6ebfd3","border-left":"2px solid #6ebfd3","border-top":"1px solid #6ebfd3","z-index":"999999"});
		$(this).find(".next").css("display","none");
	})
	$(".item").mouseleave(function(){
		$(this).find(".next").css("display","block");
		$(this).children(".classify2").css({"display":"none"});
		//$(this).children(".classify2").children(".item2").eq(0).find(".item2_content").css({"border-top":"none"});
		$(this).children(".item_content").css({'border-right':'1px solid #6ebfd3',"border-bottom":"1px solid #f2f2f2","border-left":"1px solid #6ebfd3","border-top":"none","z-index":"9999"});
	})
	
	$(".allClassify,.classify").mouseenter(function(){
		$(".classify").show();
	}).mouseleave(function(){
		$(".classify").hide();
	})
</script>
</body>
</html>