<%-- 
    Document   : SubjectRegisterPopUp
    Created on : 24 thg 5, 2024, 23:16:52
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="row">
            <c:set var="registEdit" value="${requestScope.registId}"/>
            <form>
                <h1>Register Subject Popup</h1>
            </form>
        </div>
    </body>
</html>
