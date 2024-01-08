<%--  
    Document   : Home 
    Created on : Jan 4, 2024, 2:42:18 PM 
    Author     : Smiling 
--%> 
 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>CrowdFunding Home</title>
        <link rel="stylesheet" href="css/home.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    </head> 
    <body> 
        <h1 align="center">Home Page</h1> 
        
        <% 
        String fundername = request.getParameter("fundername");
        out.println("<h3 align=center>"+"WELCOME "+ fundername + " " + "TO CROWDFUNDER"+ "</h3>");
        %>
        
        <div class="container">
          <nav>
              <ul>
                  <li>
                      <a class="logo">
                          <img src="images/Logo.png" style="height: 40%;">
                          <span class="nav-item">Donators</span>
                      </a>
                  </li>
                  <li>
                      <a href="homeUser.html">
                          <i class="fas fa-home"></i>
                          <span class="nav-item" >Home</span>
                      </a>
                  </li>
                  <li>
                      <a href="dashboardUser.html">
                          <i class="fas fa-database"></i>
                          <span class="nav-item">Dashboard</span>
                      </a>
                  </li>
                  <li>
                      <a href="profile-user.html">
                          <i class="fas fa-user"></i>
                          <span class="nav-item">Profile</span>
                      </a>
                  </li>
                  <li>
                      <a href="listFund.html">
                          <i class="fas fa-list"></i>
                          <span class="nav-item">List Fund</span>
                      </a>
                  </li>
                  <li>
                      <a href="contactUser.html">
                          <i class="fas fa-comment"></i>
                          <span class="nav-item">Contact</span>
                      </a>
                  </li>
                  <li>
                      <a href="#" class="logout">
                          <i class="fas fa-sign-out-alt"></i>
                          <span class="nav-item">Log out</span>
                      </a>
                  </li>
              </ul>
          </nav>

          <table border="1" align="center">
              <tbody>
                  <tr>
                      <td>
                          <img src="WEB-INF/img/1.png" width="874" height="488" alt="1"/>
                      </td>
                      <td>
                          <img src="WEB-INF/img/4.jpg" width="778" height="438" alt="4"/>
                      </td>
                      <td>
                           <img src="WEB-INF/img/2.jpg" width="778" height="438" alt="2"/>
                      </td>
                  </tr>
              </tbody>
          </table>
          <table border="1" cellspacing="4" align="center">
                  <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                  </tr>
              </tbody>
          </table>
        </div>
        <center><a href="LogoutServlet">Logout</a></center> 
    </body> 
</html>

