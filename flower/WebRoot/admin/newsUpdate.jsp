<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
<%@page import="cn.edu.nhic.flower.utils.DbUtils"%><%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="isAdmin.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'newsUpdate.jsp' starting page</title>
    
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
   String newsTitle=request.getParameter("newsTitle");
   String newsDate=request.getParameter("newsDate");
   String newsSource=request.getParameter("newsSource");
   String newsContent=request.getParameter("newsContent");
   String newsID=request.getParameter("newsID");
   
   if(newsTitle.isEmpty()){
		JsUtils.js_back(out, "News title can't be empty！");
		return;   
   }
   if(newsDate.isEmpty()){
		JsUtils.js_back(out, "Date can't be empty！");
		return;   
   }
    if(newsSource.isEmpty()){
		JsUtils.js_back(out, "News source can't be empty！");
		return;   
   }
   if(newsContent.isEmpty()){
		JsUtils.js_back(out, "News content can't be empty！");
		return;   
   }
   
   DbUtils db=new DbUtils();
   String sql="update news set newsTitle='"+newsTitle+"',newsSource='"+newsSource+"',newsDate='"+newsDate+"',newsContent='"+newsContent+"' where newsID="+newsID;
   int result= db.update(sql);
   JsUtils.show_result(out, result, "save the motification", "newslist.jsp");
    %>
  </body>
</html>
