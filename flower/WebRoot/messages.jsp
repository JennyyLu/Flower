<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="headder.css" />
  <link rel="stylesheet" href="./styles/dropdown.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css2?family=Raleway:ital@1&display=swap" rel="stylesheet" />
  <title>Document</title>


  <link rel="stylesheet" href="./index.css" />
</head>

<body>
 <%@ include file="header.jsp" %>

        <div id="contact_us" >
			<div class="layout">
				<div class="contactform">
					<h2 class="contacttitle">contact us</h2>
					<form action="addmessages.jsp" method="post">
						<p class="contactmessage">We’re happy to help! If you have order status related questions, check our Order Tracking page. If you have brand or website questions, check out our FAQ page. If you still need help, we’ll respond to your message below.
</p>
						<label for="pointname">name</label><label for="pointemail" class="emailleft">email</label>
						<p><input type="text"name="contactName" id="pointname" value=""class="contactname"/><input type="text" name="contactEmail" id="pointemail" value=""class="contactemail"/></p>
						<label >how can we help</label>
						<p><select name="selectIssues">
							<option value="Product Questions or Issues">Product Questions or Issues</option>
							<option value="Tracking and Delivery Issues">Tracking and Delivery Issues</option>
							<option value="Damaged Product">Damaged Product</option>
							<option value="Website Feedback, Checkout or Promotions Issue">Website Feedback, Checkout or Promotions Issue</option>
							<option value="Website Account">Website Account</option>
							<option value="Public Relations and Collaborations">Public Relations and Collaborations</option>
							<option value="Data Privacy">Data Privacy</option>
							<option value="Other">Other</option>
						</select></p>
						<label>message</label>
						<p><textarea name="issuesDetails"rows="10"id="messagearea" ></textarea></p>
						<p><label class="lblcheckno" for="checkno">*verification numbers：</label><input type="text" name="checkno" id="checkno" class="txtinfo txt" />
					       <img src="checkno.jsp" class="checkno" onclick="this.src='checkno.jsp?t='+Math.random() " /><span class="errorinfo" id="ckcheckno"></span></p>
						<p><input type="submit" id="" name=""value="send" class="send"/></p>
						
					</form>
				</div>
			</div>
		</div>
  
  <%@ include file="footer.jsp"%>
</body>
<style>
  #contact_us{
  background-image:url(./images/b1.png);
  background-position: center center;
  	background-size: cover;
  	padding-top:10%;
	padding-bottom:10%;
  	height:100%;
  	position: relative;
  	z-index: 1;
  }
  .contactform{
  	width:35%;
  	background-color: #f8f1f4;
  	margin: 0 auto;
  	overflow: hidden;
  	color: #000;
  	font-size: 1.25rem;
  	line-height: 1.5rem;
  	opacity: 0.8;
	padding-left: 1%;
	border-radius: 2%;   
  }
  .contacttitle{
  	height: 37.4px;
  	font-size:2.2rem;
  	line-height: 2.5rem;
  	color: #b3848f;
  	font-weight: 700px;
  	font-family: UniversLTStd-Bold;
  	text-transform: uppercase;
  	text-align: center;
	margin-bottom: 3%;
	margin-top: 7%;
  }
  .contactmessage{
  	width:95%;
  	margin-bottom: 3%;
  	padding: 7px 11px;
  	text-align: center;
  	margin: px 0;
  }
   
  .contactform label{
  	opacity: 0.8;
  }
  .contactform .emailleft{
  	margin-left:41%;
  }
  .contactname{
  	border: none;
  	border-radius: 4px;
  	font-size: .9375rem;
  	width:45%;
  	height: 39px;
  	padding-left: 5px;
  	margin-right: 20px;
  	margin-bottom: 20px;
  	outline: none;
  	background-color: white;
  }
  .contactemail{
  	border: none;
  	border-radius: 4px;
  	font-size: .9375rem;
  	width:45%;
  	height: 39px;
  	padding-left: 5px;
  	outline: none;
  }
  .contactemail .contactname:focus{
  	border: none;
  	outline: none;
  }
  .contactform select{
  	width: 95%;
  	height: 40px;
  	margin-bottom: 20px;
  	border: none;
  	outline: none;
  	padding-left: 5px;
  	border-radius: 4px;
  }
  .contactform textarea{
  	width: 95%;
  	margin: 0px auto;
  	border: none;
  	outline: none;
  	border-radius: 4px;
	
	
  }
  .send{
  	border:#393939 0.0625rem solid;
  	border-radius: 4px;
  	font-size: 15px;
  	width: 95%;
  	height: 43px;
  	background-color: #f8f1f4;
  	cursor: pointer;
  	margin-bottom: 8%;
  	margin-top: 3%;
  }
  .send:hover{
  	background-color: #393939;
  	color: #FFFFFF;
  }
  </style>
</html>