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
        int j=Integer.parseInt(request.getParameter("txtreg"));
        String k="'"+request.getParameter("txtmop")+"'";
        String l="'"+request.getParameter("txttid")+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="insert into customer(fname,mname,lname,uname,password,address,mno,ano,email,fees,mop,tid,cflag) values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+h+","+i+","+j+","+k+","+l+",0)";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
       response.sendRedirect("customerlogin.html");
    }catch(Exception e){
        out.println(e);
    }





%>
