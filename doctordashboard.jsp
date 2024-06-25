<%-- 
    Document   : doctordashboard
    Created on : 17 Jun, 2022, 12:03:26 AM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <h1><p align="center"><font color=red>Doctor Dashboard</p></h1>
        <%
            String p=(String)session.getAttribute("dname");
            out.println("<p align=right><font color=red size=5>Welcome&nbsp;"+p);
        %>
        <table class="table table-striped">
            <tr class="text-warning">
                <td><a href="viewconsultation.jsp">Give Consultation </a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="alreadyconsultation.jsp"> Consultation Done</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="dsignout.jsp">Signout</a></td>
            </tr>
        </table>
    </body>
</html>
