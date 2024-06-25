<%-- 
    Document   : prescriptiondone
    Created on : 17 Jun, 2022, 8:47:28 AM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try{
         int x=Integer.parseInt(request.getParameter("txtcid"));
        String y="'"+request.getParameter("txtprescription")+"'";
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="update consultation set cflag=1,prescription="+y+" where cid="+x+"";
        //out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
        response.sendRedirect("viewconsultation.jsp");
    }
    catch(Exception e){
        out.println(e);
    }
%>
