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

    <div class="news-container">
    	<h1>News List</h1>
    	<%
    	DbUtils db=new DbUtils();
    	String sql="select newsID,newsTitle,newsDate from news";
    	ResultSet rs=db.query(sql);
    	while(rs.next()){
    	 %>
        <div class="news-item">
            <a href="news.jsp?nid=<%=rs.getString("newsID")%>" class="news-title"><%=rs.getString("newsTitle") %></a>
            <div class="news-time"><%=rs.getString("newsDate")%></div>
        </div>
        <%
        } 
        %>
        <!-- 添加更多新闻项 -->
    </div>
		</div>
  
  <%@ include file="footer.jsp"%>
</body>
<style>
  #contact_us{
  background-image:url(./images/b2.png);
  background-position: center center;
  	background-size: cover;
  	padding-top:10%;
	padding-bottom:10%;
  	height:100%;
  	position: relative;
  	z-index: 1;
  }
  
   h1 {
            color: #333;
            text-align: center;
            padding: 20px;
            margin: 0;
        }

        .news-container {
            width: 60%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            opacity:0.8;
            border-radius:4px;
        }

        .news-item {
            margin-bottom: 20px;
        }

        .news-title {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            text-decoration: none;
            display: block;
        }

        .news-title:hover {
            text-decoration: underline;
        }

        .news-time {
            color: #888;
            font-size: 14px;
        }
  </style>
</html>