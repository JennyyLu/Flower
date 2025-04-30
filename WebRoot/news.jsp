<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
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

	    <div class="newsbanner">
	    	<img alt="banner" src="./images/b3.webp">
	        <!-- 添加更多新闻项 -->
	    </div>
	    <%
	    String newsID=request.getParameter("nid");
	    DbUtils db=new DbUtils();
	    String usql="update news set newsHit=newsHit+1 where newsID="+newsID;
	    db.update(usql);
	    String sql="select* from news inner join admin on newsAuthorID=adminID where newsID="+newsID;
	    ResultSet rs=db.query(sql);
	    rs.next();
	     %>
	    <div class="news">
	    	<h2><%=rs.getString("newsTitle")%></h2>
	    	<h4>Author:<%=rs.getString("newsAuthorID") %>&nbsp;&nbsp;Date:<%=rs.getString("newsDate") %>&nbsp;&nbsp;Source:<%=rs.getString("newsSource") %>&nbsp;&nbsp;views:<%=rs.getString("newsHit") %></h4>
	    	<div class="content "><p><%=rs.getString("newsContent")%><p></div>
    	</div>
	</div>
  
  <%@ include file="footer.jsp"%>
</body>
<style>
 .newsbanner img{
  width:100%;
  }
  .news{
  text-align:center;
  margin:20px 0px;
  }
  h2{
  font-size:25px;
  }
  h4{
  font-size:10px;
  margin:20px 0px;
  }
  p{
  font-size:15px;
  }
  .content img{
   margin:40px 300px;
  }
  </style>
</html>