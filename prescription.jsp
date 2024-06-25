<%-- 
    Document   : enrollshibhir
    Created on : 15 Jun, 2022, 5:35:12 PM
    Author     : Rajashri
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%!
    int x=0;
    int cid=0;
   String pname="";
   String symptom="";
   String dateofc="";
   int fees=0;
   String mop="";
   String tid="";
   String dname="";
   String dusername="";
   int cflag=1;
   String ddname="";
   %>
        
<%
    try{
         x=Integer.parseInt(request.getParameter("id"));
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from consultation where cid="+x+"");
        ddname="'"+(String)session.getAttribute("dname")+"'";
        //out.println(cname);
         rs.next();
         pname=rs.getString(2);
         symptom=rs.getString(3);
         dateofc=rs.getString(4);
         fees=rs.getInt(5);
         mop=rs.getString(6);
         tid=rs.getString(7);
         dname=rs.getString(8);
         dusername=rs.getString(9);
        
    }catch(Exception e){
            out.println(e);
    }
%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
        
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        <h2 class="text-primary"><p align="center">Prescription Form</p></h2><br>

  <br>
  
        <form action="prescriptiondone.jsp">
             <div class="form-group" >
      
        
        
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Consultation ID
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Patient Username
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Symptom
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txtcid" value="<%=x%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtmname" value="<%=pname%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txtlname" value="<%=symptom%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
                 <div class="form-group" >
      
        
  
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Date of Consultation
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Fees
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Mode of Payment
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txtdateofc" value="<%=dateofc%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtfees" value="<%=fees%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txtmop" value="<%=mop%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
                 <div class="form-group" >
      
        
  
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Transaction ID
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Doctor Name
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Doctor Username
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txttid" value="<%=tid%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtdname" value="<%=dname%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txt" value="<%=dusername%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
      <div class="row">
          <div class="col-lg-4">
              Prescription :
          </div>
          </div>
      <div class="form-group">
      <div class="row">
          <div class="col-lg-4">
              <textarea class="form-control" placeholder="Enter Prescription" name="txtprescription"></textarea>
          </div>
          </div>
      </div>
     &nbsp;&nbsp;<input type="submit" class="btn btn-primary" value="submit"> &nbsp;&nbsp;<a href="doctordashboard.jsp">Dashboard</a>
        </form>    
   </body>
</html>
