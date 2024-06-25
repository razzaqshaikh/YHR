<%-- 
    Document   : consultdoctor
    Created on : 16 Jun, 2022, 9:49:26 PM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!
    
    
    String cname="";
%>
<%

cname=(String)session.getAttribute("cname");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
<h2><p align="center"><font color="red">Consult Doctor Form</font></p></h2>
<marquee behavior="alternate"><font color=red size=5>Phone pe,Gpay and Paytm payment for registration available on 8317062809</font></marquee>
  <br>
  <form action="consultdoctordone.jsp">
      <div class="form-group" >
      
        
        
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Patient Username
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Symptoms
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Date of Consultation
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email"  name="txtuname" value="<%=cname%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <textarea class="form-control" id="email" placeholder="Enter Symptoms" name="txtsymptoms"></textarea>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txtcdate" value="<%=new java.util.Date()%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
<div class="row">
          <div class="col-lg-4">
            <span class="text-warning">Fees
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Mode of Payment
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Transaction ID
          </div>
        </div>
<div class="row">

      
      
        <div class="col-lg-4">
            <input type="text" class="form-control" id="pwd" placeholder="" name="txtfees" value="200" readonly>
      <p id="d"></p>

  </div>
    

    
      
        <div class="col-lg-4">
      <select name="txtmop" class="form-control">
      <option>Phone Pe</option>
      <option>Gpay</option>
      <option >Paytm</option>
    </select>
      <p id="e"></p>
  

    </div>

    
  
        <div class="col-lg-4">
      <input type="text" class="form-control" id="pwd" placeholder="Enter Transaction ID" name="txttransactionid">
      <p id="f"></p>
  

    </div>
  </div>
    
          
   <div class="row">
          <div class="col-lg-4">
            <span class="text-warning">Doctor Name
          </div>
          
        </div>
      <div class="form-group">
      <div class="row">
        <div class="col-lg-4">
            <select name="txtdname" class="form-control">
        <%
    try
    {
        String a=request.getParameter("txtuser");
        String b=request.getParameter("txtpassword");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String q="select fname,mname,lname from doctor";
        out.println(q);
        ResultSet rs=st.executeQuery(q);
        String name="Dr.";
        while(rs.next()){
            name=name+rs.getString(1)+" ";
            name=name+rs.getString(2)+" ";
            name=name+rs.getString(3)+" ";
            out.println("<option>"+name+"</option>");
            name="";
            name="Dr.";
        }
          rs.close();
        st.close();
        con.close();
      
    }
        catch(Exception e){}
            
                    %>
                    </select>
      <p id="h"></p>
  </div>
  
  
  
  
        
      </div>
      </div>
  
      
  
        
    
      <button type="submit" class="btn btn-primary">Submit</button>&nbsp;&nbsp;&nbsp;<a href="customerdashboard.jsp" class="btn btn-primary">Dashboard</a>
  </form>
</div>

    </body>
</html>
