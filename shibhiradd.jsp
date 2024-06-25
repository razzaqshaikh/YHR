<%@page import="java.sql.*" %>
<%
    try
    {
        String a="'"+request.getParameter("txtcity")+"'";
        String b="'"+request.getParameter("txtaddress")+"'";
        String c="'"+request.getParameter("txtfrom")+"'";
        String d="'"+request.getParameter("txtto")+"'";
        String e="'"+request.getParameter("txtsname")+"'";
        String f="'"+request.getParameter("txtp")+"'";
        String g="'"+request.getParameter("txtfees")+"'";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="insert into shibhir(city,address,fromd,tod,sname,participants,fees) values("+a+","+b+","+c+","+d+","+e+","+f+","+g+")";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
       response.sendRedirect("admindashboard.jsp");
    }catch(Exception e){
        out.println(e);
    }





%>
