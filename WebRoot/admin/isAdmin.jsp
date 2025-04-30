<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
Object oaid=session.getAttribute("said");
if(oaid==null){
	JsUtils.js_go(out, "Please sign in first", "login.jsp");
	return;
}
 %>
  