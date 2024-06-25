<%-- 
    Document   : csignout
    Created on : 17 Jun, 2022, 9:07:06 AM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            session.invalidate();
            response.sendRedirect("customerlogin.html");
        %>
    </body>
</html>
