<%--  
    Document   : Home 
    Created on : Jan 4, 2024, 2:42:18 PM 
    Author     : Smiling 
--%> 
 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>Crowd Funding Dashboard </title>
      <link rel="stylesheet" href="css/home.css" />
      <!-- Font Awesome Cdn Link -->
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
                <a href="homeUser.html">
                    <i class="fas fa-home"></i>
                    <span class="nav-item" >Home</span>
                </a>
            </li>
            <li>
                <a href="dashboardUser.html">
                    <i class="fas fa-database"></i>
                    <span class="nav-item">Dashboard</span>
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
<!--            <li>
                <a href="contactUser.html">
                    <i class="fas fa-comment"></i>
                    <span class="nav-item">Contact</span>
                </a>
            </li>-->
            <li>
                <a href="loginUser.jsp" class="logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span class="nav-item">Log out</span>
                </a>
            </li>
        </ul>
    </nav>
  
    
        <section class="main">
          <div class="main-top">
            <i class="fas fa-user-cog"></i>
          </div>
            <div class="home">
                 <% 
                String funderusername = request.getParameter("funderusername");
                out.println("<h1 align=center>"+"WELCOME "+ funderusername + " " + "TO CROWDFUNDER"+ "</h1>");
                %>
        
              <!--<h1 class="box_verticalPaddedHalf">WELCOME TO CROWDFUNDER</h1>-->
              
              <section class="parallax-section1" style="background-position: 50% 120px;">
                <div class="projects-img">
                  <!-- <div class="card">
                    <img src="images/1.png">
                  </div> -->
                  <div class="row">
                    <div class="column">
                      <img src="images/1.png" style="width:100%">
                    </div>
                    <div class="column">
                      <img src="images/4.jpg" style="width:100%">
                    </div>
                    <div class="column">
                      <img src="images/3.jpg" style="width:100%">
                    </div>
                  </div>
                </div>
              </section>
              
            </div>

        <section class="parallax-section" style="background-position: 50% 120px;">
          <div class="projects">
            <div class="card">
              <img src="images/5.png">
              <h3>Emergency Fund: Merdeka Al Aqsa</h3>
              <h1 class="counter" data-count="9000"></h1><br>
              <p>Fund to help victims in the country and abroad. This current fund will be used to help with treatment costs, food packs, emergency kits, bread and other necessary needs.</p>
              <button><a href="CreateFundServlet">See More</a></button>
            </div>
            <div class="card">
              <img src="images/7.png">
              <h3>Morocco Earthquake Emergency Fund</h3>
              <p>Fund to help disaster victims in the country and abroad. Funds during this disaster will be used to help victims of the Moroccan/Morocco earthquake & Libyan floods</p>
              <button href="">See More</button>
            </div>
            <div class="card">
              <img src="images/6.png">
              <h3> Syifa Hydrocephalus Aid Fund</h3>
              <p>This donation is to help Syifa's sister who has suffered from hydrocephalus in the head since birth. 
                This Donation Fund is an initiative of Hayrat Relief Malaysia to help ease the burden of Syifa's sister and family.</p>
              <button href="">See More</button>
            </div>
            <div class="card">
                <img src="images/8.png">
                <h3>Disaster Emergency Fund</h3>
                <p>This donation is to help the Asnaf group in Malaysia. This Donation Fund is an initiative of Hayrat Relief MalaysiaFund to help disaster victims in the country and abroad. 
                    Funds during this disaster will be used to help victims of the Turkiye-Syria earthquake.</p>
                <button href="">See More</button>
              </div>
          </div>
        </section>
    
        <section class="parallax-section" style="background-position: 50% 120px;">
            <div class="projects">
              <div class="card">
                <img src="images/5.png">
                <h3>Emergency Fund: Merdeka Al Aqsa</h3>
                <h1 class="counter" data-count="9000"></h1><br>
                <p>Fund to help victims in the country and abroad. This current fund will be used to help with treatment costs, food packs, emergency kits, bread and other necessary needs.</p>
                <button>See More</button>
              </div>
              <div class="card">
                <img src="images/7.png">
                <h3>Morocco Earthquake Emergency Fund</h3>
                <p>Fund to help disaster victims in the country and abroad. Funds during this disaster will be used to help victims of the Moroccan/Morocco earthquake & Libyan floods</p>
                <button href="">See More</button>
              </div>
              <div class="card">
                <img src="images/6.png">
                <h3> Syifa Hydrocephalus Aid Fund</h3>
                <p>This donation is to help Syifa's sister who has suffered from hydrocephalus in the head since birth. 
                  This Donation Fund is an initiative of Hayrat Relief Malaysia to help ease the burden of Syifa's sister and family.</p>
                <button href="">See More</button>
              </div>
              <div class="card">
                  <img src="images/8.png">
                  <h3>Disaster Emergency Fund</h3>
                  <p>This donation is to help the Asnaf group in Malaysia. This Donation Fund is an initiative of Hayrat Relief MalaysiaFund to help disaster victims in the country and abroad. 
                      Funds during this disaster will be used to help victims of the Turkiye-Syria earthquake.</p>
                  <button href="">See More</button>
                </div>
            </div>
          </section>
          
      <!-- Site footer -->
      <section class="footer">
        <footer>
          <p class="text-center">Copyright &copy; FundingHelp.com</p>
        </footer>
    </section>

      </div>
    </body>
    </html>
    </span>

