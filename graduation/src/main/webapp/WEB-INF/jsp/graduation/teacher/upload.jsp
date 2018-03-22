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
   <!--引入CSS-->
  <link rel="stylesheet" type="text/css" href="${ctx}/resources/js/webupload/webuploader.css">
  <!--引入JS-->
  <script type="text/javascript" src="${ctx}/resources/js/webupload/webuploader.js"></script>
  <script type="text/javascript" src="${ctx}/resources/css/layui/layui.js"></script>
  <script type="text/javascript" src="${ctx}/resources/js/layer/layer.js"></script>
  <link rel="stylesheet" href="${ctx}/resources/css/layui/css/layui.css">
  <script type="text/javascript" src="${ctx}/resources/js/jquery-1.10.2.js"></script>
   <script type="text/javascript" src="${ctx}/resources/js/bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="${ctx}/resources/js/bootstrap/css/bootstrap.min.css">
<style>
body{
	background-image:url("${ctx}/resources/images/bg_upload2.png");
	text-align:center;
	margin:0px;
}
.upload_content{
	min-height:600px;
	width:60%;
	background-color:#fff;
	border:1px solid  #e3e4ec;
	margin:0 auto;
	margin-bottom:80px;
	margin-top:20px;
	border-radius: 4px;
	overflow: auto;
}
.div_left{
	float:left;
	height:100%;
	width:25%;
	text-align:center;
}
.div_cover{
	margin:0 auto;
	height:108px;
	width:60%;
	border:2px dashed #e4dce3;
	margin-top:30px;
	color:#aeaeb1;
	border-radius: 4px;
}
.div_cover img{
	height:50%;
	width:56%;
	opacity:0.3;
	margin-top:20px;
	margin-bottom:4px;
}
.cover_tips_sj{
	color:#eee;
    -webkit-transform: rotate(-90deg);
    -moz-transform: rotate(-90deg);
    filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
	margin-bottom:-6px;
}
.cover_tips{
	margin:0 auto;
	width:60%;
	height:120px;
    font-size: 12px;
    line-height: 20px;
    color: #666;
    box-sizing: border-box;
    border-radius: 4px;
    background:#eee;
    padding:10px;
    text-align:left;
}
.div_right{
	float:left;
	height:100%;
	width:75%;
}
.fade{
	 opacity: 1 !important;
}
#getCroppedCanvasModal{
		height: 100%;
		width:100%;
		display:none;		
}
#getCroppedCanvasModal canvas{
		height: 100%;
		width:100%;
}
.div_submit{
		height:40px;
		width:100%;
		margin-top:60px;
		margin-bottom:40px;
}
.btn_upload{
	width:180px;
	height:40px;
	background:#00b5e5;
	color:#fff;
	font-size:16px;
	font-family:"Microsoft YaHei,Arial,Helvetica,sans-serif";
	border:none;
}
.btn_label{
	width:80px;
	height:30px;
	background:#00b5e5;
	color:#fff;
	font-size:13px;
	font-family:"Microsoft YaHei,Arial,Helvetica,sans-serif";
	border:none;
}
.file_add{
	margin-top:10px;
	height:60px;
	width:100%;
    text-align: left;
    padding-top: 20px;
    color:#00a1d6;
}
.file_add img{
	height:32px;
	width:32px;
	opacity:0.2;
	margin:auto;
}
.file_add2{
	height:32px;
	width:140px;
	background-color:#fff;
	border:2px dashed #e4dce3;
	text-align:center;
	}
