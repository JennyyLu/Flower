<%@page import="cn.edu.nhic.flower.utils.CookieUtils"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.JdbcUtils"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.Select"%>
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
    <base href="<%=basePath%>">
    
    <title>My JSP 'getnewpassword.jsp' starting page</title>
    
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
    String userID=CookieUtils.getCookie("flowerCookie2",request);
    String oldPassword=request.getParameter("oldPassword");
    String newPassword=request.getParameter("newPassword");
    String confirmPassword=request.getParameter("confirmPassword");
    
    if (oldPassword.isEmpty()) {
			JsUtils.js_back(out, "Please enter your password！");
			return;
		}
	if (newPassword.isEmpty()) {
			JsUtils.js_back(out, "Please enter your password！");
			return;
		}
    if (confirmPassword.isEmpty()) {
			JsUtils.js_back(out, "please enter your password！");
			return;
		}
	if (!newPassword.equals(confirmPassword)) {
			JsUtils.js_back(out, "please enter right password！");
			return;
		}				
		
	DbUtils db=new DbUtils();
	String sql="select*from users where userID="+userID+" and userPassword='"+oldPassword+"' ";
	/*JdbcUtils db=new JdbcUtils();
    String sql="select*from users where userID=? and userPassword=?";
    List<Object> paras=new ArrayList<Object>();
    paras.add(userID);
    paras.add(oldPassword);
    Map<String,Object> rs=db.queryOneRow(sql, paras);*/
    ResultSet rs=db.query(sql);
	if(rs.next()){
	DbUtils dbb=new DbUtils();
	String sqll="update users set userPassword='"+newPassword+"' where userID="+userID+" ";
	int result= dbb.update(sqll);
    JsUtils.show_result(out, result, "changed password successfully", "profile.jsp");
	}
	else{
	
	}
     %>
  </body>
</html>
