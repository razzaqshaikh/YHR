<%-- 
    Document   : doctorconsultview
    Created on : 17 Jun, 2022, 8:18:15 AM
    Author     : Rajashri
--%>


<%-- 
    Document   : viewshibhir
    Created on : 15 Jun, 2022, 5:11:41 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
    <body style="background-color: black;"><font color="blue">
        <h2><p align="center">Doctor Prescription Page</p></h2>
        <table class="table table-striped">
            <tr><th>Consultation Id<th>Patient Username<th>Symptom Description<th>Date and Time<th>fees<th>Mode of Payment<th>Transaction ID<th>Doctor Name<th>Doctor Username<th>Prescription</tr>
  <%
  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        
        
        ResultSet rs=st.executeQuery(q);
        while(rs.next())
        {
          out.println("<tr>");
          int p=rs.getInt(1);
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getString(4));
          out.println("<td>"+rs.getString(5));
          out.println("<td>"+rs.getString(6));
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          
          out.println("<td><a href=enrollshibhir.jsp?id="+p+">Enroll</a>");
          
          
        }
        rs.close();
        st.close();
        con.close();
        
       //response.sendRedirect("customerlogin.html");
    }catch(Exception e){
        out.println(e);
    }

  
  
  %>
        </table>
        <p align="center"><a href="doctordashboard.jsp" class="btn btn-primary">Dashboard</a></p>
        </body>
</html>