<%-- 
    Document   : editUserProfile
    Created on : Jan 13, 2024, 1:27:04 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/CFDatabase" user="app"
password="app"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <c:set var="name" value="${param.name}"/>
        <c:set var="id" value="${param.id}"/>
        <c:set var="email" value="${param.email}"/>
        <c:set var="phone_number" value="${param.phone_number}"/>
        
        <c:if test="${(id!=null)&&(name!=null)&&(email!=null)&&(phone_number!=null)}" var="result">
            <sql:update var="res" dataSource="${myDatasource}">
                UPDATE FUNDER SET NAME = ?, EMAIL = ?, PHONE_NUMBER = ? WHERE ID = ?
                <sql:param value="${name}"/>
                <sql:param value="${email}"/>
                <sql:param value="${phone_number}"/>
                <sql:param value="${id}"/>
            </sql:update> 
        </c:if>
    </body>
</html>
