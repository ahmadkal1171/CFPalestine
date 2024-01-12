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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
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
                        <td>Dateline </td>
                        <td><input type="text" name="dateline" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add Project" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
        </form>
        
        List of the project
            <%
                List categoryList = (List) request.getAttribute("projectList");
                if (categoryList != null) {
                    Iterator categorys = categoryList.iterator();
                    while (categorys.hasNext()) {
                        ListFundAdmin category = (ListFundAdmin) categorys.next();       
            %>   

                <p>Name of the project : <%=category.getProjName()%> <br> <%=category.getProjDesc()%>
                    <br>(Project Id : <%=category.getProjId()%>)</p><br>
                Project deadline<%=category.getDateline()%>


            <%
                    }
                }
            %>
         End list of the project               
    </body>
</html>
