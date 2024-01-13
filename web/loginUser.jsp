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

<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login Page</title>
      <link rel="stylesheet" href="css/register.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   
   <br>
<br>
    <div class="cont">
        <div class="form sign-in">
            <h2>Welcome</h2>
            <form action="LoginFunderServlet" method="POST">
            <label>
                <span>Username</span>
                <input type="text" name="funderusername" value="">
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="funderpass" value="">
            </label>
            <p class="forgot-pass">Forgot password?</p>
<!--                <button type="button" class="submit">Sign In</button>-->
                <input type="submit" value="Sign In" class="submit"/>
            </form>
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h3>Don't have an account? Please Sign up!<h3>
                </div>
                <div class="img__text m--in">
                    <h3>If you already has an account, just sign in.<h3>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
                </div>
            </div>
            <div class="form sign-up">
                <h2 align="center">Create your Account</h2>
                <form action="RegisterServlet" method="POST">
                <label>
                    <span>Name</span>
                    <input type="text" name="fundername" value="" />
                </label>
                <label>
                    <span>Email</span>
                    <input type="text" name="funderemail" value="" />
                </label>
                <label>
                    <span>Phone</span>
                    <input type="text" name="funderphone" value="" />
                </label>
                <label>
                    <span>Username</span>
                    <input type="text" name="funderusername" value="" />
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="funderpass" value="" />
                </label>
<!--                <label>
                    <span>Confirm Password</span>
                    <input type="password" name="confirmpassword" value="" />
                </label>-->
                
                <input type="submit" value="Sign Up"/>
                <input type="reset" value="Reset"/>
                
                </form>
            </div>
        </div>
    </div>

    <script>
        document.querySelector('.img__btn').addEventListener('click', function() {
            document.querySelector('.cont').classList.toggle('s--signup');
        });
    </script>
   </body>
</html>
