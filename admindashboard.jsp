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
        <h1><p align="center"><font color=red>Admin Dashboard</p></h1>
        <%
            String p=(String)session.getAttribute("aname");
            out.println("<p align=right><font color=red size=5>Welcome&nbsp;"+p);
        %>
        <table class="table table-striped">
            <tr class="text-warning">
                <td><a href="yoga.html">Add Yoga Youtube Links</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="homeremedies.html">Add HomeRemedy Youtube Links</a></td>
            </tr>
           
            <tr class="text-warning">
                <td><a href="customerapproval.jsp">Customer Approval</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="shibhiradd.html">Add New Shibhir</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="doctorreg.html">Add New Doctor</a></td>
            </tr>
            
            
            <tr class="text-warning">
                <td><a href="shibhirbookingrep.jsp">Shibhir Report</a></td>
            </tr>
                      <tr class="text-warning">
                <td><a href="shibhirdatewiserep.jsp">Date-wise Shibhir Report</a></td>
            </tr>
  
              <tr class="text-warning">
                <td><a href="ayogaview.jsp">Yoga Links Report</a></td>
            </tr>
              <tr class="text-warning">
                <td><a href="ahomeremediesview.jsp">HomeRemedy Links Report</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="doctorwiserep.jsp">Doctor Wise Report</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="symptomwiserep.jsp">Symptom Wise Report</a></td>
            </tr>
            <tr class="text-warning">
                <td><a href="consultationrep.jsp">Consultation Report</a></td>
            </tr>
              
                <tr class="text-warning">
                <td><a href="viewfeedback.jsp">View Customer Feedback</a></td>
            </tr>
            </tr>
                <tr class="text-warning">
                <td><a href="asignout.jsp">Signout</a></td>
            </tr>
        </table>
    </body>
</html>
