<%-- 
    Document   : listFundAdmin
    Created on : Jan 13, 2024, 1:52:26 AM
    Author     : Haikal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.ListFundAdmin"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<span style="font-family: verdana, geneva, sans-serif;"><!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <title>HOME</title>
      <link rel="stylesheet" href="css/style3.css" />
      <!-- Font Awesome Cdn Link -->
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
                  <a href="homeAdmin.html">
                      <i class="fas fa-home"></i>
                      <span class="nav-item" >Home</span>
                  </a>
              </li>
              <li>
                  <a href="ListFundAdminServlet">
                      <i class="fas fa-database"></i>
                      <span class="nav-item">Project</span>
                  </a>
              </li>
              <li>
                  <a href="AdminServlet">
                      <i class="fas fa-user"></i>
                      <span class="nav-item">Profile</span>
                  </a>
              </li>
              <li>
                  <a href="LogoutServlet" class="logout">
                      <i class="fas fa-sign-out-alt"></i>
                      <span class="nav-item">Log out</span>
                  </a>
              </li>
          </ul>
      </nav>
    
    
      <div id="projectCollection"">      
        
               
        List of the project
        <br><br>
            <%
                List categoryList = (List) request.getAttribute("projectList");
                if (categoryList != null) {
                    Iterator categorys = categoryList.iterator();
                    while (categorys.hasNext()) {
                        ListFundAdmin category = (ListFundAdmin) categorys.next();       
            %>   
                <form action="EditProjectServlet" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                        <tr>
                            <td>Project Name</td>
                            <input type="hidden" name="projId" value="<%= category.getProjId() %>">
                            <td><input type="text" name="projName" value="<%=category.getProjName()%>"/></td>
                        </tr>
                        <tr>
                            <td>Project Description</td>
                            <td><input type="text" name="projDesc" value="<%=category.getProjDesc()%>"/></td>
                        </tr>
                        <tr>
                            <td>Dateline (YYYY-MM-DD)</td>
                            <td><input type="text" name="dateline" value="<%=category.getDateline()%>"/></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Edit Project" /></td>
                            <!--<td><input type="reset" value="Reset" /></td>-->
                        </tr>

                    </tbody>
                </table>
            </form>
                
                
                <form action="DeleteProjectServlet" method="post">
                    <input type="hidden" name="projId" value="<%= category.getProjId() %>">
                    <input type="submit" value="Delete Project"><br><br>
                </form>
            <%
                    }
                }
            %>
         End list of the project  
         <br><br>
         <b>Add Project</b>
        <form action="AddProjectServlet" method="POST">
            <table border="0">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Project Name</td>
                        <td><input type="text" name="projName" /></td>
                    </tr>
                    <tr>
                        <td>Project Description</td>
                        <td><input type="text" name="projDesc" /></td>
                    </tr>
                    <tr>
                        <td>Dateline (YYYY-MM-DD)</td>
                        <td><input type="text" name="dateline" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add Project" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
        </form>
  
    </body>
    </html>
    </span>