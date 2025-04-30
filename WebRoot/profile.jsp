<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
<%@page import="cn.edu.nhic.flower.utils.CookieUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Information</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f8f8f8;
        }

        .contact-info {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        /* 样式信息容器 */
        .info-container {
            display: flex;
            flex-direction: column;
        }

        .info-item {
            margin-bottom: 20px;
        }

        .info-item span {
            display: block;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
        }
    </style>
</head>
<body>
   <% String userID=CookieUtils.getCookie("flowerCookie2",request);
    String userName=CookieUtils.getCookie("flowerCookie",request);
    DbUtils db=new DbUtils();
    String sql="select* from users where userID="+userID;
	ResultSet rs=db.query(sql);
	rs.next();
    %>
    
    <div class="contact-info">
        <div class="info-container">
            <div class="info-item">
                <label for="name">Name:</label>
                <span><%=userName%></span>
            </div>
            <div class="info-item">
                <label for="email">Email:</label>
                <span><%=rs.getString("userEmail")%></span>
            </div>
            <div class="info-item">
                <label for="address">Address:</label>
                <span>123 Main Street, Cityville</span>
            </div>
        </div>
    </div>

</body>
</html>
