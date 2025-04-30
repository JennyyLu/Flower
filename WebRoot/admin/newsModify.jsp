<%@page import="java.sql.ResultSet"%>
<%@page import="cn.edu.nhic.flower.utils.JsUtils"%>
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
    <title>News Publishing</title>
    <script language="javascript" src="ckeditor/ckeditor.js"></script>
    <script language="javascript" src="ckfinder/ckfinder.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        #news-form {
            max-width: 600px;
            margin: 20px auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input,
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        .submit{
            padding: 10px 20px;
            background-color: #65388b;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top:10px;
            width:20%;
            margin-left:3px;
        }

        .submit:hover {
            background-color: #4a2672;
        }
    </style>
</head>
<body>

    <h1>News Publishing</h1>
	<%
           int newsID=Integer.valueOf(request.getParameter("nid"));
           DbUtils db=new DbUtils();
           String sql="select * from news where newsID="+newsID;
           ResultSet rs= db.query(sql);
           rs.next();
            %>
    <form action="newsUpdate.jsp" method="post" id="news-form">
    	<input type="hidden" name="newsID" value="<%=newsID%>"/>
        <label for="title">Title:</label>
        <input type="text" id="title" name="newsTitle" value=<%=rs.getString("newsTitle") %> >

        <label for="date">Date:</label>
        <input type="date" id="date" name="newsDate" value=<%=rs.getString("newsDate") %>>
        
        <label for="source">Source:</label>
        <input type="text" id="source" name="newsSource" value=<%=rs.getString("newsSource") %>>

        <label for="content">Content:</label>
        <textarea id="editor1" name="newsContent" rows="8" ><%=rs.getString("newsContent") %></textarea>
		<script> var editor=CKEDITOR.replace('editor1');
				 CKFinder.setupCKEditor(editor, '/flower/ckfinder/') ;
		</script>
        <input type="submit" name="" value="Publish news"  class="submit">
    </form>

    

</body>
</html>
