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
        <h2><p align="center">View Consultation</p></h2>
        <table class="table table-striped">
            <tr><th>Consultation Id<th>Patient Username<th>Symptom<th>Date of Consultation<th>Fees<th>Mode of Payment<th>Transaction ID<th>Doctor Name<th>Prescription
  <%
  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String p="'"+(String)session.getAttribute("cname")+"'";
        String q="select * from consultation where pusername="+p+"";
        
        ResultSet rs=st.executeQuery(q);
        while(rs.next())
        {
            if(rs.getInt(11)!=0){
          out.println("<tr>");
          int pp=rs.getInt(1);
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td>"+rs.getString(4));
          out.println("<td>"+rs.getString(5));
          out.println("<td>"+rs.getString(6));
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          out.println("<td>"+rs.getString(10));
          
          
          
            }
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
        <p align="center"><a href="customerdashboard.jsp" class="btn btn-primary">Dashboard</a></p>
        </body>
</html>