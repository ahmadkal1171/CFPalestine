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
                                        <td><input type="text" name="username"></td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td><input type="password" name="password"></td>
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

<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login and Registration</title>
      <link rel="stylesheet" href="css/register.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   
   <body>
      <div class="wrapper">
         <div class="title-text">
            <div class="title login">
               Login
            </div>
            <div class="title signup">
               Signup
            </div>
         </div>

         <div class="form-container">
            <div class="slide-controls">
               <input type="radio" name="slide" id="login" checked>
               <input type="radio" name="slide" id="signup">
               <label for="login" class="slide login">Login</label>
               <label for="signup" class="slide signup">Signup</label>
               <div class="slider-tab"></div>
            </div>

            <div class="form-inner">
               
               <form name="f1"  class="login"  action="homeUser.html" onsubmit = "return validation()" >
                  <div class="field">
                     <input type="text" id="cusEmail" name="cusEmail" placeholder="Email Address" required>
                  </div>
                  <div class="field">
                     <input type="password" id="cusPassword" name="cusPassword" placeholder="Password" required>
                  </div>
                  <div class="pass-link">
                     <a href="#">Forgot password?</a>
                  </div>
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" name = "login" value="Login">
                  </div>
                  <div class="signup-link">
                     <a href="loginAdmin.html">STAFF LOGIN</a>
                  </div>
               </form>

               <form action="register_form.php" class="signup" method="POST">
                  <div class="field">
                     <input type="text" placeholder="Email Address" name="cusEmail" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Password" name="cusPassword" required>
                  </div>
                  <div class="field">
                     <input type="text" placeholder="Full Name" name="cusName" required>
                  </div>
                  <div class="field">
                     <input type="textarea" placeholder="Address" name="cusAddress" required>
                  </div>
                  <div class="field">
                     <input type="text" placeholder="Phone Number" name="cusNumPhone" required>
                  </div>


                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" name = "signup" value="Signup">
                     
                  </div>
               </form>
            </div>
         </div>
      </div>
      <script>
         const loginText = document.querySelector(".title-text .login");
         <!-- const loginForm = document.querySelector("form.login"); -->
         const loginBtn = document.querySelector("label.login");
         const signupBtn = document.querySelector("label.signup");
         signupBtn.onclick = (()=>{
           loginForm.style.marginLeft = "-50%";
           loginText.style.marginLeft = "-50%";
         });
         loginBtn.onclick = (()=>{
           loginForm.style.marginLeft = "0%";
           loginText.style.marginLeft = "0%";
         });
         signupLink.onclick = (()=>{
           signupBtn.click();
           return false;
         });
      </script>

      <script>  
         function validation()  
         {  
               var id=document.f1.cusEmail.value;  
               var ps=document.f1.cusPassword.value;  
               if(id.length=="" && ps.length=="") {  
                  alert("User Name and Password fields are empty");  
                  return false;  
               }  
               else  
               {  
                  if(id.length=="") {  
                     alert("User Name is empty");  
                     return false;  
                  }   
                  if (ps.length=="") {  
                  alert("Password field is empty");  
                  return false;  
                  }  
               }                             
         }  
         <!-- const loginForm = document.querySelector("form.login");

         function validation() {
            var email = document.getElementById('cusEmail').value;
            var password = document.getElementById('cusPassword').value;

            // Simulate authentication, replace with actual logic
            if (email === 'ahmad@gmail.com' && password === '12345678') {
               alert('Login successful');
               // Redirect to home-user or perform other actions after successful login
            } else {
               alert('Invalid credentials');
            }

            // Prevent the form from submitting
            return false;
         } -->
      </script>  
   </body>
</html>
