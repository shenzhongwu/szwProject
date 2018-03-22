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
	 <script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>
	 <script type="text/javascript" src="${ctx}/resources/css/layui/layui.js"></script> 
</head>
<!--  
<frameset id="mainFrame" rows="7.8%,*" rameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" name="topFrame" frameborder=0  scrolling="no" noresize="noresize" id="topFrame" slides="topFrame">
	<frame src="${window.location.href}" name="register" frameborder=0   scrolling="no" noresize="noresize" id="register" slides="register"/>
</frameset>
<noframes><body>
</body></noframes>-->
<body>
 
    <link href="${ctx}/resources/css/slide-ad.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${ctx}/resources/css/layui/css/layui.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="${ctx}/resources/js/szw.js"></script>
    <link href="${ctx}/resources/css/szw.css" rel="stylesheet" type="text/css" media="all" />
	<div class="div_ad">
		<div class="div_img">
			<ul id="slides">
				<li value="0" class="titsh">
					<img alt="" style="" src="${ctx}/resources/images/ad_1.png">
				</li>
				<li value="1">
					<img alt="" style="" src="${ctx}/resources/images/ad_2.png">
				</li>
				<li value="2">
					<img alt="" style="" src="${ctx}/resources/images/ad_1.png">
				</li>
				<li value="3">
					<img alt="" style="" src="${ctx}/resources/images/ad_2.png">
				</li>
			</ul><!--<img  style="" src="${ctx}/resources/images/yuandian.png">  -->
			<ul id="pagination" >
				<li class="current" ><a href="#"><div></div></a></li>
				<li  ><a href="#"><div></div></a></li>
				<li  ><a href="#"><div></div></a></li>
				<li  ><a href="#"><div></div></a></li>
			</ul>
		</div>
	</div>
	
	<div class="toubu">
		<div style="position: absolute;z-index: 56;overflow: visible;">
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
															 <span>${li3.labelName}</span>
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
	<div class="szw_ad_middle_left">
        <div class="szw_quyu quyu1">
            <div class="szw_xg">
                <div class="szw_xgc">
                   <a href="http://www.baidu.com"> 查看详情</a>
                </div>
            </div>
            <img src="${ctx}/resources/images/imgjtsc/as.png">
        </div>
	      
         <div class="szw_quyu quyu2">
            <div class="szw_xg">
                <div class="szw_xgc">
                   <a href="http://www.baidu.com"> 查看详情</a>
                </div>
            </div>
            <img src="${ctx}/resources/images/imgjtsc/cm.png">
        </div>
         <div class="szw_quyu quyu3">
            <div class="szw_xg">
                <div class="szw_xgc">
                   <a href="http://www.baidu.com"> 查看详情</a>
                </div>
            </div>
            <img src="${ctx}/resources/images/imgjtsc/fplj.png">
        </div>
         <div class="szw_quyu quyu4">
            <div class="szw_xg">
                <div class="szw_xgc">
                   <a href="http://www.baidu.com"> 查看详情</a>
                </div>
            </div>
            <img src="${ctx}/resources/images/imgjtsc/xy.png">
        </div>
    </div>
	<div class="classify_list">
		<div class="classify_type like">
			<div class="szw_title like">
				<font>猜你喜欢</font>
				<div class="u_action" ><a onclick="huanyihuan()"><img src="${ctx}/resources/images/change.png">换一换</a></div>
			</div>
			<div class="szw_content like" value="11">
			<c:forEach items="${courseLikeList}" var="li1">
				<div class="szw_resource_show like">
					<div class="szw_cover_show like">
						<a target="_blank" href="${ctx}/player/player?courceId=${li1.courceId}">
							<img src="${ctx}/${li1.coverUrl}cover/${li1.courceName}.png"/>
						</a>
					</div>
					<div class="course_name">
						<a target="_blank" href="${ctx}/player/player?courceId=${li1.courceId}">${li1.courceName}</a>
					</div>
					<div class="szw_count">
						<img src="${ctx}/resources/images/dongzuo/time.png"><span class="szw_keshi keshi">&nbsp;${li1.resourceNum}</span>课时 &nbsp;&nbsp;&nbsp;
						<img src="${ctx}/resources/images/dongzuo/user.png"><span class="szw_keshi studytimes">&nbsp;${li1.pageView}</span>次学习
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		
		<div class="classify_type hot">
			<div class="szw_title hot">
				<font>最热课程</font>
				<div class="u_action" ><a href="/listView/courceList" target="_blank">更多</a></div>
			</div>
			<div class="szw_content hot">
				<div class="szw_resource_show hot">
					<div class="szw_cover_show hot">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
					<div class="course_name">
						<a href="">java培训基础</a>
					</div>
				</div>
				<div class="szw_resource_show hot">
				<div class="szw_cover_show hot">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
				</div>
				<div class="szw_resource_show hot">
				<div class="szw_cover_show hot">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
				</div>
				<div class="szw_resource_show hot">
				<div class="szw_cover_show hot">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
				</div>
				<div class="szw_resource_show hot">
				<div class="szw_cover_show hot">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
				</div>
				</div>
			</div>
			
		</div>
		<div class="classify_type valuable">
			<div class="szw_title valuable">
				<font>精品课程</font>
				<div class="u_action" ><a href="/listView/courceList" target="_blank">更多</a></div>
			</div>
			<div class="szw_content valuable">
				<div class="szw_resource_show valuable">
					<div class="szw_cover_show valuable">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
					<div class="course_name">
						<a href="">java培训基础</a>
					</div>
				</div>
				<div class="szw_resource_show valuable">
				<div class="szw_cover_show valuable">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
				</div>
				<div class="szw_resource_show valuable">
				<div class="szw_cover_show valuable">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
				</div>
				<div class="szw_resource_show valuable">
				<div class="szw_cover_show valuable">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
					</div>
				</div>
				<div class="szw_resource_show valuable">
				<div class="szw_cover_show valuable">
						<img src="${ctx}/resources/graduation/cource/1/java基础到实战/cover/java基础到实战.png"/>
				</div>
				</div>
			</div>
			
		</div>
		<div>最热课程</div>
		<div>精品课程</div>
	</div>
