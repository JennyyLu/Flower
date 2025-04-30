 <%@page import="cn.edu.nhic.flower.utils.CookieUtils"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'signUp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <% 
    request.setCharacterEncoding("utf-8");
    String userName=request.getParameter("userName");
    String userEmail=request.getParameter("userEmail");
    String userPassword=request.getParameter("userPassword");
    String checkPassword=request.getParameter("checkPassword");
    
    out.println(userName);
    out.println(userEmail);
    out.println(userPassword);
    out.println(checkPassword);
    
    if(!userPassword.equals(checkPassword)){
     out.println("<script language='javascript'>alert('Passwords are inconsistent');history.back();</script>");
     return;
     }
     
    Class.forName("com.mysql.jdbc.Driver");
    
    String url="jdbc:mysql://localhost:3306/flower?useUnicode=true&characterEncoding=utf8";
    String dbUser="root";
    String dbPwd="1234";
    Connection conn=DriverManager.getConnection(url,dbUser,dbPwd);
    Statement comm=conn.createStatement();
    
    String sql="insert into users(userName,userEmail,userPassword,userDate)values('"+userName+"','"+userEmail+"','"+userPassword+"','2021-4-21')";
    int result=comm.executeUpdate(sql);
    if (result>0){
       out.println("<script language='javascript'>alert('signed up successfully');location.href='index.jsp';</script>");
    }
    else{
     out.println("<script language='javascript'>alert('signed up unsuccessfully');history.back();</script>");
    }   
   %>
  </body>
</html>
