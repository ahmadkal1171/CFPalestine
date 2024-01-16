
<%-- 
    Document   : dashboard
    Created on : Jan 16, 2024, 8:25:54 PM
    Author     : HP
--%>

 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.ListFundAdmin"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>

<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>User - Dashboard</title>
    <link rel="stylesheet" href="css/home.css" />
    <link rel="stylesheet" href="css/styleFund.css" />
        <link rel="stylesheet" href="css/style3.css" />

    <!-- Font Awesome Cdn Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
</head>

<body>
    <div class="container">
      <nav>
          <ul>
              <li>
                  <a class="logo">
                      <img src="images/logo.png" style="height: 40%;">
                      <span class="nav-item">Crowd<br>Funding</span>
                  </a>
              </li>
              <li>
                  <a href="homeUser.jsp">
                      <i class="fas fa-home"></i>
                      <span class="nav-item">Home</span>
                  </a>
              </li>
              <li>
                  <a href="dashboardUser.jsp">
                      <i class="fas fa-database"></i>
                      <span class="nav-item">Dashboard</span>
                  </a>
              </li>
              <li>
                  <a href="UserServlet">
                      <i class="fas fa-user"></i>
                      <span class="nav-item">Profile</span>
                  </a>
              </li>
              <li>
                  <a href="loginUser.jsp" class="logout">
                      <i class="fas fa-sign-out-alt"></i>
                      <span class="nav-item">Log out</span>
                  </a>
              </li>
          </ul>
      </nav>

      <section class="main">
            <section class="main">
        
            <section class="attendance">
              <div class="attendance-list">
                <h1>History</h1>
                <table class="table">
                  <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Date</th>              
                        <th  style="text-align: center;">Amount (RM)</th>
                        <th>Time</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                        <td>01</td>
                        <td>Sam David</td>
                        <td>03-24-22</td>
                        <td style="text-align: center;">5.00</td>
                        <td>5:31PM</td>
                    </tr>
                    <tr class="active">
                        <td>02</td>
                        <td>Muhammad Haziq</td>
                        <td>03-24-22</td>
                        <td style="text-align: center;">35.00</td>
                        <td>6:34AM</td>
                    </tr>
                    <tr>
                        <td>03</td>
                        <td>Badan John</td>
                        <td>03-24-22</td>
                        <td style="text-align: center;">15.00</td>
                        <td>9.00PM</td>
                    </tr>
                    <tr>
                        <td>04</td>
                        <td>Sara Macwilson</td>
                        <td>03-24-22</td>
                        <td style="text-align: center;">50.00</td>
                        <td>9:00AM</td>
                    </tr>
                    <tr>
                        <td>05</td>
                        <td>Kairi</td>
                        <td>03-24-22</td>
                        <td style="text-align: center;">5.00</td>
                        <td>9:41AM</td>
                    </tr>
                    <tr>
                        <td>06</td>
                        <td>Celiboy</td>
                        <td>03-24-22</td>
                        <td style="text-align: center;">1.00</td>
                        <td>8:05PM</td>
                    </tr>
                    <tr>
                        <td>07</td>
                        <td>Ahmad Syafiq</td>
                        <td>03-25-22</td>
                        <td style="text-align: center;">20.00</td>
                        <td>5:31PM</td>
                    </tr>
                    <tr>
                        <td>08</td>
                        <td>Muhammad Muqsit bin Ali</td>
                        <td>03-27-22</td>
                        <td style="text-align: center;">30.00</td>
                        <td>6:34PM</td>
                    </tr>
                    <tr>
                        <td>09</td>
                        <td>Melissa</td>
                        <td>03-28-22</td>
                        <td style="text-align: center;">100.00</td>
                        <td>3.42PM</td>
                    </tr>
                    <tr>
                  </tbody>
                </table>
              </div>
            </section>

      <!-- Site footer -->
      <section class="footer">
          <footer>
              <p class="text-center">Copyright &copy; FundingHelp.com</p>
          </footer>
      </section>

    </div>
</body>
</html>