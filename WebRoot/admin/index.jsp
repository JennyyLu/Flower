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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>flower-admin</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa; /* 背景颜色 */
            margin: 0;
            padding: 0;
             /* 100% 视口高度 */
            overflow: hidden; /* 防止内容溢出 */
        }

        #wrapper {
            display: flex;
            height: calc(100vh - 60px); /* 减去导航栏高度 */
        }

        #sidebar {
            width: 200px;
            background-color: #65388b; /* 主色调 */
            color: #fff;
            padding: 20px;
            transition: width 0.3s; /* 添加过渡效果 */
        }

        #content {
            flex: 1;
            padding: 20px;
            overflow-y: auto; /* 允许内容滚动 */
        }

        /* 调整菜单链接样式 */
        #sidebar ul.components {
            padding: 0;
        }

        #sidebar ul li {
            list-style-type: none;
            padding: 8px 0;
        }

        #sidebar a {
            text-decoration: none;
            color: #fff;
            transition: color 0.3s;
        }

        #sidebar a:hover {
            color: #fff; /* 鼠标悬停时的颜色 */
            background-color: #4a2672; /* 鼠标悬停时的背景颜色 */
        }

        /* 头部导航栏样式 */
        nav.navbar {
            background-color: #fff; /* 导航栏背景颜色 */
            color: #fff; /* 导航栏文字颜色 */
            box-shadow: 0 4px 6px -6px #222; /* 添加阴影效果 */
            padding: 10px 20px;
            display:flex;
            
        }
        nav.img{
        hight:70px;
        }
		h5{
		text-align:right;
		font-size: 15px;
		color: #65388b;
		margin-left:1200px;
		cursor:pointer;
		}
		h3{
			width: 203px;
			color: #65388b;
			font-size: 40px;
			font-weight: 500;
			line-height: 100px;
			text-align: left;
			letter-spacing: 0px;
			padding-left: 0px;
			font-family: Helvetica;
		}
        nav.navbar a.navbar-brand {
            font-size: 24px;
            color: #fff !important; /* 导航栏文字颜色 */
            margin-left: 50%; /* 使标题居中 */
            transform: translateX(-50%); /* 使标题居中 */
        }

        nav.navbar a.navbar-nav-link {
            font-size: 18px;
            color: #fff !important; /* 导航栏文字颜色 */
            margin-right: 15px;
            transition: color 0.3s;
        }

        nav.navbar a.navbar-nav-link:hover {
            color: #ffd700 !important; /* 鼠标悬停时的文字颜色 */
        }

        /* 底部样式 */
        footer {
            background-color: #65388b;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
       .right{
       margin-left:1200px
       } 
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
	<h3>Welcome</h3>
    <img alt="flowers.webp" src="images/flowers.webp">
    <div class="right"><a href="index.jsp">enter webside</a></div>
</nav>

<div id="wrapper">
    <!-- Sidebar -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h3>Menu</h3>
        </div>

        <ul class="list-unstyled components">
            <li>
                <a href="messagelist.jsp" target="mainFrame">Messages</a>
            </li>
            <li>
                <a href="newsAdd.jsp" target="mainFrame">Publish news</a>
            </li>
            <li>
                <a href="newslist.jsp" target="mainFrame">News list</a>
            </li>
            <li>
                <a href="view.html" target="mainFrame">View</a>
            </li>
            <!-- Add more sidebar links as needed -->
        </ul>
    </nav>

    <!-- Page Content -->
    <div id="content">
        <!-- Page Content Goes Here -->
        <iframe name="mainFrame" id="mainFrame" frameborder="0" width="100%" height="100%"></iframe>
    </div>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Custom JS to handle sidebar toggle -->
<script>
    $(document).ready(function () {
        $("#sidebarCollapse").on("click", function () {
            $("#sidebar").toggleClass("active");
        });
    });
</script>



</body>
</html>
