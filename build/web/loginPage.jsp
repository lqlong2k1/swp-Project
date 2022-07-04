<%-- 
    Document   : registerPage
    Created on : Jul 2, 2022, 4:51:33 PM
    Author     : mitdo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sign in</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="css/register.css" />
        <script src="main.js"></script>
    </head>
    <body>
        <section>
            <div class="container">
                <div class="form_content">
                    <h2>Welcome to Healthy Care!</h2>
                    <p>If you are here for the first time or do not have an account. You can click below to create an account</p>
                    <a href="registerPage.jsp">Sign up</a>
                </div>
                <div class="login_form">
                    <h1>Sign In</h1>
                    <form action="login" method="POST">
                        <input type="text" required placeholder="Your ID" name="userID">
                        <div class="form-group">
                            <input type="password" name="password"  placeholder="Password" required>
                            <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                        </div>
                        <p style="color: red">${MSG}</p>
                        <input type="submit" name="" value="Login">
                    </form>
                    <a href="#" id="forgot">Forget Password</a>
                </div>
            </div>
        </section>
    </body>
</html>
