<%-- 
    Document   : homeAdmin
    Created on : Jan 4, 2024, 10:10:28 PM
    Author     : Haikal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<span>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Crowd Funding</title>
        <script src="https://kit.fontawesome.com/108ac02d1f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/styleindex.css">
    </head>
    <body>
        <h1>Home page</h1>
        Welcome ${userID}<br>
        <a href="LogoutServlet">Logout</a>
        <header>
            <img class="logo" src="images/logo.png" href="" alt="logo">
            <div class="navbar">
                <nav>
                    <ul>
                      <li><form action="/action_page.php">
                            <input type="text" placeholder=" Search.. " name="search">
                            <a href=""><i class="fa-solid fa-magnifying-glass"></i></a></form>
                        </li>
                        <li style="padding: 10px 5px;border-radius: 10px 10px;background-color:#515050;"><a style="color: #3366cc;" href="homeAdmin.jsp">Home</a></li>
                        <li><a href="dashboard.html">Dashboard</a></li>
                        <!-- <li><a href="">Program & Platform</a></li> -->
                        <li><a href="AdminServlet">Profile</a></li>
                        
                        
                        <!-- <li><a href=""><i class="fa-solid fa-magnifying-glass"></i></a></li> -->
                    </ul>
                </nav>
            </div>
        </header>
        
        <div id="projectCollection">
          <!-- Project 1 -->
          <div class="project">
            <a href="">
              <img src="images/palestine.jpeg">
              <h2>Project 1: PALESTINE</h2>
              <ul>
                  <li><span class="label">Status:</span> In Progress</li>
                  <li><span class="label">Due Date:</span> December 31, 2023</li>
                  <li><span class="label">Team Members:</span> John Doe, Jane Smith</li>
                  <li><span class="label">PROGRESS: </li><div class="progress-bar" id="pb1">90%</div>
                  
                  <!-- Add more project details as needed -->
              </ul></a>
          </div>
          <!-- Project 2 -->
          <div class="project">
              <a href="">
                <img src="images/orphan.jpeg">
              <h2>Project 2: ORPHAN</h2>
              <ul>
                  <li><span class="label">Status:</span> Completed</li>
                  <li><span class="label">Due Date:</span> January 15, 2024</li>
                  <li><span class="label">Team Members:</span> Alice Johnson, Bob Brown</li>
                  <li><span class="label">PROGRESS: </li><div class="progress-bar" id="pb2">80%</div>
                  <!-- Add more project details as needed -->
              </ul>
              </a>
          </div>
          <script>
            // Simulate progress (for demonstration purposes)
            function simulateProgress(progressBarId,x) {
                var progressBar = document.getElementById(progressBarId);
                var width = 1;
                var interval = setInterval(function () {
                    if (width >= x) {
                        clearInterval(interval);
                    } else {
                        width++;
                        progressBar.style.width = width + '%';
                        progressBar.innerHTML = width + '%';
                    }
                }, 20); // Adjust the interval for desired speed
            }
    
            // Call the function to simulate progress
            simulateProgress('pb1',90);
            simulateProgress('pb2',80);
        </script>
  
          <!-- Add more projects as needed -->
      </div>          
        <footer class="site-footer">
                
                  <h6>Crowd Funding</h6>
                  <p class="text-justify">Empower dreams, fund possibilities. Together, we build the future through the collective strength of the crowd.</p>
      
                
            <div class="container">
              <div class="row">
                <div class="col-md-8 col-sm-6 col-xs-12">
                  <p class="copyright-text">Copyright &copy; 2023 All Rights Reserved by 
               <a href="#">CROWD FUNDER MALAYSIA</a>.
                  </p>
                </div>
      
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <ul class="social-icons">
                    <li><a class="facebook" href="https://www.facebook.com/artaniscloud/?_rdc=1&_rdr"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="twitter" href="https://twitter.com/ArtanisCloud"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="linkedin" href="https://www.linkedin.com/company/artaniscloud/"><i class="fa fa-linkedin"></i></a></li>   
                  </ul>
                </div>
              </div>
            </div>
      </footer>
    </body>
</html>
</span>