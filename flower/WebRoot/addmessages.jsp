<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
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
    
    <title>My JSP 'addmessages.jsp' starting page</title>
    
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
   String contactName=request.getParameter("contactName");
   String contactEmail=request.getParameter("contactEmail");
   String selectIssues=request.getParameter("selectIssues");
   String issuesDetails=request.getParameter("issuesDetails");
   String checkno=request.getParameter("checkno");
    
    out.println(contactName);
    out.println(contactEmail);
    out.println(selectIssues);
    out.println(issuesDetails);
    
    
    if (contactName.isEmpty()) {
			JsUtils.js_back(out, "Please enter user name！");
			return;
		}
	if (contactEmail.isEmpty()) {
			JsUtils.js_back(out, "Please enter your email！");
			return;
		}
    if (issuesDetails.isEmpty()) {
			JsUtils.js_back(out, "please enter message！");
			return;
		}		
		
		String rand = session.getAttribute("rand").toString();
		if (!checkno.equalsIgnoreCase(rand)) {
			JsUtils.js_back(out, "Vetification numbers are wrong！");
			return;
		}
   
   /* Class.forName("com.mysql.jdbc.Driver");
    
    String url="jdbc:mysql://localhost:3306/flower?useUnicode=true&characterEncoding=utf8";
    String dbUser="root";
    String dbPwd="1234";
    Connection conn=DriverManager.getConnection(url,dbUser,dbPwd);
    Statement comm=conn.createStatement();*/
    DbUtils db=new DbUtils();
    String sql="insert into messages(contactName,contactEmail,selectIssues,issuesDetails,contactDate)values('"+contactName+"','"+contactEmail+"','"+selectIssues+"','"+issuesDetails+"',now())";
    /*int result= comm.executeUpdate(sql);*/
    int result=db.update(sql);
    if (result>0){
       out.println("<script language='javascript'>alert('sent messages successfully');location.href='messages.jsp';</script>");
    }
    else{
     out.println("<script language='javascript'>alert('sent messages unsuccessfully');history.back();</script>");
    }   
     %>
  </body>
</html>
