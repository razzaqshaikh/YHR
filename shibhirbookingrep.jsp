<%-- 
    Document   : shibhirbookingrep
    Created on : 16 Jun, 2022, 9:14:19 AM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body> <h2><p align="center"><font color="red">Shibhir Booking Report</p></h2>
        <form action="shibhirbookingrep.jsp">
            
            <div class="row">
                <div class="col-lg-4">
                    City
                </div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                    Address
                </div>
            </div>
            
            <div class="row">
                <div class="form-group">
                <div class="col-lg-4">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select distinct(city) from book");
                        out.println("<select name=city class=form-control>");
                        while(rs.next())
                        {
                            out.println("<option >"+rs.getString(1)+"</option>");
                        }
                        out.println("</select>");
        
                    %>
                    </div>
       
                    <div class="col-lg-2"></div>
            
                <div class="col-lg-4">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
                        Statement st1=con1.createStatement();
                        ResultSet rs1=st1.executeQuery("select distinct(address) from book");
                        out.println("<select name=address class=form-control>");
                        while(rs1.next())
                        {
                            out.println("<option >"+rs1.getString(1)+"</option>");
                        }
                        out.println("</select>");
        
                    %>
                    </div>
            </div>
            </div><br><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" value="submit">
        </form>
        <table class="table table-striped">
            <tr><th>Booking Id<th>Firstname<th>Middlename<th>Lastname<th>Aadhar Number<th>Mobile Number<th>City<th>Address<th>From Date<th>To Date<th>Shibhir Name<th>Participants<th>
                    Fees<th>Mode of Payment<th>Transaction Id<th>Date of Payment</tr>
  <%
  try
    {
        
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st2=con2.createStatement();
        String aa="'"+request.getParameter("city")+"'";
        String bb="'"+request.getParameter("address")+"'";
        String q="select * from book where city="+aa+" and address="+bb+"";
        //out.println(q);
        ResultSet rs2=st2.executeQuery(q);
        int amt=0;
        while(rs2.next())
        {
          out.println("<tr>");
          
          out.println("<td>"+rs2.getInt(1));
          out.println("<td>"+rs2.getString(2));
          out.println("<td>"+rs2.getString(3));
          out.println("<td>"+rs2.getString(4));
          out.println("<td>"+rs2.getString(5));
         out.println("<td>"+rs2.getString(6));
          out.println("<td>"+rs2.getString(7));
          out.println("<td>"+rs2.getString(8));
          out.println("<td>"+rs2.getString(9));
          out.println("<td>"+rs2.getString(10));
          out.println("<td>"+rs2.getString(11));
          out.println("<td>"+rs2.getString(12));
          out.println("<td>"+rs2.getString(13));
          out.println("<td>"+rs2.getString(14));
          out.println("<td>"+rs2.getString(15));
          out.println("<td>"+rs2.getString(16));
          int p=rs2.getInt(13);
          amt=amt+p;
          
          
          
        }
        rs2.close();
        st2.close();
        con2.close();
        out.print("<br><br><br><br><font color=red><table  class=table table-striped><tr><td><font color=red>TotalCollection&nbsp;Rs/-:<td><font color=red> "+amt+"</tr></table>");
        
    }catch(Exception e){
        out.println(e);
    }

  
  
  %>
        </table>
        <p align="center"><a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a></p>
    </body>
</html>
