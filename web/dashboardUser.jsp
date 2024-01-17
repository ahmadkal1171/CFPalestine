
<%@page import="bean.DashboardUserBean"%>
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
                  <a href="ListFundServlet">
                      <i class="fas fa-home"></i>
                      <span class="nav-item">Home</span>
                  </a>
              </li>
              <li>
                    <a href="DashboardUserServlet">
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
                  <h1><center>DASHBOARD</center></h1>
                <table class="table">
                  <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Date</th>              
                        <th style="text-align: center;">Amount (RM)</th>
                    </tr>
                  </thead>
                  <%
                            List categoryList = (List) request.getAttribute("projectList");
                            if (categoryList != null) {
                                Iterator categorys = categoryList.iterator();
                                while (categorys.hasNext()) {
                                    DashboardUserBean category = (DashboardUserBean) categorys.next();       
                        %>   
                            <tbody>
                                <tr>
                                    <td><%=category.getFunderid()%></td>
                                    <td><%=category.getFunderName()%></td>
                                    <td><%=category.getFundingdate()%></td>
                                    <td><%=category.getFundingamount()%></td>
                                </tr>
                            </tbody>
                        <%
                    }
                }
            %>
                </table>
              </div>
            </section>
            </section>
                          <footer>
              <p class="text-center">Copyright &copy; FundingHelp.com</p>
          </footer>
            </section>


    </div>
</body>
</html>