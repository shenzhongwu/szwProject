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
	
</head>
<body style="height:1000px">
	<form id="labels"  style="margin-top:100px;height:1000px">
		标签名:<input class="label" type="text" name="labelName">
		<input type="button" onclick="tianjialabel()" value="提交">
		<input type="button" onclick="jiabiaoqian()" value="添加新标签">
		父级标签名:<input class="parentLabelName" type="text">
		最高标签名:<input class="courseName" type="text">
	</form>
	
	<script type="text/javascript">
		function tianjialabel(){
			var labelNames=new Array();;
			var label = $("#labels").find(".label")
			for(var i=0;i<label.length;i++){
				labelNames[i]=label.eq(i).val();
			}
			var labelNameStr = labelNames.join(",");
			console.log(labelNameStr);
			$.ajax({
				type:"post",
				data:{"labelNameStr":labelNameStr,"courseName":$(".courseName").val(),"parentLabelName":$(".parentLabelName").val()},
				url:"${ctx}/util/addLabel",
				success:function(msg){
					
				}
				
			})
			
		}
		function jiabiaoqian(){
			$("#labels").append("<div>标签名:<input class='label' type='text' name='labelName'></div>")
		}
	</script>
</body>

</html>