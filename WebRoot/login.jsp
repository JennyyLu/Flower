<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./login.css">
    <title>Login Page</title>
    
</head>

<body>
    <div id="background_img">
        <img src="" alt="">
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form id="signUp" action="signUp.jsp" method="post">
                    <h1>Create Account</h1>
                    <span>or use your email for registration</span>
                    <input type="text" name="userName" id="name" placeholder="Name" required />
                    <input type="email" name="userEmail" id="email" placeholder="Email" required />
                    <input type="password" name="userPassword" id="password" placeholder="Password" required />
                    <input type="password" name="checkPassword" id="checkpassword" placeholder="Confirm Your Password" required />
                    <input type="Submit" class="submit">
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="signIn.jsp" method="post" id="signIn">
                   
                    <h1>Sign in</h1>
                    <span>or use your account</span>
                    <input type="email" name="userEmail" id="email1" placeholder="Email" required />
                    <input type="password1" name="userPassword" id="password1" placeholder="Password" required />
                    <div ><input type="checkbox" name="checkno" style="width:20px; display:inline; border:1px solid black; padding-top:5px; vertical-align:middle;" name="remember"id="" value="1" /><span>remember my password</span></div>
                    <h4 style="color: rgb(235, 82, 82);" id="display"></h4>
                    <a href="#">Forgot your password?</a>
                    <input type="Submit" class="submit">
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <img src="" alt="">
                        <h1>Hello, Friend!</h1>
                        <h4>Enter your personal details and start journey with us</h4>
                        <h5>Already have account</h5>
                        <button class="ghost" id="signin">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Welcome Back!</h1>
                        <h4 >To keep connected with us please login with your personal info</h4>
                        <h5>Register Yourself</h5>
                        <button class="ghost" id="signup">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="./login.js"></script>
</body>

</html>

