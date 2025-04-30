<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="headder.css" />
  <link rel="stylesheet" href="./styles/dropdown.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css2?family=Raleway:ital@1&display=swap" rel="stylesheet" />
  <title>Document</title>
  <link rel="stylesheet" href="./index.css" />
  <style>
        #wrapper {
            display: flex;
            height: calc(100vh - 60px); /* 减去导航栏高度 */
            
        }

        #sidebar {
            width: 250px;
            background-color: #65388b; /* 主色调 */
            color: #fff;
            padding: 20px;
            transition: width 0.3s; /* 添加过渡效果 */
            text-align:center;
            justify-content: center;
        }
		#sidebar h3{
			color:#fff;
		}
        #content {
            flex: 1;
            padding: 20px;
            overflow-y: auto; /* 允许内容滚动 */
        }
       

        /* 调整菜单链接样式 */
        #sidebar ul.components {
            padding: 0;
            display: flex;
            flex-direction: column;
            text-align:center;
            margin-top:40px;
            
        }

        #sidebar ul li {
            list-style-type: none;
            padding: 8px 0;
            text-align:center;
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

        
    </style>
</head>

<body>
 <%@ include file="header.jsp" %>
<div id="wrapper">
    <!-- Sidebar -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h3>Menu</h3>
        </div>

        <ul class="list-unstyled components">
            <li>
                <a href="profile.jsp" target="mainFrame">My profile</a>
            </li>
            <li>
                <a href="changepassword.jsp" target="mainFrame">Change Password</a>
            </li>
            <li>
                <a href="logout.jsp" >Log out</a>
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
 <%@ include file="footer.jsp"%>
 
</body>

</html>
<script>
  let user = document.querySelector(".signin");
  user.onclick = () => {
    location.href = "#";
  };
  let order = document.querySelector(".orders");
  order.onclick = () => {
    location.href = "./wish.html";
  };
  let shopnow = document.querySelector(".btn");
  shopnow.onclick = () => {
    location.href = "./login.html";
  };
  let bag = document.querySelector(".bag");
  bag.onclick = () => {
    location.href = "./cart.html";
  };
  let Cart = JSON.parse(localStorage.getItem("cart")) || [];
  let Total=document.getElementById("cartTotal")
          Total.innerText=Cart.length
</script>