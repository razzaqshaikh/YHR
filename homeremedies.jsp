<%-- 
    Document   : yoga
    Created on : 16 Jun, 2022, 12:39:20 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%

    String a="'"+request.getParameter("txtdisease")+"'";
    String b="'"+request.getParameter("txtyoganame")+"'";
    String c="'"+request.getParameter("txtlink")+"'";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
    Statement st=con.createStatement();
    String q="insert into homeremedies(purpose,description,homerlink) values("+a+","+b+","+c+")";
    out.println(q);
    st.executeUpdate(q);
    st.close();
    con.close();
    response.sendRedirect("admindashboard.jsp");

%>