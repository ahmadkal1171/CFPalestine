<%-- 
    Document   : profileUser
    Created on : Jan 8, 2024, 4:27:00 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.UserBean"%>

<%--<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/CFDatabase" user="app"
password="app"/>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="css/styleFund.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul>
                    <li>
                        <a href="#" class="logo">
                            <img src="images/logo.png" style="height: 40%;">
                            <span class="nav-item">Donators</span>
                        </a>
                    </li>
                    <li>
                        <a href="dashboardUser.jsp">
                            <i class="fas fa-home"></i>
                            <span class="nav-item" >Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="dashboardUser.jsp">
                            <i class="fas fa-database"></i>
                            <span class="nav-item">About Us</span>
                        </a>
                    </li>
                    <li>
                        <a href="profile-user.jsp">
                            <i class="fas fa-user"></i>
                            <span class="nav-item">Profile</span>
                        </a>
                    </li>
                    <li>
                        <a href="listFund.jsp">
                            <i class="fas fa-list"></i>
                            <span class="nav-item">List Fund</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
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

            <section class="main">
                <section class="fundL">
                    <div class="fund-list">
                        <center><h1>USER PROFILE</h1></center>
<!--                        <sql:query var="result" dataSource="${myDatasource}">
                            SELECT * FROM APP.FUNDER
                        </sql:query>

                        <table border="1" class="table">
                             column headers 
                            <tr>
                                <c:forEach var="columnName" items="${result.columnNames}">
                                    <th><c:out value="${columnName}"/></th>
                                    </c:forEach>
                            </tr>
                             column data 
                            <c:forEach var="row" items="${result.rowsByIndex}">
                                <tr>
                                    <c:forEach var="column" items="${row}">
                                        <td><c:out value="${column}"/></td>
                                    </c:forEach>
                                </tr>
                            </c:forEach>
                        </table>-->
                        <ul>
                            <%
                                UserBean user = (UserBean) request.getAttribute("user");
                            %>
                            <li><span class="label">NAME : </span><%= user.getUsername() %></li>
                            <li><span class="label">FUNDER ID : </span><%= user.getFunder_id() %></li>
                            <li><span class="label">TELEPHONE NUMBER : </span><%= user.getPhoneNum() %></li>
                            <!-- Add more details as needed -->
                        </ul></a>
                    </div>
                </section>

                <!-- Site footer -->
                <section class="footer">
                    <footer>
                        <p class="text-center">Copyright &copy; Crowd Funding</p>
                    </footer>
                </section>
            </section>
        </div>
    </body>
</html>
