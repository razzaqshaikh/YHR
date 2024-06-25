<%-- 
    Document   : customerlogin
    Created on : 15 Jun, 2022, 1:43:31 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    try
    {
        String a=request.getParameter("txtuser");
        String b=request.getParameter("txtpassword");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="select uname,password,cflag from customer";
        out.println(q);
        ResultSet rs=st.executeQuery(q);
        int flag=0;
        while(rs.next())
        {
            String x=rs.getString(1);
            String y=rs.getString(2);
            int z=rs.getInt(3);
            if(x.equals(a) && y.equals(b) && z!=0)
            {
                flag=1;
                break;
            }
        }
        if(flag==1){
            session.setAttribute("cname",a);
            response.sendRedirect("customerdashboard.jsp");
        }
        else{
            response.sendRedirect("customerlogin.html");
        }
        st.close();
        con.close();
       //response.sendRedirect("customerlogin.html");
    }catch(Exception e){
        out.println(e);
    }




%>
