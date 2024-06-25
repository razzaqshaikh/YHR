<%-- 
    Document   : customerapproval
    Created on : 15 Jun, 2022, 1:21:58 PM
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
    <body>
        <table class="table table-striped">
            <tr><th>Yoga Id<th>Disease Name<th>Yoga Type<th>Youtube Link</tr>
  <%
  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="select * from yoga";
        
        ResultSet rs=st.executeQuery(q);
        while(rs.next())
        {
          out.println("<tr>");
          
          out.println("<td>"+rs.getInt(1));
          out.println("<td>"+rs.getString(2));
          out.println("<td>"+rs.getString(3));
          out.println("<td><a href="+rs.getString(4)+" target=__blank>"+rs.getString(3)+"</a>");
          
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
        <p align="center"><a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a></p>
        </body>
</html>
