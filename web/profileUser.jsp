<%-- 
    Document   : profileUser
    Created on : Jan 8, 2024, 4:27:00 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/CFDatabase" user="app"
password="app"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User - Crowd Funding</title>
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
<!--                        <button target="_blank" style="text-align: right;" type = "button" class = "btn btn-warning" title = "Edit Profile"> EDIT
                          <i class = "fas fa-edit"></i>
                        </button>-->
<!--                        <table class="table">
                            <thead>
                                <tr>
                                    <th><center>Name</center></th>
                                    <th><center>ID Number</center></th>
                                    <th><center>Email Address</center></th>
                                    <th><center>Telephone Number</center></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-2"><center>AINA BINTI RAMLI</center></td>
                                    <td class="col-2"><center>+6011-23456789</center></td>
                                    <td class="col-2"><center>siti18@gmail.com</center></td>
                                    <td class="col-2"><center>A092</center></td>
                                </tr>
                            </tbody>
                        </table>-->
                        <sql:query var="result" dataSource="${myDatasource}">
                            SELECT * FROM APP.FUNDER
                        </sql:query>

                        <table border="1" class="table">
                            <!-- column headers -->
                            <tr>
                                <c:forEach var="columnName" items="${result.columnNames}">
                                    <th><c:out value="${columnName}"/></th>
                                    </c:forEach>
                            </tr>
                            <!-- column data -->
                            <c:forEach var="row" items="${result.rowsByIndex}">
                                <tr>
                                    <c:forEach var="column" items="${row}">
                                        <td><c:out value="${column}"/></td>
                                    </c:forEach>
                                </tr>
                            </c:forEach>
                        </table>
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
