<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : profileAdmin
    Created on : Jan 10, 2024, 3:45:48 PM
    Author     : Haikal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.AdminBean"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
        <script src="https://kit.fontawesome.com/108ac02d1f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/styleindex.css">
    </head>
    <body>
        <h1>Profile page</h1><br>
        <a href="LogoutServlet">Logout</a>
        <header>
            <img class="logo" src="images/logo.png" href="" alt="logo">
            <div class="navbar">
                <nav>
                    <ul>
                        <li><form action="/action_page.php">
                          <input type="text" placeholder=" Search.. " name="search">
                          <a href=""><i class="fa-solid fa-magnifying-glass"></i></a></form>
                        </li>
                        <li><a href="homeAdmin.jsp">Home</a></li>
                        <li><a href="dashboard.html">Dashboard</a></li>
                        <!-- <li><a href="">Program & Platform</a></li> -->
                        <li style="padding: 10px 5px;border-radius: 10px 10px;background-color:#515050;"><a style="color: #3366cc;" href="profileAdmin.jsp">Profile</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        
        <div id="projectCollection">
          <!-- Project 1 -->
          <div class="project">
            <h1 style="text-align: center;">ADMIN PROFILE</h1>
            
            <ul>
                 <%
            AdminBean admin = (AdminBean) request.getAttribute("admin");
            %>
                  <li><span class="label">NAME : </span><%= admin.getUsername() %></li>
                  <li><span class="label">FOUNDER ID : </span><a href="https://www.instagram.com/dthaqif/" target="_blank"></a><%= admin.getId() %></li>
                  <li><span class="label">INCHARGE IN(PROJECT ID) : </span><%= admin.getProjId() %></li>
                  <!-- Add more details as needed -->
              </ul></a>
          </div>

      </div>          
        <footer class="site-footer">
                
                  <h6>Crowd Funding</h6>
                  <p class="text-justify">Empower dreams, fund possibilities. Together, we build the future through the collective strength of the crowd.</p>
      
                
            <div class="container">
              <div class="row">
                <div class="col-md-8 col-sm-6 col-xs-12">
                  <p class="copyright-text">Copyright &copy; 2023 All Rights Reserved by 
               <a href="#">CROWD FUNDER MALAYSIA</a>.
                  </p>
                </div>
      
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <ul class="social-icons">
                    <li><a class="facebook" href="https://www.facebook.com/artaniscloud/?_rdc=1&_rdr"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="twitter" href="https://twitter.com/ArtanisCloud"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="linkedin" href="https://www.linkedin.com/company/artaniscloud/"><i class="fa fa-linkedin"></i></a></li>   
                  </ul>
                </div>
              </div>
            </div>
      </footer>
    </body>
</html>