.file_detail{
	margin-top:20px;
}
.file_schedule{
	height:40px;
	width:100%;
	margin-top:30px;
}
.file_schedule_left{
	height:100%;
	width:60px;
	float:left;
}
.file_schedule_left img{
	height:40px;
	width:60px;
}
.file_index{
	position: absolute;
    line-height: 44px;
    margin: auto;
    height: 40px;
    width: 60px;
    color: blue;
    font-size:18px;
}
.file_schedule_right{
	width:660px;
	height:20px;
	float:left;
	text-align: left;
}
.file_schedule_right input{
	border:none;
	color:#00a1d6;
	margin-left:10px;
}
.file_schedule_top{
	font-size:12px;
	
}
.progress_done{
    width: 0%;
    background: linear-gradient(90deg,#00a1d6,#45cafb);
    height: 4px;
    border-radius: 2px;
    position: relative;
}
.progress_undone{
    width: 90%;
    background: #ccd0d7;
    height: 4px;
    border-radius: 2px;
    position: relative;
}
.del{
	font-size: 16px; 
	color: red;
	float:right;
	display:none;
	margin-right: 60px;
}
.pest{
    float: right;
    margin-right: 100px;
    width: 12px;
    margin-top: 3px;
}
.danxuan{
	margin-left:20px;
	color:#ccc;
	margin-right:5px;
}

.file_detail_content div{
	padding-bottom:30px;
}
.file_detail_content{
	font-family:'Microsoft YaHei,Arial,Helvetica,sans-serif';
}
.partition_type span{
   /*  min-width: 77px; */
    height: 32px;
    line-height: 32px;
    padding: 0px 10px;
    border: 1px solid #ccd0d7;
    border-radius: 4px;
    background: #f4f5f7;
    margin-bottom: 10px;
    margin-right: 10px;
    cursor: pointer;
    display: inline-block;
}
.partition_type span:hover{
	background: #fff;
	border-color: #00a1d6;
}
.labels{
	width:90%;
	min-height:100px;
    border: 1px solid #ccd0d7;
    border-radius: 4px;
    display:none;
}
.label_type span{
	cursor: pointer;	
	font-size: 12px;
	height: 22px;
	line-height: 20px;
	border: 1px solid #e5e9ef;
	margin: 0 10px 15px 0;
	padding: 0px 10px;
    display: inline-block;
	border-radius: 10px;
}
.label_type{
	margin-left:20px;
	display:none;
}
.label_type span:hover{
	color: #00a1d6;
	border-color: #00a1d6;
}
.title-input{
	display: inline-block;
	width: 90%;
	height: 42px;
	border-radius: 4px;
	font-size: 12px;
	color: #222;
	border: 1px solid #ccd0d7;
	padding: 5px 12px;
	box-sizing: border-box;
}
.title-wrp .count-wrp {
    position: absolute;
    right:60px;
    top: 1px;
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    min-width: 40px;
    text-align: center;
    color: #99a2aa;
    border-radius: 4px;

}
.description-wrp .count-wrp {
    position: absolute;
    bottom: 10px;
    min-width: 40px;
    text-align: center;
    font-size: 12px;
    color: #99a2aa;
    right: 70px;
}
.description-wrp textarea{
    display: block;
    width: 86.6%;
    height: 150px;
    border-radius: 4px;
    border: 1px solid #ccd0d7;
    font-size: 12px;
    color: #222;
    padding: 5px 12px;
    resize: none;
}
.layui-layer-title{
    padding: 0 20px 0 15px;
    height: 20px;
    line-height: 20px;
    border-bottom: 1px solid #eee;
    font-size: 12px;
    color: #333;
    overflow: hidden;
    background-color: #F8F8F8;
    border-radius: 2px 2px 0 0;
    display:none;
}
.layui-layer-setwin{
	position: absolute;
    right: 3px;
    top: 0px;
    line-height: initial;
    display:none;
  
}
.layui-layer-close1{
    color:#e5efe9;
    font-size:10px;
}
.layui-layer-dialog .layui-layer-content{
    position: relative;
    padding: 12px;
    line-height: 12px;
    /* word-break: break-all; */
    font-size: 8px;
    overflow: inherit;
    font-size: 8px;
}
.layui-layer-border{
	position: absolute;
}
.layui-layer-btn{
	text-align: right;
    padding: 0 10px 12px;
    pointer-events: auto;
    margin-top: 8px;
    font-size: 8px;
}
.layui-layer-btn a{
	  height: 16px;
    line-height: 16px;
    margin: 2px 4px;
    padding: 0 15px;
    border: 1px solid #dedede;
    background-color: #f1f1f1;
    color: #333;
    border-radius: 2px;
    font-weight: 400;
    cursor: pointer;
    text-decoration: none;
    font-size: 8px;
}
.layui-layer-dialog{
	min-width: 150px;
    border: 1px solid #e5efe9;
    border-radius: 4px;
}
.webuploader-pick {
    position: relative;
    cursor: pointer;
    background: rgba(255, 255, 255, 0);
    padding: 0px 15px;
    color: #fff;
    text-align: center;
    border-radius: 3px;
}
.bluebg{
	background:#00a1d6 !important;
	color:#fff !important ;
}
.glyphicon-tag{
	color: #12a4d4;
	font-size:14px;
	margin-left:16px;
}
.tag-font{
	color: #12a4d4;
	font-size:14px;
}
#coverupload{
	display:none !important;
}
.modal-dialog{
	width: inherit;
	margin: 0px auto;
}
.modal-dialog {
    position: relative;
    width: auto;
}
.modal-body {
    /* position: relative; */
     padding: 0px; 
}
* {
    -webkit-box-sizing: inherit;
    -moz-box-sizing: border-box;
    box-sizing: inherit;
    }
