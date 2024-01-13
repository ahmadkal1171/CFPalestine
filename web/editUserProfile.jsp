<%-- 
    Document   : editUserProfile
    Created on : Jan 13, 2024, 1:27:04 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
                        
                        
                        <c:set var="id" value="${param.id}"/>
                        <c:set var="name" value="${param.name}"/>
                        <c:set var="email" value="${param.email}"/>
                        <c:set var="phone_number" value="${param.phone_number}"/>

                        <c:if test="${(id!=null)&&(name!=null)&&(email!=null)&&(phone_number!=null)}" var="result">
                            <sql:update var="res" dataSource="${myDatasource}">
                                UPDATE FUNDER SET NAME = ?, EMAIL = ?, PHONE_NUMBER = ? WHERE ID = ?
                                <sql:param value="${id}"/> 
                                <sql:param value="${name}"/>
                                <sql:param value="${email}"/>
                                <sql:param value="${phone_number}"/>
                            </sql:update> 
                        </c:if>
                    
                        <form action="editUserProfile.jsp" method="POST">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone Number</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        
                                        <td><input type="text" name="name" value="" /><br></td>
                                        <td><input type="text" name="email" value="" /><br></td>
                                        <td><input type="text" name="phoneNum" value="" /><br></td>
                                        <td><input type="submit" value="Save Edit" /><br></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
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

