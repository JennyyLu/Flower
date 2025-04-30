<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="isAdmin.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'newsDelete.jsp' starting page</title>
    
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
    int newsID=Integer.valueOf(request.getParameter("nid"));
    DbUtils db=new DbUtils();
    String sql="delete from news where newsID="+newsID;
    int result=db.update(sql);
    JsUtils.show_result(out, result, "Delete news successfully", "newslist.jsp");
     %>
  </body>
</html>