.label-tag{
    display: inline-block;
}    
</style>
	<div class="upload_content">
		<div class="div_left">
			<div class="div_cover">
				<div class=" " id="getCroppedCanvasModal" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" role="dialog" tabindex="-1">
					<div class="modal-dialog">
							<div class="modal-body"></div>
					</div>
				</div>
				<img class="covertips" src="${ctx}/resources/images/add_img.png" >
				<div class="covertips" >上传封面</div>
					<input style="" id="coverupload" type="file" name="file[]"  multiple hidden>
			</div>
			<div class="layui-icon cover_tips_sj" >&#xe623;</div>
			<div class="cover_tips">
				<span class="layui-icon" style="font-size: 1px;">&#xe617;</span>建议上传高清封面≥800*600<p>
				<span class="layui-icon" style="font-size: 1px;">&#xe617;</span>与视频内容差异过大或没有上传图片，将自动截取影片画面
			</div>
		</div>
		<div class="div_right">
			<!-- 文件进度显示区 -->
			<div class="file_progress">
			</div>
		
			<!-- 文件添加显示区 -->
			<div class="file_add">
				<div class="file_add2">
						 <div id="fileupload"><img class="covertips" src="${ctx}/resources/images/jia.png" ></div>
				</div>
				<div class="layui-icon" style="margin-top:5px;">&#xe600;选择你要上传的课程</div>
			</div>
			
			<!-- 文件信息描述显示区 -->
			<div class="file_detail">
				<div style="border-bottom:1px solid #dedede;width:90%;text-align:left">基本信息</div>
				<div class="file_detail_content" style="margin-top:30px; text-align:left">
					<div class="file_detail_content_type">
						<div style='padding-bottom:10px;' >课程类型</div>
						<span class="layui-icon danxuan xuanzhong" value="自制课程">&#xe643;</span>自制课程
						<sapn class="layui-icon danxuan" value="转载课程">&#xe63f;</sapn>转载课程
					</div>
					<div class="file_detail_content_partition">
						<div style='padding-bottom:10px;'>选择分区</div>
						<div class="partition_type">
							<c:forEach items="${cerji}" var="li1">
								<span yid="${li1.courseTypeId }">${li1.courseTypeName}</span>
							</c:forEach>
						</div>
					</div>
					
					<div class="file_detail_content_label">
						<div style='padding-bottom:10px;'>添加标签</div>
						<div class="labels">
							<span style="display:block;margin-top:20px;margin-left:20px;margin-bottom:10px;">选择如下标签能更好地展示您的投稿</span>
							<c:forEach items="${cerji}" var="li1">
								<div class='label_type' index="${idx}">
								<c:forEach items="${li1.labelList}" var="li2" varStatus="idx">
									<c:if test="${li2.parentId  != '1'}">
										<span yid="${li2.labelId}">${li2.labelName}</span>
									</c:if>
								</c:forEach>
							</div>
							</c:forEach>
							
							<div style="margin-left:30px;padding-bottom: 0px;">
								<button class="btn_label">保存</button>
							</div>
						</div>
						<div class="layui-icon before_partition" style="color:#00a1d6"> &#xe60b;请选择分区</div>
					</div>
					<div>
						<div style='padding-bottom:10px;'>课程标题</div>
						<div class="title-wrp" style="position: relative;"> <input id="courceName" class="title-input" type="text"  maxlength="80" placeholder="请输入稿件标题" oninput="fontcount(this)" value="这是一个课程"> <div class="count-wrp">0/80</div> </div>
					</div>
					<div>
						<div style='padding-bottom:10px;'>课程简介</div>
						<div class="description-wrp" style="position: relative;"> <textarea id="courseIntroduce" placeholder="请输入简介" maxlength="250" oninput="fontcount(this)"></textarea> <div class="count-wrp ">0/250</div> </div>
					</div>
				</div>
			</div>
			<div class ="div_submit">
				<button class="btn_upload" onclick="currentUpload()">上传课程</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	//点击分区显示
		var arrLabel = new Array();
	$(function(){
		$('.partition_type').find('span').click(function(){
			if(!$(this).hasClass("bluebg")){
				$(".label-tag").remove();
				arrLabel = [];
				$(".bluebg").removeClass("bluebg");
				var index = $(this).index();
				$('.before_partition').css("display","none");
				$('.labels').css("display","block");
				$('.labels').find('.label_type').css("display","none");
				$('.labels').find('.label_type').eq(index).css("display","block");
				$(this).addClass("bluebg");
			}
		})
		
		$('.label_type').find('span').click(function(){
			if($(this).hasClass("bluebg")){
				$(this).removeClass("bluebg");
				arrLabel[$(this).index()] =null;
			}else{
				$(this).addClass("bluebg");
				arrLabel[$(this).index()] = $(this).text()+","+$(this).attr("yid");
			}
		})
		
		$(".btn_label").click(function(){
			$(".labels").hide();
			var item ="";
			var labelName  = new Array();
			for(var i=0;i<arrLabel.length;i++ ){
				if(arrLabel[i]!=null){
					labelName = arrLabel[i].split(",");
					item+='<span class="label-tag"><span class="glyphicon glyphicon-tag"></span><font class="tag-font">'+labelName[0]+'</font></span>'
				}
			}
			$(".file_detail_content_label").append(item);
		})
		
		//点击单选课程出处
		$(".danxuan").click(function(){
			$(".danxuan").html('&#xe63f;');
			$(".danxuan").removeClass("xuanzhong");
			$(this).html('&#xe643;');
			$(this).addClass('xuanzhong');
		})
	})
	//输入字符计数
	function fontcount(iput){
		var maxlength = $(iput).attr('maxlength');
		var fontcounts = $(iput).val().length;
		$(iput).parent().children('.count-wrp').html(fontcounts+'/'+maxlength);
	}
	$().ready(function(){
	    init();
	});
	
	var state = "pending";
	var uploader;
	var fileArr = new Array();
	var fileCount=0;
	
	function init(){
	    if (!uploader) {
	        uploader = WebUploader.create({
	            swf : "${ctx}/resources/js/webupload/Uploader.swf",
	            server : "/teacher/uploadVideoResource",
	            //自动上传
	            auto : true,
	            pick : {id:"#fileupload",multiple:true},
	       	    threads:3,
	        	// 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
	       	    resize: false,
	       	    //是否允许在文件传输时提前把下一个文件准备好
	        	//prepareNextFile:true
	       	    duplicate:false,
	       		// 开起分片上传。
	       	 //   chunked: true
	        });
	    }  
	    uploader.on( 'uploadSuccess', function(file) {
	    	$("#"+file.id).find(".uploadStatus").text('上传完毕');
		 });
		  uploader.on( 'uploadError', function( file ) {
			   $("#"+file.id).find(".uploadStatus").text('上传出错');
	    });
		   
	   uploader.on("uploadProgress",function(file,percentage){
		 	    $("#"+file.id).find(".progress_done").css("width",percentage*100+"%");
				$("#"+file.id).find(".uploadStatus").text("上传中")
	   		})
   		uploader.on("fileQueued" ,function( file ) {
   			fileArr[fileCount] = file.name;
		    var fileName = file.id;
			fileCount=fileCount+1;
			var file_schedule_html='<div class="file_schedule" id="'+fileName+'"><div class="file_schedule_left"><div class="file_index">'+fileCount+'</div><img  src="${ctx}/resources/images/uploadfile.png"></div><div class="file_schedule_right"><div class="file_schedule_top"><input  type="text" value="'+file.name.split(".")[0]+'" placeholder="请输入分P标题名"> <span class="uploadStatus"></span><img class="pest" src="${ctx}/resources/images/dongzuo/pause.png"> <i class="layui-icon del" >&#xe640;</i></div><div class="file_schedule_bottom"><div class="progress_undone"><div class="progress_done"></div></div></div></div></div>'
			$(".file_progress").append(file_schedule_html);
			$("#"+fileName).find(".uploadStatus").text("等待上传")
	    });
	}
	
	$(function(){
		//删除事件
		$(document).on('click','.file_progress i',function(){
			var idel= $(this);
			var pageX = idel.offset().left-70-$(document).scrollLeft()+'px';
			var pageY = idel.offset().top+16+'px';
			$('.file_progress i').removeClass('blockdel');
			idel.addClass('blockdel');
			layer.confirm('确定删除?',
						 {btn:['删除','取消'],
						  shade:false,
						  offset: [pageY,pageX],
						  area:["60px","70px"]
						 },
						 function(idx){
							var index = idel.parent().parent().parent();
							var delId =  index.attr("id");
							uploader.removeFile(uploader.getFile(delId),true);
							fileArr.splice(index.index(),1);
							fileCount--;
							index.remove();
							resetidx();
							console.log(fileArr)
						layer.close(idx);
						idel.removeClass('blockdel');
					},
					 function(){
						  idel.removeClass('blockdel');
						  idel.css("display","none");
					  }		
			);
		})
	})
	
		function fstatus(){
			var files = uploader.getFiles();
			for(var i=0;i<files.length;i++){
				console.log(files[i])
			}
		
		}
		//
		$(document).on('mouseenter',".layui-layer-border",function(){
			$(".blockdel").css("display","block");;
		})
		$(document).on('mouseleave',".layui-layer-border",function(){
			$(".blockdel").css("display","none");;
		})	
	
	//重置序列
	function resetidx(){
		var fileidx = $('.file_progress').find('.file_schedule').find('.file_schedule_left').find('.file_index');
		for(var i = 1 ;i<fileidx.length+1;i++){
		fileidx.eq(i-1).text(i);
	  }
	}
	
	function autoWidth(tmou){
		//$(tmou).Width($(tmou).outerWidth());
	}
	//截取上传文件名
	function getFileName(file){
		var fileName = file.substring(file.lastIndexOf("\\")+1).split('.')[0];
		return fileName;
	}
	
	function test(){
		 var canvas = $(".modal-body").find("canvas").get(0);
		 var imageData =  canvas.toDataURL('image/png');  
	     var cover=imageData.substr(22);    
		    $.ajax({
		    	type : "post",
		    	data : {"cover":cover},
				url : "/teacher/uploadResource",
				success : function(msg){
					
				}
		    })
	      }
  	//投稿删除按钮显示状态
	    $(document).on('mouseenter','.file_progress .file_schedule',function(){
			$(this).find('i').css("display","block");
		})
	    $(document).on('mouseleave','.file_progress .file_schedule',function(){
			$(this).find('i').css("display","none");
		})
	    
		
	  //添加文件框显示形式  
		$('.div_cover,.file_add2').mouseenter(function(){
			$(this).find('img').css("opacity","0.8");
			$(this).css("color","#36363e");
			$(this).css("border","2px dashed #4e4c4e");
		})
		$('.div_cover,.file_add2').mouseleave(function(){
			$(this).find('img').css("opacity","0.3");
			$(this).css("color","#aeaeb1");
			$(this).css("border","2px dashed #e4dce3");
		})
		
		//截取封面弹窗
		var file;
		$(function(){
			$(".div_cover").mousedown(function(e){
				if(e.which==1){
					$("#coverupload").click();
				 }
			})
			$("#coverupload").change(function(){
			          file= $(this).get(0);
			                	layer.open({
					  				  id:"upload_cover",
			                		  type: 2,
					  				  closeBtn:1,
					  				  scrollbar: false,
					  				  title: false,
					  				  shadeClose: true,
					  				  shade: 0.8,
					  				  area: ['920px', '560px'],
					  				  content: "${ctx}/teacher/uploadCover",
					  			});	  
			})
		})
		
		
		//点击确定上传
	function currentUpload(){
		 var canvas = $(".modal-body").find("canvas").get(0);
		 var imageData =  canvas.toDataURL('image/png');  
	     var cover=imageData.substr(22);    
	    // var _fileList = {}; 
	     for(var i=0;i<fileArr.length;i++){
	    	 var rename = $(".file_schedule").eq(i).find("input").val();
	    	 fileArr[i]=fileArr[i]+":"+rename;
	     }
	     var files = fileArr.join(",") ;
	     var courceType = $(".partition_type").find(".bluebg").attr("yid");
	     var labels = arrLabel.join(":"); 
		  $.ajax({
		    	type : "post",
		    	data : {"cover":cover,"fileStr":files,courceName:$("#courceName").val(),"labelArr":labels,"courseTypeId":courceType,"courseIntroduce":$("#courseIntroduce").val(),"type":$(".xuanzhong").attr("value")},
				url : "/teacher/currentUpload",
				success : function(msg){
					window.location.href = "/index/main";
				}
		    })
	}
	</script>
</body>

</html>