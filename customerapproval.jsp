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
            <tr><th>Customer Id<th>Firstname<th>Middlename<th>Lastname<th>Username<th>Address<th>Mobilenumber<th>Aadhar Number<th>Email<th>Fees<th>ModeofPayment<th>TransactionId<th>Approve<th>Reject</tr>
  <%
  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="select * from customer where cflag=0";
        
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
          out.println("<td>"+rs.getString(7));
          out.println("<td>"+rs.getString(8));
          out.println("<td>"+rs.getString(9));
          out.println("<td>"+rs.getString(10));
          out.println("<td>"+rs.getInt(11));
          out.println("<td>"+rs.getString(12));
          out.println("<td>"+rs.getString(13));
          out.println("<td><a href=custapproval.jsp?id="+p+">Approve</a>");
          out.println("<td><a href=rejectapproval.jsp?id="+p+">Reject</a>");
          
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
