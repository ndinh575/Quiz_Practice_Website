<%-- 
    Document   : My Registration
    Created on : 12 thg 5, 2024, 16:59:06
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="app.entity.Registration"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Registration</title>
        <link rel="stylesheet" href="public/css/bootstrap/bootstrap.min.css"/>
    </head>
    <body>
        <div class="row">
            <div class="col-9">
                <table class="table table-bordered table-hover">
                    <thead class="table-info">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Subject</th>
                            <th scope="col">Registration Time</th>
                            <th scope="col">Package</th>
                            <th scope="col">Total cost</th>
                            <th scope="col">Status</th>
                            <th scope="col">Valid From</th>
                            <th scope="col">Valid To</th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <%
                        Vector<Registration> registrationVector = (Vector<Registration>) request.getAttribute("data");
                        for(Registration regist:registrationVector){
            
                    %>
                    <tbody>
                        <tr>
                            <th scope="row"><%=regist.getRegistrationId()%></th>
                            <td><%=regist.getSubjectName()%></td>
                            <td><%=regist.getRegistrationTime()%></td>
                            <td><%=regist.getPackageName()%></td>
                            <td><%=regist.getTotalCost()%></td>
                            <td><%=regist.getStatus()%></td>
                            <td><%=regist.getValidFrom()%></td>
                            <td><%=regist.getValidTo()%></td>
                            <td><a href="RegistrationController?service=edit">edit</a></td>
                            <td><a href="RegistrationController?service=cancel&id=<%=regist.getRegistrationId()%>">cancel</a></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
            <div class="container col-3">
                <div class="row justify-content-center">
                    <form  action="">
                        <input type="text" placeholder="Search.." name="search">
                        <button type="submit"><i class="" style="width: 1em; height: 1em;">submit</i></button>
                    </form>
                </div>
                <div class="row justify-content-center">
                    <label for="subject">Filter Subject:</label>
                    <select class="col-10" name="subject" id="subject">
                        <option value="0">All Category</option>
                        <option value="1">Volvo</option>
                        <option value="2">Saab</option>
                        <option value="3">Mercedes</option>
                        <option value="4">Audi</option>
                    </select>
                </div>
                <a class="row justify-content-center" href="">Contact us</a>
            </div>
        </div>
    </body>
</html>
