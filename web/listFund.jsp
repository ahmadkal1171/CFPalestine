<%-- 
    Document   : listFund
    Created on : Jan 8, 2024, 4:26:07 PM
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
                        <a href="profileUser.jsp">
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
                        <center><h1>LIST FUND</h1></center>
                        
                        <sql:query var="result" dataSource="${myDataSource}">
                            SELECT ID, Date, Title 
                            FROM APP.DONATE
                        </sql:query>
                            
                        <table class="table">
                            <thead>
                                <c:forEach var="columnName" items="${result.columnNames}">
                                    <th><c:out value="${columnName}"/></th>
                                </c:forEach>
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${result.rowsByIndex}">
                                    <tr>
                                        <c:forEach var="column" items="${row}">
                                            <th><c:out value="${column}"/></th>
                                        </c:forEach>
                                    </tr>
                                </c:forEach>
                            </tbody>
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

<%-- taktau betul ke tidak lagi tau --%>
