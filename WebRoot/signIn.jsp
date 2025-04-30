<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="cn.edu.nhic.flower.utils.CookieUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'signIn.jsp' starting page</title>
    
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
    String userEmail=request.getParameter("userEmail");
    String userPassword=request.getParameter("userPassword");
    String remember=request.getParameter("remember");
    out.println(userEmail);
    out.println(userPassword);
    
    DbUtils db=new DbUtils();
    String sql="select*from users where userEmail='"+userEmail+"'and userPassword='"+userPassword+"' ";
    ResultSet rs=db.query(sql);
    if(rs.next()){
       Integer userID=rs.getInt("userID");
       userEmail=rs.getString("userEmail");
       String userName=rs.getString("userName");
       if(remember==null){
       CookieUtils.addCookie("flowerCookie2", userID.toString(), response);
       CookieUtils.addCookie("flowerCookie", userName, response);
      /* Cookie cookie=new Cookie("ckuid",userID.toString());
       response.addCookie(cookie);
      */}
      else{
      CookieUtils.addCookie("flowerCookie2",userID.toString(),7*24,response);
      CookieUtils.addCookie("flowerCookie",userName,7*24,response);
      }
       JsUtils.js_go(out, "Sign in sucessfully！", "index.jsp");
    }
    else{
       JsUtils.js_back(out, "sign in unsucessfully:incorrect acount or password！");
     }
    %>
  </body>
</html>
