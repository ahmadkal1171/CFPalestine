<%-- 
    Document   : createFund
    Created on : Jan 8, 2024, 4:26:22 PM
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.ListFundAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<span style="font-family: verdana, geneva, sans-serif;">
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>User - Crowd Funding</title>
            <link rel="stylesheet" href="css/styleCreate.css" />
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
                            <a href="#" class="logout">
                                <i class="fas fa-sign-out-alt"></i>
                                <span class="nav-item">Log out</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            
                <section class="main">
                    <section class="createF">
                        <div class="create-fund">
                            <!-- <center><h1></h1></center> -->
                            <center><img src="images/aqsa.jpg" width="50%" height="50%"></center><br>
                            
                            <%
                                List categoryList = (List) request.getAttribute("projectList");
                                if (categoryList != null) {
                                    Iterator categorys = categoryList.iterator();
                                    while (categorys.hasNext()) {
                                        ListFundAdmin category = (ListFundAdmin) categorys.next();       
                            %>   
                        
                            <h2><b><center><%=category.getProjName()%></center></b></h2><br>
                            <p>
<!--                                Tabung bagi membantu mangsa di dalam dan luar negara. Tabung semasa ini akan digunakan untuk membantu kos rawatan, pek makanan, kit kecemasan, roti dan lain-lain keperluan yang diperlukan.
                                <br><br>KAMI CROWD FUNDER MALAYSIA MELANCARKAN TABUNG BANTUAN KEMANUSIAAN MERDEKA AQSA. DENGAN KERJASAMA TEAM CROWD FUNDER SEDANG MENGUMPULKAN SUMBER BANTUAN YANG DAPAT DIHANTAR KE SANA.-->
                                <%=category.getProjDesc()%>
                            </p><br>

                            <center>
                                <span class="label">Status:</span> In Progress<br>
                                <span class="label">Due Date:</span> December 31, 2023<br>
                                <span class="label">Team Members:</span> Siti Sarah, Jamal Abdillah<br><br>
                                <span class="label">Funded: </li><div class="progress-bar" id="pb1">90%<br>
                            </center><br>
                            
                            <center>
                                <div class="containerCont">
                                    <div class="center">
                                        Make a contribution<br><br>
                                        <button title="Contribute">
                                            <a href="payment.jsp">
                                                <i class="fa fa-external-link"></i>
                                                Click Here
                                            </a>
                                        </button>
                                    </div>
                                </div>
                            </center>
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
</span>

