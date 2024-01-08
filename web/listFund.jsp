<%-- 
    Document   : listFund
    Created on : Jan 8, 2024, 4:26:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <img src="images/Logo.png" style="height: 40%;">
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
                        <table class="table">
                            <thead>
                                <tr>
                                    <th><center>Fund ID</center></th>
                                    <th><center>Date</center></th>            
                                    <th><center>Title</center></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-2"><center>10</center></td>
                                    <td class="col-2"><center>10/10/2023</center></td>
                                    <td class="col-2">
                                        <center><a href="detailsPage.jsp">Palestin: Help People in Gaza</a></center>
                                    </td>
                                </tr>
                                <tr class="active">
                                    <td class="col-2"><center>198</center></td>
                                    <td class="col-2"><center>02/08/2023</center></td>
                                    <td class="col-2">
                                        <center><a href="#">Tabung Kecemasan: Merdeka Al Aqsa</a></center>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-2"><center>35</center></td>
                                    <td class="col-2"><center>12/01/2023</center></td>
                                    <td class="col-2">
                                        <center><a href="#">Donate — Justice for people and planet</a></center>
                                    </td>
                                </tr>
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
