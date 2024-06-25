<%-- 
    Document   : admindashboard
    Created on : 15 Jun, 2022, 1:16:04 PM
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
    <body style="background-color:black"> 
        <h1><p align="center"><font color=red>Customer Dashboard</p></h1>
        <%
            String p=(String)session.getAttribute("cname");
            out.println("<p align=right><font color=red size=5>Welcome&nbsp;"+p);
        %>
        <table class="table table-striped">
            <tr class="text-warning">
                <td><a href="yogaview.jsp">Yoga</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="homeremediesview.jsp">Home Remedies</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="viewshibhir.jsp">View and Enrollment of Shibhir</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="consultdoctor.jsp">Doctor Consultation</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="viewpconsult.jsp">View Doctor Prescription</a></td>
            </tr>
           
            <tr class="text-warning">
                <td><a href="feedback.html">Feedback</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="csignout.jsp">Signout</a></td>
            </tr>
        
        </table>
    </body>
</html>
