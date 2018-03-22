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
 	用户登录
    </title>  
	<!--   <sitemesh:write property='head' /> -->

 <!--    	 <link rel="stylesheet" href="${ctx}/resources/css/fwslider.css" media="all">
 	 <link href="${ctx}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />  <link href="${ctx}/resources/css/form.css" rel="stylesheet" type="text/css" media="all" /><link href="${ctx}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />-->
	 <link href="${ctx}/resources/css/szw.css" rel="stylesheet" type="text/css" media="all" />
	 <script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>
	 <script type="text/javascript" src="${ctx}/resources/js/layer/layer.js"></script>
</head>
<body>
	 <script type="text/javascript" src="${ctx}/resources/js/jquery.validate.min.js"></script>
		<div style="min-width:1000px !important">
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
		margin-left:200px;
	}
	.cssmenu{
		margin-left:300px;
	}
	.header-top-left{
	    width: 40.5%;
	    float: left;
	    margin-left:50px;
	}
</style>
<div style="min-width:1600px !important">
 <div class="header-top">
			  <div class="header-top-left">
   				    	<a href="/index/main" style="float:left"><img class="logoimg" src="${ctx}/resources/images/kklogo.png"></img></a><div style="padding:20px;font-size:20px;color:#fff;">|用户登录</div>
   			 <div class="clear"></div>
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
    	  <div class="title"><span>用户登录<span></div>
    	  <HR align=center width=100%   SIZE=1 noShade>
    	  <div class="szw_middle" style="margin-top:100px;">
    	 	 <img src="${ctx}/resources/images/login_bg.jpg" class="register_bg"/>
    	  <div class="middle">
    	  <form id="loginForm" method="post"  class="form_register">
    			 <table class="table_register">
    			 	<tr>
    			 		<th width="20%">用户名</th>
    			 		<td width="40%" value=""><input  type="text" id="loginName" name="loginName" placeholder="请输入用户名" required AUTOCOMPLETE="off"/> <span for="loginName" class='error' ></span></td>
    			 	</tr>
    			 	<tr>
    			 		<th>登录密码</th>
    			 		<td><input  type="password"   name="password" placeholder="请输入登录密码" required AUTOCOMPLETE="off"/> </td>
    			 	</tr>
    			 	<tr style="height:20px;">
    			 		<th width="10%"></th>
    			 		<td  ><a href="" style="margin-left:260px;">忘记密码？</a></td>
    			 	</tr>
    			 	<tr>
    			 		<th width="10%"></th>
    			 		<td><input id="loginButton" type="button" class="szw_button" value="登录"></td>
    			 	</tr>
    			 	<tr style="height:20px;">
    			 		<th width="10%"></th>
    			 		<td ><a href=" ${ctx}/register/register" style="margin-left:260px;">立即注册</a></td>
    			 	</tr>
    			 </table>
		  </form>
		  </div>
  		  </div>
  		  </div>
  		 <script type="text/javascript">
	  			var arr = new Array();
			 	arr[0] = '用户名不存在';
			 		$(function(){
						$("#loginName").blur(function(){
							if($("#loginName").val()!=''){
							$.ajax({
	  	  							type : "post",
	  	  							url : "/register/vailName?loginName="+$("#loginName").val(),
	  	  							success : function(msg) { 	
	  	  								if(msg=="has"){
	  	  									$("#loginName").parent().find("span").text('');
	  	  									arr[2] = true;
	  	  								}else{
	  	  									$("#loginName").parent().find("span").html(arr[0]);
	  	  									arr[2] = false;
	  	  								}
	  	  							}
	  	  			 			})
	  	  			 		}
						})  		 			
	  		 		})
	  		 		
  		 		$(function(){
  		 			$("#loginButton").click(function(){
  		 				if($("#loginName").val()!=''){
							$.ajax({
									async: false,
	  	  							type : "post",
	  	  							url : "/register/vailName?loginName="+$("#loginName").val(),
	  	  							success : function(msg) { 	
	  	  								if(msg=="has"){
	  	  									$("#loginName").parent().find("span").text('');
	  	  									arr[2] = true;
	  	  								}else{
	  	  									$("#loginName").parent().find("span").html(arr[0]);
	  	  									arr[2] = false; 
	  	  								}
	  	  							}
	  	  			 			})
	  	  			 		}
  		 				if($('#loginForm').validate().form()&&arr[2]==true){
  	  		 				$.ajax({
  									type : "post",
  									data :$("#loginForm").serialize(),
  									url : "/login/vailPassword",
  									success : function(msg) {
  										if(msg=='has'){
  											window.location.href="${ctx}/login/loginSuccess?loginName="+$("#loginName").val();
  										}else{
  											layer.alert("用户名或密码错误");
  										}
  									}
  					 		})
  	  		 			}
  		 			})
  		 		})
  		 </script>
  		  <div class="footer-bottom" >
			<div class="wrap">
	            <div class="copy">
			           Copyright &copy; 2014.Company name All rights reserved.<a target="_blank"></a>
		       </div>
		       <div class="f-list2">
				<ul>
					<li class="active"><a href="about.html">About Us</a></li> |
					<li><a href="">Delivery & Returns</a></li> |
					<li><a href="">Terms & Conditions</a></li> |
					<li><a href="">Contact Us</a></li> 
			    </ul>
			   </div>
				<div class="clear"></div>
		      </div>
			</div>
</body>

</html>