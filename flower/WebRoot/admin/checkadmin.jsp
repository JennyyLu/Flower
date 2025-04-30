<%@page import="cn.edu.nhic.flower.utils.JdbcUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'checkadmin.jsp' starting page</title>
    
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
  String adminName=request.getParameter("adminName");
  String adminPassword=request.getParameter("adminPassword");
  String checkno=request.getParameter("checkno");
  
  if(adminName.isEmpty()){
  	JsUtils.js_back(out, "user name can't be empty！");
  	return;
  }
  if(adminPassword.isEmpty()){
  	JsUtils.js_back(out, "password can't be empty！");
  	return;
  }
  String rand=session.getAttribute("rand").toString();
  if(!checkno.equalsIgnoreCase(rand)){
  	JsUtils.js_back(out, "vetification numbers are wrong！");
  	return;
  }
  /*DbUtils db=new DbUtils();
  String sql="select*from admin where adminName='"+adminName+"' and adminPassword='"+adminPassword+"' ";
  ResultSet rs= db.query(sql);*/
  JdbcUtils db=new JdbcUtils();
  String sql="select*from admin where adminName=? and adminPassword=?";
  List<Object> paras=new ArrayList<Object>();
  paras.add(adminName);
  paras.add(adminPassword);
  Map<String,Object> rs=db.queryOneRow(sql, paras);
  if(rs.get("adminID")!=null){
  		session.setAttribute("said", rs.get("adminID"));
  		JsUtils.js_go(out, "login sucessfully！", "index.jsp");
  }
  else{
  	    JsUtils.js_back(out, "user name or password doesn't exsit！");
  }
   %>
  </body>
</html>
