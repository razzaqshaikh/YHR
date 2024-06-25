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
        String d="'"+request.getParameter("txtano")+"'";
        String e="'"+request.getParameter("txtmno")+"'";
        String f="'"+request.getParameter("txtcity")+"'";
        String g="'"+request.getParameter("txtaddress")+"'";
        String h="'"+request.getParameter("txtfromd")+"'";
        String i="'"+request.getParameter("txttod")+"'";
        String j="'"+request.getParameter("txtsname")+"'";
        int k=Integer.parseInt(request.getParameter("txtparticipants"));
        int l=Integer.parseInt(request.getParameter("txtfees"));
        String m="'"+request.getParameter("txtmop")+"'";
        String n="'"+request.getParameter("txttid")+"'";
        String o="'"+request.getParameter("txtdateofp")+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="insert into book(fname,mname,lname,ano,mno,city,address,fromd,tod,sname,participants,fees,mop,tid,dateofp) values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+h+","+i+","+j+","+k+","+l+","+m+","+n+","+o+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
       response.sendRedirect("customerdashboard.jsp");
    }catch(Exception e){
        out.println(e);
    }





%>
