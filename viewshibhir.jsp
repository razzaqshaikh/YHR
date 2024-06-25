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
        <h2><p align="center">Enroll Shibhir</p></h2>
        <table class="table table-striped">
            <tr><th>Shibhir Id<th>City<th>Address<th>From Date<th>To Date<th>Shibhir Name<th>Participants<th>Fees<th>Enroll</tr>
  <%
  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="select * from shibhir";
        
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
        <p align="center"><a href="customerdashboard.jsp" class="btn btn-primary">Dashboard</a></p>
        </body>
</html>