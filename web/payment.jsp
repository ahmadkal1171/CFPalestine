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
                <div class="container">
                    <form action="/action_page.php">

                        <div class="row">
                            <div class="col-35">
                                <h3>Billing Page</h3>
                                <label for="fname"><i class="fa fa-user"></i> Your Name</label>
                                <input type="text" id="name" name="fundername" placeholder="">
                                <label for="email"><i class="fa fa-envelope"></i> Email Address :</label>
                                <input type="text" id="email" name="funderemail" value="" />
                                <label for="projectId">Select Campaign : </label>
                                <!--gather from project table-->
                                <select class="form-select" id="projectId">
                                                <option value="1">Campaign 1</option>
                                                <option value="2">Campaign 2</option>
                                                <option value="3">Campaign 3</option>
                                </select><br/><br/>
                                <label for="amount"><i class="fa fa-institution"></i>Enter Amount (RM):</label>
                                <input type="text" id="amount" name="amount" value="" />

                                 <h3>Payment</h3>
                                 <label for="method">Select Payment Method :</label>
                                        <select class="form-select" id="payment_method">
                                            <option value="1">Cards</option>
                                            <option value="2">Online Banking</option>
                                            <option value="3">E-Wallet</option>
                                        </select>
                            </div>
                        </div>
                        <input type="submit" value="Continue to checkout" class="btn">
                    </form>
                </div>
            </div>
            <div class="col-25">
                <div class="container">
                    <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
                    <p><a href="#">Nike Shoes </a> <span class="price">₹2000</span></p>
                    <p><a href="#">Jio Phone</a> <span class="price">₹1000</span></p>
                    <p><a href="#">Iphone 13 pro max</a> <span class="price">₹20000</span></p>
                    <p><a href="#">Tomato</a> <span class="price">₹400</span></p>
                    <hr>
                    <p>Total <span class="price" style="color:black"><b>₹23400</b></span></p>
                </div>
            </div>
        </div>