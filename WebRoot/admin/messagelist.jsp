<%@page import="cn.edu.nhic.flower.utils.HttpUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.DbUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="isAdmin.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>留言列表</title>
    <style>
		* {
			padding: 0;
			 margin:0;
		}
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #ffffff;
            color: #333;
			
        }
		/*.main{
			background-image: url(./images/pf.jpg);
			background-position: center center;
			  	background-size: cover;
			  	padding-top:10%;
				padding-bottom:10%;
			  	height:800px;
			  	position: relative;
			  	z-index: 1;
		}*/
        .header{
				height: 50px;
				text-align: left;
				font-size: 20px;
		}
		.header h2{
				line-height: 60px;
				margin-left: 50px;
				}

        .message-list {
            max-width: 1400px;
            margin: 5px auto;
            padding: 20px;
            border: 1px solid #ddd;
            box-sizing: border-box;
            background-color: white;
        }

        .message {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }

        .message h3 {
            margin-bottom: 5px;
            color: #333;
			font-size: 20px;
        }

        .message p {
            margin: 0;
		font-size: 12px;
        }

        .message p:first-child {
            margin-bottom: 10px;
        }
		.message span{
			font-weight: 700;
		}

        /* 使用百分比布局 */
        .message p {
            width: 100%;
        }

        @media (min-width: 1200px) {
            /* 在较大屏幕上，设置留言列表为两列 */
            .message-list {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .message {
                width: 48%;
            }
        }
    </style>
</head>
<body>
	
     <div class="header">
        <h2>Messages</h2>
    </div>
    <div class="main">
	    <div class="message-list">
	    <%
	    DbUtils db=new DbUtils();
	    String sql="select*from messages order by contactDate desc";
	    ResultSet rs=db.query(sql);
	    while(rs.next()){
	     %>
	        <div class="message">
	            <h3><%=rs.getString("contactName") %></h3>
	            <p><span>Date:</span><%=rs.getString("contactDate") %></p>
	            <p><span>Email:</span> <%=HttpUtil.escapeHtml(rs.getString("contactEmail")) %></p>
	            <p><span>issues:</span> <%=HttpUtil.escapeHtml(rs.getString("selectIssues")) %></p>
	            <p><span>content:</span> <%=HttpUtil.escapeHtml(rs.getString("IssuesDetails")) %></p>
	        </div>
	        <%
	        } 
	        %>
	    </div>
	  </div>   
</body>
</html>
