<%-- 
    Document   : enrollshibhir
    Created on : 15 Jun, 2022, 5:35:12 PM
    Author     : Rajashri
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%!
    int x=0;
   String cname="";
   String city="";
   String address="";
   String fromd="";
   String tod="";
   String sname="";
   String participants="";
   int fees=0;
   String fname="";
   String mname="";
   String lname="";
   String ano="";
   String mno="";
   %>
        
<%
    try{
         x=Integer.parseInt(request.getParameter("id"));
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from shibhir where shibhirid="+x+"");
        cname="'"+(String)session.getAttribute("cname")+"'";
        //out.println(cname);
         rs.next();
         city=rs.getString(2);
         address=rs.getString(3);
         fromd=rs.getString(4);
         tod=rs.getString(5);
         sname=rs.getString(6);
         participants=rs.getString(7);
         fees=rs.getInt(8);
        
    }catch(Exception e){
            out.println(e);
    }
%> 
<%
    try{
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st1=con1.createStatement();
        
        ResultSet rs1=st1.executeQuery("select fname,mname,lname,ano,mno from customer where uname="+cname+"");

         rs1.next();
         fname=rs1.getString("fname");
         mname=rs1.getString("mname");
         lname=rs1.getString("lname");
         ano=rs1.getString("ano");
         mno=rs1.getString("mno");
         
         
        
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
        
        <h2 class="text-primary"><p align="center">Shibhir Booking Form</p></h2><br>
  <marquee behavior="alternate"><font color=red size=5>Phone pe,Gpay and Paytm payment for registration available on 8317062809</font></marquee>
  <br>
  
        <form action="enrollshibhirdone.jsp">
             <div class="form-group" >
      
        
        <label for="email" class="text-warning">Fullname:</label><br>
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Firstname
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Middlename
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Lastname
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txtfname" value="<%=fname%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtmname" value="<%=mname%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txtlname" value="<%=lname%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
                 <div class="form-group" >
      
        
  
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Aadhar Number
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Mobile Number
          </div>
          <div class="col-lg-4">
            <span class="text-warning">City
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txtano" value="<%=ano%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtmno" value="<%=mno%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txtcity" value="<%=city%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
                 <div class="form-group" >
      
        
  
        <div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Address
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Start Date
          </div>
          <div class="col-lg-4">
            <span class="text-warning">End Date
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txtaddress" value="<%=address%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtfromd" value="<%=fromd%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txttod" value="<%=tod%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
<div class="row">
          <div class="col-lg-4"><span class="text-warning">
            Shibhir Name
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Participant Remaining
          </div>
          <div class="col-lg-4">
            <span class="text-warning">Fees
          </div>
        </div>
  <div class="row">
      <div class="col-lg-4">

          <input type="text" class="form-control" id="email" placeholder="Enter Firstname" name="txtsname" value="<%=sname%>" readonly>
      <p id="a"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Middlename" name="txtparticipants" value="<%=participants%>" readonly>
      <p id="b"></p>
  </div>
  <div class="col-lg-4">
      <input type="text" class="form-control" id="email" placeholder="Enter Lastname" name="txtfees" value="<%=fees%>" readonly>
      <p id="c"></p>
  </div>
    </div>
</div>
<div class="row">
      <div class="col-lg-4">
          <span class="text-warning">Mode of Payment</span>
      </div>
      <div class="col-lg-4">
          <span class="text-warning">Transaction ID</span>
      </div>
     <div class="col-lg-4">
          <span class="text-warning">Date of Payment</span>
      </div>

    </div>
    <div class="row">

      
      
      
      
    

    
      
        <div class="col-lg-4">
 
    
    <select name="txtmop" class="form-control">
      <option>Phone Pe</option>
      <option>Gpay</option>
      <option >Paytm</option>
    </select>
 
      <p id="ee"></p>
  

    </div>

    
  
        <div class="col-lg-4">
      <input type="text" class="form-control" id="pwd" placeholder="Enter Transaction ID" name="txttid">
      <p id="ff"></p>
  

    </div>
        <div class="col-lg-4">
      <input type="date" class="form-control" id="pwd" placeholder="Enter Transaction ID" name="txtdateofp">
      <p id="ff"></p>
  

    </div>
        
  </div>
        </div>
     &nbsp;&nbsp;<input type="submit" class="btn btn-primary" value="submit"> &nbsp;&nbsp;<a href="customerdashboard.jsp">Dashboard</a>
        </form>    
   </body>
</html>
