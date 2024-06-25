<%-- 
    Document   : customerreg
    Created on : 15 Jun, 2022, 12:52:04 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>
<%
    try
    {
        String a="'"+request.getParameter("txtuname")+"'";
        String b="'"+request.getParameter("txtsymptoms")+"'";
        String c="'"+request.getParameter("txtcdate")+"'";
        int d=Integer.parseInt(request.getParameter("txtfees"));
        String e="'"+request.getParameter("txtmop")+"'";
        String f="'"+request.getParameter("txttransactionid")+"'";
        String g="'"+request.getParameter("txtdname")+"'";
        String h="'"+""+"'";
        String ii=request.getParameter("txtdname");
        int jj=0;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String cname="";
        StringTokenizer stk=new StringTokenizer(ii);
        int i=0;
        while(stk.hasMoreTokens())
        {
            if(i==3)
               break;
            cname=stk.nextToken();
            i++;
        }
        
        cname="'"+cname+"'";
        out.println(cname);
        Statement st1=con.createStatement();
        String q1="select uname from doctor where lname="+cname+"";
        ResultSet rs=st1.executeQuery(q1);
        out.println(q1);
        rs.next();
        String ccname="'"+rs.getString(1)+"'";
        String q="insert into consultation(pusername,symptom,dateofc,fees,mop,tid,dname,dusername,prescription,cflag) values("+a+","+b+","+c+","+d+","+e+","+f+","+g+","+ccname+","+h+",0 )";
        out.println(q);
        st.executeUpdate(q);
        st.close();
        con.close();
       response.sendRedirect("customerdashboard.jsp");
    }catch(Exception e){
        out.println(e);
    }





%>
