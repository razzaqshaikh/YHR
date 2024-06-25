<%-- 
    Document   : dforgotpassword
    Created on : 17 Jun, 2022, 9:23:33 AM
    Author     : Rajashri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!--

<?php 
	
	$a="'".$_REQUEST['txtuname']."'";
	#$b="'".$_REQUEST['txtmno']."'";
	$c="'".$_REQUEST['txtpwd']."'";
	$d="'".$_REQUEST['txtcpwd']."'";
	//echo "$a $b $c $d";
	$connect=mysqli_connect("localhost","root","","project") or die("Connection Failed");
	$query="update cregistration set password=$c where uname=".$a."";
	//echo $query;

	$rs=mysqli_query($connect,$query);
	mysqli_close($connect);
	//echo "<br>";
	//print_r($rs);
if($rs){
		echo "<font face=arial color=red size=10>Password Changed !!!<br>Wait a while you will be redirected soon to Login Page.";
	?>	
	<script>
  setTimeout(function() {
      document.location = "candidatelogin.html";
  }, 4000); // <-- this is the delay in milliseconds
</script>
<?php 

}
if(!$rs)
{
	echo "Failed";
	echo "<br><a href=customerlogin.html class=btn btn-primary>Back</a>";
}
?>

-->
<%

  try
    {
        
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yhr","root","");
        Statement st=con.createStatement();
        String a="'"+request.getParameter("txtuname")+"'";
        String b="'"+request.getParameter("txtmno")+"'";
        String c="'"+request.getParameter("txtpwd")+"'";
        String q="update admin set password="+c+" where uname="+a+" and mno="+b+"";
        int x=st.executeUpdate(q);
        
        //out.println(x);
        st.close();
        con.close();
        if(x==0){
            out.println("<font color=red size=10>Failed to update password.<br>Consult Admin on call in Footer section.");
            out.println("<br><a href=adminlogin.html class=btn btn-primary>Back</a>");
        }
        else
        {
            out.println("<font color=red size=10>Congratulations!!!! Password Changed.");
            out.println("<br><a href=adminlogin.html class=btn btn-primary>Back</a>");
        
        }
    }
  catch(Exception e){
      out.println(e);
  }
%>