<script type="text/javaScript">

	//猜你喜欢换一换
	function huanyihuan(){
		$.ajax({
			type : "post",
			url:"${ctx}/index/huanyihuan",
			success:function(data){
				 //var dataObj=eval("("+data+")");    
				$.each(data, function(i,item){ 
					 var src ="/"+item.coverUrl+"cover/"+item.courceName+".png";
					 var href = "/player/player?courceId="+item.courceId;
					 $(".szw_content.like").find(".szw_cover_show").eq(i).find("a").attr("href",href)
					 $(".szw_content.like").find(".course_name").eq(i).find("a").attr("href",href);
					 $(".szw_content.like").find(".szw_cover_show").eq(i).find("img").attr("src",src);
					 $(".szw_content.like").find(".course_name").eq(i).find("a").text(item.courceName);
					 $(".szw_content.like").find(".szw_count").eq(i).find(".keshi").html("&nbsp;"+item.resourceNum);
					 $(".szw_content.like").find(".szw_count").eq(i).find(".studytimes").html("&nbsp;"+item.pageView);
		            });     
			}
		})
	}
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
	
	$(".szw_cover_show ,.szw_quyu").mouseenter(function(){
		 var w = $(this).width();
		 var h = $(this).height();
		 var afterw = 1.1*w;
		 var afterh = 1.1*h;
		 var afterleft = 0-0.05*h;
		 var aftertop = 0-0.05*w;
          $(this).find("img").stop();
          $(this).find("img").animate({
              width: afterw,
              height: afterh,
              left:afterleft,
              top:aftertop,
          },600);
	})
	$(".szw_cover_show,.szw_quyu").mouseleave(function(){
		 var w = $(this).width();
		 var h = $(this).height();
          $(this).find("img").stop();
          $(this).find("img").animate({
        	  width: w,
              height: h,
              left:"0",
              top:"0",
          },600);
	})

	$(function(){
		var classify_list_mtop = $(".classify").children(".item").length*30+30+"px";
	//	$(".classify_list").css("margin-top",classify_list_mtop);
	})
	
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
	
	$(function(){
            $("#pagination").children("li").each(function(index){
                $(this).click(function(){
                	 $("#pagination .current").removeClass("current");
                     $("#slides .titsh").removeClass("titsh");
                     $(this).addClass("current");
                     $("#slides>li:eq("+index+")").addClass("titsh");
                })
            })                
        })
     
    	  var pagination = $('#pagination li');
    	  var paginationFirst = $("li:first-child",'#pagination');
    	  var paginationlast = $("li:last-child",'#pagination');
    	  $(function(){
    		  setInterval(function(){
    			  var currentSlide = $('.titsh');
    			  var currentPagination = $('.current');
    			  $("#pagination .current").removeClass("current");
                  $("#slides .titsh").removeClass("titsh");
                  if(currentSlide.index()==($(pagination).size()-1)){
                	  $("li:first-child",'#pagination').addClass("current");
                	  $("li:first-child",'#slides').addClass("titsh");
                  }else{
                	  currentSlide.next().addClass("titsh");
                      currentPagination.next().addClass("current");
                  }
    		  },3000)
    	  })
    	  
    	  $(function(){
    		 $('#slides li img').width($('.div_ad').width());
    	  })
</script>
<style>
.div_a{
	float:left;
	word-wrap:break-word;
	    width: 600px;
}
/*中部广告*/
.szw_ad_middle_left{
    width: 869px;
    height: 300px;
    margin-left: 500px;
}
.szw_quyu{
	height:inherit;
	width:240px;
}
.quyu2{
	height:140px;
	width:240px;
	margin-left:250px;
}
.quyu3{
	height:140px;
	width:240px;
	margin-left:250px;
	margin-top:160px;
}
.quyu4{
	height:inherit;
	width:240px;
	margin-left:500px;
}

#pagination div{
	height:10px;
	width:10px;
	background-image:url('${ctx}/resources/images/yuandian.png');
	background-size:contain;
}
#pagination .current div{
	background-image:url('${ctx}/resources/images/yuandian_lan.png');
	background-size:contain;
}
</style>
</body>

</html>