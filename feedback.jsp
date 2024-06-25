<%-- 
    Document   : feedback
    Created on : 16 Jun, 2022, 1:33:42 PM
    Author     : Rajashri
--%>

<%-- 
    Document   : yoga
    Created on : 16 Jun, 2022, 12:39:20 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
    String cname="";
    String name="";
%>
<%

    String a="'"+request.getParameter("txtdesc")+"'";
    int b=Integer.parseInt(request.getParameter("txtrating"));
     cname="'"+(String)session.getAttribute("cname")+"'";
    out.println(a+" "+ b+" "+cname);
       
%>
<%
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
    Statement st=con.createStatement();
    String q="select fname,mname,lname from customer where uname="+cname+" ";
    ResultSet rs=st.executeQuery(q);
    rs.next();
    name=rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3); 
    out.println(name);
    name="'"+name+"'";
    String q1="insert into feedback(description,rating,username,fullname)values("+a+","+b+","+cname+","+name+" )";
    out.println(q1);
    st.executeUpdate(q1);
    st.close();
    con.close();
    response.sendRedirect("customerdashboard.jsp");
    
%>