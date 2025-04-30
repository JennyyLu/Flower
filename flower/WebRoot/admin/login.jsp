<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>
			* {
				padding: 0;
				 margin:0;
			}
			body {
				font-family: Arial;
				font-size: 15px;
			}
			ul li{
				list-style-type: none;
			}
			a{
				color: #000000;
				text-decoration: none;
			}
			.layout{
				/* width: 1263.33px; */
				margin: 0 auto;
				overflow: hidden;
			}
			.header{
				height: 70px;
				text-align: center;
			    color: #65388B;
				font-size: 30px;
			}
			.header h2{
				line-height: 70px;
			}
			.main{
				background-image: url(./images/flowers-5383054_1280.jpg) ;
				background-position: center center;
				  	background-size: cover;
				  	padding-top:10%;
					padding-bottom:10%;
				  	height:800px;
				  	position: relative;
				  	z-index: 1;
			}
			
			.loginform{
				width: 30%;
				height: 500px;
				background-color: #f8f1f4;
				margin: 0 auto;
				text-align: center;
				overflow: hidden;
			    opacity: 0.8;
				border-radius: 3px;
			}
			
			.logintitle{
				height: 37.4px;
				font-size: 2.125rem;
				line-height: 37.4px;
				color: #b3848f;
				font-weight: 700px;
				font-family: UniversLTStd-Bold;
				text-transform: uppercase;
				margin-top: 30px;
			}
			.loginmessage{
				
				border-radius: 4px;
				line-height: 18px;
				margin-bottom: 13px;
				padding: 7px 11px;
				text-align: center;
				margin: 23px 0;
				
			}
			.loginemail{
				border: none;
				border-radius: 4px;
				font-size: .9375rem;
				width: 400px;
				height: 40px;
				padding-left: 5px;
			}
			.password{
				border: none;
				border-radius: 4px;
				font-size: .9375rem;
				width: 400px;
				height: 40px;
				margin: 18px 0 8px 0;
				padding-left: 5px;
				margin-bottom: 30px;
			}
			.password:focus{
				border: none;
				outline: none;
			}
			.loginemail:focus{
				border: none;
				outline: none;
			}
			
			
			.login{
				border:#393939 0.0625rem solid;
				border-radius: 4px;
				font-size: 15px;
				width: 400px;
				height: 40px;
				background-color: #f8f1f4;
				cursor: pointer;
				margin-bottom: 30px;
				margin-top: 30px;
			}
			.login:hover{
				background-color: #393939;
				color: #FFFFFF;
			
		</style>
	</head>
	<body>
		 <div class="header">
		 	
			<h2>LOGIN</h2>
		 </div>
		 
		 <div class="main">
			 <div class="loginform">
				<h2 class="logintitle">login</h2>
				<form action="checkadmin.jsp" method="post">
					<p class="loginmessage">we’ve recently updated our website. please reset your password below to access your account.</p>
					<p><input type="text" name="adminName" id="" value=""placeholder="name" class="loginemail"/></p>
					<p><input type="password" name="adminPassword" name=""placeholder="password" class="password" /></p>
					<div ><input type="checkbox" style="width:20px; display:inline; border:1px solid black; padding-top:5px; vertical-align:middle;" name="remember"id="" value="1" /><span>remember my password</span></div>
					<p><label class="lblcheckno" for="checkno">verification numbers</label><input type="text" name="checkno" id="checkno" class="txtinfo txt" />
					       <img src="../checkno.jsp" class="checkno" onclick="this.src='../checkno.jsp?t='+Math.random() " /><span class="errorinfo" id="ckcheckno"></span></p>
					<p><input type="submit" id="" name=""value="login" class="login"/></p>
					
				</form>
			 </div>
		</div>
		<footer></footer>
	</body>
</html>
