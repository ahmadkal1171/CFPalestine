<%-- 
    Document   : Login
    Created on : Jan 4, 2024, 2:31:23 PM
    Author     : Smiling
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${not empty requestScope.errMessage}">
    <div class="errorMessage">${requestScope.errMessage}</div>
</c:if>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login Page</title>
        
        <style>
        .errorMessage {
            color: red;
            text-align: center;
            font-size: 20px;
        }
        
        .body {
            color: yellow;
        }
        </style>
    </head>
    <body>
        <form action="LoginFunderServlet" method="POST">
            <table border="0" cellspacing="6" align="center" cellpadding="3">
                <tbody>
                    <tr>
                        <td>
                             <h1 align="center">Login</h1>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" rowspan="1">
                            <input type="radio" name="login" value="loginUser" checked="checked" /><a href="loginUser.jsp">Login</a>
                            <input type="radio" name="register" value="registerUser"/><a href="register.jsp">Sign Up</a>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="0" align="center" cellpadding="3">
                                <tbody>
                                    <tr>
                                        <td>Username</td>
                                        <td><input type="text" name="username" value=""></td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td><input type="password" name="password" value=""></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <input type="submit" value="Login"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <table border="0" align="center">
            <tbody>
                <tr>
                    <td>
                        <a href="loginAdmin.jsp">Admin Login</a>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
