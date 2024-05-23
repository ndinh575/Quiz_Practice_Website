<%-- 
    Document   : LoginInterface
    Created on : May 13, 2024, 12:24:32 AM
    Author     : OwO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="/common/ImportBootstrap.jsp" %>
    </head>
    <body>
        <div class="login_container">
            <div class="modal-body">
                <form method="post" action="loginviewofAn" class="form-login">
                    <h3 class="text-center">Login</h3>
                    <div class="form-group">
                        <label for="username">Email:</label>
                        <input type="text" name="username" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" name="password" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" value="Login" class="btn btn-primary"/>
                        <input type="hidden" name = "service" value = "login"/>
                    </div>
                    <div class="form-group text-center">
                        <a href="">Signup</a> | <a href="">Forgot password?</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
