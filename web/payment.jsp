<%-- 
    Document   : payment
    Created on : Jan 14, 2024, 1:52:19 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crowdfunding System = Payment</title>
        <link href="css/payment.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
                        <a href="UserServlet">
                            <i class="fas fa-user"></i>
                            <span class="nav-item">Profile</span>
                        </a>
                    </li>
                    <li>
                        <a href="ListFundServlet">
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
        
        <center>
            <div class="col-55">
                        <div style="width: 1200px; border: 1px solid #ccc; padding: 30px; margin-top: 100px ">
                        <h3>Payment Confirmation</h3>
 
                        <form action="paymentServlet" method="post">
                          <input type="hidden" name="total_charge" value="2.00">
                          <label for="fundername">Your Name : </label>
                          <input type="text" id="fundername" name="fundername" required>
                          <br>
                          <label for="funderemail">Email Address : </label>
                          <input type="text" id="funderemail" name="funderemail" required>
                          <br>
                          <br>
                          <label for="amount"><i class="fa fa-institution"></i>Enter Amount (RM):</label>
                                <input type="text" id="amount" name="amount" inputmode="numeric" />
                          <br>
                                 <label for="method">Select Payment Method :</label>
                                        <select class="form-select" id="payment_method">
                                            <option value="1">Cards</option>
                                            <option value="2">Online Banking</option>
                                            <option value="3">E-Wallet</option>
                                        </select>
                          <input type="submit" value="Continue to checkout" class="btn">
                        </form>
                      </div>
                    </div>
            </center>
    </body>
    <script>
        document.getElementById('payment-form').addEventListener('submit', function(event) {
            // Add your client-side validation logic here
           });
        </script>
</html>