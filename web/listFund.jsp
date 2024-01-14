<%-- 
    Document   : listFund
    Created on : Jan 8, 2024, 4:26:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import="java.util.Iterator"%>
<%@page import="bean.ListFund"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>--%>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.ListFundAdmin"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User - List Fund</title>
        <link rel="stylesheet" href="css/styleFund.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul>
                    <li>
                        <a class="logo">
                            <img src="images/logo.png" style="height: 40%;">
                            <span class="nav-item">Donators</span>
                        </a>
                    </li>
                    <li>
                        <a href="homeUser.jsp">
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
                        <a href="loginUser.jsp" class="logout">
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
                        <table border="1" class="table">
                            <thead>
                                <tr>
                                    <th>Project ID</th>
                                    <th>Dateline</th>
                                    <th>Title</th>
                                </tr>
                            </thead>
                        <%
                            List categoryList = (List) request.getAttribute("projectList");
                            if (categoryList != null) {
                                Iterator categorys = categoryList.iterator();
                                while (categorys.hasNext()) {
                                    ListFundAdmin category = (ListFundAdmin) categorys.next();       
                        %>   
                            <tbody>
                                <tr>
                                    <td><%=category.getProjId()%></td>
                                    <td><%=category.getDateline()%></td>
                                    <td><%=category.getProjName()%> - <%=category.getProjDesc()%></td>
                                </tr>
                            </tbody>
                        <%
                    }
                }
            %>
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
