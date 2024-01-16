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
        <div class="row">
            <div class="col-55">
                <div class="container" style="align:center">
                    
                        <div style="width: 500px; border: 1px solid #ccc; padding: 20px;">
                        <h3>Payment Confirmation</h3>
                        <p>Total Amount RM2.00</p>
 
                        <form action="paymentServlet" method="post">
                          <input type="hidden" name="total_charge" value="2.00">
                          <label for="fundername">Your Name : </label>
                          <input type="text" id="fundername" name="fundername" required>
                          <br>
                          <label for="funderemail">Email Address : </label>
                          <input type="text" id="funderemail" name="funderemail" required>
                          <br>
                          <label for="projectId">Select Campaign : </label>
                          <select class="form-select" id="projectId">
                                                <option value="1">Campaign 1</option>
                                                <option value="2">Campaign 2</option>
                                                <option value="3">Campaign 3</option>
                          </select><br>
                          <br>
                          <label for="amount"><i class="fa fa-institution"></i>Enter Amount (RM):</label>
                                <input type="text" id="amount" name="amount" inputmode="numeric" />
                          <br>
                          <h3>Payment</h3>
                                 <label for="method">Select Payment Method :</label>
                                        <select class="form-select" id="payment_method">
                                            <option value="1">Cards</option>
                                            <option value="2">Online Banking</option>
                                            <option value="3">E-Wallet</option>
                                        </select>
                          <input type="submit" value="Continue to checkout" class="btn">
                        </form>
                      </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script>
        document.getElementById('payment-form').addEventListener('submit', function(event) {
            // Add your client-side validation logic here
           });
        </script>
</html>