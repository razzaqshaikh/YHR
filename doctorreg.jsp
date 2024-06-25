<%-- 
    Document   : customerreg
    Created on : 15 Jun, 2022, 12:52:04 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String a="'"+request.getParameter("txtfname")+"'";
        String b="'"+request.getParameter("txtmname")+"'";
        String c="'"+request.getParameter("txtlname")+"'";
        String d="'"+request.getParameter("txtusername")+"'";
        String e="'"+request.getParameter("txtpassword")+"'";
        String f="'"+request.getParameter("txtaddress")+"'";
        String g="'"+request.getParameter("txtmobilenumber")+"'";
        String h="'"+request.getParameter("txtadhaar")+"'";
        String i="'"+request.getParameter("txtemail")+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="insert into doctor(fname,mname,lname,uname,password,address,mno,ano,email) values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+h+","+i+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
       response.sendRedirect("doctorlogin.html");
    }catch(Exception e){
        out.println(e);
    }





%>
