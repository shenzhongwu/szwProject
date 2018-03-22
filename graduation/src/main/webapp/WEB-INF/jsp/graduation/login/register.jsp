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
 	用户注册
    </title>  
	<!--   <sitemesh:write property='head' /> -->

 <!--    	 <link rel="stylesheet" href="${ctx}/resources/css/fwslider.css" media="all">
 	 <link href="${ctx}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />  <link href="${ctx}/resources/css/form.css" rel="stylesheet" type="text/css" media="all" /><link href="${ctx}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />-->
	 <link href="${ctx}/resources/css/szw.css" rel="stylesheet" type="text/css" media="all" />
	 <script type="text/javascript" src="${ctx}/resources/js/jquery-1.8.3.min.js"></script>

</head>
<body>
	 <script type="text/javascript" src="${ctx}/resources/js/jquery.validate.min.js"></script>
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
   				    	<a href="/index/main" style="float:left"><img class="logoimg" src="${ctx}/resources/images/kklogo.png"></img></a><div style="padding:20px;font-size:20px;color:#fff;">|用户注册</div>
   			 <div class="clear"></div>
   			 </div>
   			
			 <div class="cssmenu">
				<ul >
				 	<li class="active"><div style="float:left;margin-top:10px;color:#0c0e0e">我已注册马上</div><a href="/login/login" style="float:left">登录</a></li>
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
    	  <div class="title"><span>用户注册<span></div>
    	  <HR align=center width=100%   SIZE=1 noShade>
    	  <div class="szw_middle">
    	  <img src="${ctx}/resources/images/register_bg.jpg" class="register_bg"/>
    	  <div class="middle">
    	  <form id="registerForm" method="post"  class="form_register">
    			 <table class="table_register">
    			 	<tr>
    			 		<th width="20%">用户名</th>
    			 		<td width="40%" value="aa"><input class="szw_check" type="text" id="loginName" name="loginName" placeholder="请设置用户名" required AUTOCOMPLETE="off"/> <span for="loginName" class='error' ></span></td>
    			 	</tr>
    			 	<tr>
    			 		<th>手机号</th>
    			 		<td><input class="szw_check" type="text" id="mobile" placeholder="可用于登录和找回密码" name="mobile" required  data-rule-mobile="true" AUTOCOMPLETE="off"/> <span for="mobile" class='error' ></span></td>
    			 	</tr>
    			 	<tr>
    			 		<th>验证码</th>
    			 		<td><input class="szw_check" type="text" name="verificationCode" placeholder="请输入验证码" required  AUTOCOMPLETE="off"/> <span for="verificationCode" class='error' ></span></td>
    			 	</tr> 
    			 	<tr>
    			 		<th>登录密码</th>
    			 		<td><input class="szw_check"  type="password" name="password" placeholder="请设置登录密码" required data-rule-mima="true" AUTOCOMPLETE="off"/> <span for="password" class='error' ></span></td>
    			 	</tr>
    			 	<tr style="height:35px;">
    			 		<th width="10%"></th>
    			 		<td><input class="szw_check" id="kkCheckbox"  type="checkbox" style="margin-left:20px;float:left; text-align:left;">阅读并接受<a href="" style="">《看课用户协议》</a></td>
    			 	</tr>
    			 	<tr>
    			 		<th width="10%"></th>
    			 		<td><input  id="registerButton" type="button" class="szw_button" value="注册"></td>
    			 	</tr>
    			 </table>
		  </form>
		  </div>
  		  </div>
  		  </div>
  		 <script type="text/javascript">
  		 	var arr = new Array();
  		 	arr[0] = '设置后不可更改，中英文均可';
  		 	arr[1] = '请输入中国大陆手机号'
  		 	arr[2] = '请输入6位以上以字母开头的密码'
  		 //提交注册信息
  		 	$(function(){
  		 		$("#loginName").blur(function(){
  		 			var loginName = $("#loginName").val();
  		 			if(loginName != null && loginName != ''){
  	  	  		 		$.ajax({
  	  							type : "post",
  	  							url : "/register/vailName?loginName="+loginName,
  	  							success : function(msg) { 	
  	  								if(msg=="none"){
  	  									arr[3]=true;
  	  								}else{
  	  									arr[3]=false;
  	  									$("#loginName").parent().find("span").html("用户名已存在");
  	  								}
  	  							}
  	  			 		})
  		 			}
  		 		})
  		 		
  		 		$("#mobile").blur(function(){
  		 			var mobile = $("#mobile").val();
  		 			if(mobile != null&&mobile!=''){
  	  	  		 		$.ajax({
  	  							type : "post",
  	  							url : "/register/vailMobile?mobile="+mobile,
  	  							success : function(msg){
  	  								if(msg=="none"){
  	  									arr[4]=true;
	  								}else{
  	  									arr[4]=false;
  	  									$("#mobile").parent().find("span").html("手机号已注册");
  	  								}
  	  							}
  	  			 		})
  		 			}
  		 		})
  		 		$("#registerButton").click(function(){
  		 			if($('#registerForm').validate().form()&&arr[3]==true&&arr[4]==true&&$("#kkCheckbox").attr('checked')=='checked'){
  	  		 			$.ajax({
  								type : "post",
  								data :$("#registerForm").serialize(),
  								url : "/register/commitRegister",
  								success : function(msg) {
  									if(msg=='success'){
  										window.location.href="${ctx}/login/login";
  									}
  								}
  				 		})
  	  		 		}
  		 		})
  		 		
  		 		
  		 		
  		 	
  		 	//input焦点触发事件
  		 		$(".szw_check").focus(function(){
    		 		  var tdParent = $(this).parent();
    		 		  if($(this).attr('name')=='loginName'){
    		 			 tdParent.find('span').html(arr[0]);
    		 		  } else if($(this).attr('name')=='mobile'){
    		 			 tdParent.find('span').html(arr[1]);
    		 		  }else if($(this).attr('name')=='password'){
    		 			 tdParent.find('span').html(arr[2]);
    		 		  }
    		 		});
  		 		$(".szw_check").blur(function(){
  		 			$(this).parent().find('span').text("");
  		 		});
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