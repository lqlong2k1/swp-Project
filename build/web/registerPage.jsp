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
        <title>Sign up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="css/register.css" />
        <script src="main.js"></script>
    </head>
    <style>
        .container{
            top: 50%;
            height: 540px;
            width: 900px;


        }
        .container .login_form{
            height: fit-content;
            width: 60%;

        }
        .container .form_content{
            width: 40%;
        }

        .container .login_form a{
            font-size: 14.5px;
            text-decoration: none;
            font-weight: inherit;
            padding-right: 20px
        }

    </style>
    <body>
        <section>
            <div class="container">
                <div class="form_content">
                    <h2>Welcome to Healthy Care!</h2>
                    <p>Please fill in all information to register an account</p>
                    <p style="color: red; font-weight: bolder">${MSG}</p>
                    <a type="button" href="loginPage.jsp" style="padding-left: 10px; color: #9ca018;">Back to login</a>
                </div>
                <div class="login_form">
                    <h1>Sign up</h1>
                    <form action="signup" method="POST">
                        <input type="text" name="name" required placeholder="Fullname"> 

                        <div class="row row-space">
                            <div class=" col-2" style="width: 230px;">
                                <div class="dropdown gender">
                                    <a class="genderTittle">Gender</a>
                                    <select name="gender" class="dropdown-select">                                                            
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                            </div>
                         
                            <div class="col-2" style="width: 230px;">
                                <input type="text" name="career" class="career" required placeholder="Career">
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class=" col-2" style="width: 230px;">
                                <input type="date" name="birthday" id="birthday" required="" placeholder="Date of birth">
                            </div>
                            <div class="col-2" style="width: 230px;">
                                <input type="text" name="phonenumber" pattern="09[0-9]{2} [0-9]{6}" placeholder="Phone number" required >
                            </div>
                        </div>
                        <input type="text" name="address" required placeholder="Address">

                        <input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="Email" required>
                        <div class="form-group">
                            <input type="password" name="password" required placeholder="Password">
                            <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                        </div>
                        <input type="submit" name="" value="Sign up">

                    </form>

                </div>
            </div>
        </section>
    </body>
</html>
