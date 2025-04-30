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
    <title>News List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
        }
        td a {
        color: #000000;
		text-decoration: none;
		border: 2px solid #ddd;
		padding:3px;
		border-radius:1px;
		
        }
		td a:hover{
		background-color:#ddd;
		}
		
        h1 {
            color: #333;
            text-align: left;
            
            padding-left:10px;
            margin: 0;
            
            font-size:25px;
        }

        .container {
            width: 80%;
            margin: 20px auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .pagination {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .pagination a {
            display: inline-block;
            padding: 8px 16px;
            text-decoration: none;
            color: #333;
            background-color: #ddd;
            border-radius: 4px;
            margin: 0 4px;
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
            }
        }

        @media (max-width: 576px) {
            .container {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <h1>News List</h1>

    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Order</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>revise</th>
                </tr>
            </thead>
            <tbody>
            	<%
            	DbUtils db=new DbUtils() ;
            	String sql="select newsID,newsTitle,newsDate from news";
            	ResultSet rs=db.query(sql);
            	while(rs.next()){
            	%>
                <tr>
                    <td><%=rs.getInt("newsID")%></td>
                    <td><%=rs.getString("newsTitle") %></td>
                    <td><%=rs.getString("newsDate") %></td>
                    <td>
                        <a href="newsModify.jsp?nid=<%=rs.getString("newsID")%>">revise</a>
                        <a href="newsDelete.jsp?nid=<%=rs.getString("newsID")%>">delete</a>
                        
                        
                    </td>
                </tr>
                <%
                }
                 %>
                <!-- 添加更多行，每行包含四列数据 -->
            </tbody>
        </table>
    </div>

    <div class="pagination">
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <!-- 添加更多页码链接 -->
    </div>

</body>
</html>
