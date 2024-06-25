<%-- 
    Document   : custapproval
    Created on : 15 Jun, 2022, 1:34:16 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        int id=Integer.parseInt(request.getParameter("id"));
        String q="update customer set cflag=1 where custid="+id+"";
        out.println(q);
        st.executeUpdate(q);
        
        st.close();
        con.close();
        
       response.sendRedirect("customerapproval.jsp");
    }catch(Exception e){
        out.println(e);
    }

  
  
  %>