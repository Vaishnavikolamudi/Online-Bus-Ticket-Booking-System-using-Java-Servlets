<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Free website template from 4Templates.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
	@import url("layout.css");
.style1 {font-size: 24px}
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1>redbuses.com </h1>
  </div>
	<div id="main-menu">
		<ul>
			<li class="first"><a href="about.html" id="main-menu1" accesskey="1" title="">About</a>			</li>
			<li><a href="signin.jsp" id="main-menu2" accesskey="2" title="">Sign In </a></li>
			<li><a href="signup.jsp" id="main-menu3" accesskey="3" title="">New User ?</a></li>
			<li><a href="searchtemp.jsp" id="main-menu4" accesskey="4" title="">Search your Busses here </a></li>
			<li><a href="contract.jsp" id="main-menu4" accesskey="4" title="">Book for Contract Buses here </a></li>
		</ul>
	</div>
	<div id="content">
	  <div id="right">
		  <form id="form1" name="form1" method="post" action="">
              <p align="center" class="style1">SignUp</p>
              <table width="545" border="0">
                <tr>
                  <td width="233"><img src="registrationcomplete.jpg" width="175" height="227" /></td>
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td>Name</td>
                        <td><input type="text" name="textfield" pattern="[A-Za-z]+" title="Alphabets  only" required></td>
                      </tr>
                      <tr>
                        <td>Gender</td>
                        <td><label>
                          <input name="radiobutton" type="radio" value="Male">
                          M
                          <input name="radiobutton" type="radio" value="Female">
                          F</label></td>
                      </tr>
                      <tr>
                        <td>Mobile No </td>
                        <td><input name="textfield4" type="text" maxlength="10"  title="Must contain at 10 digits" pattern="^\d{10}$" required /></td>
                      </tr>
                      <tr>
                        <td>Email Id </td>
                        <td><input type="email" name="textfield1" id="textfield1" required="required" /></td>
                      </tr>
                      <tr>
                        <td>Password</td>
                        <td><input name="textfield2" type="password" id="textfield2"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required"  /></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2"><label> </label>
                      <div align="center">
                        <input type="submit" name="button" id="button" value="SignUp" />
                        <input type="reset" name="button2" id="button2" value="reset" />
                   <!--   <a href="resetpass.jsp">Forgotpassword?</a></div></td>-->
                </tr>
              </table>
              <p>&nbsp;</p>
            <p>&nbsp;</p>
          </form>
		  <div align="center"><%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.dbconnection"%>
 <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
            <%
   if(request.getParameter("button")!= null)
	{


try
{  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
       	 String t1=request.getParameter("textfield").trim();
		 String t2=request.getParameter("radiobutton").trim();
		 String t3=request.getParameter("textfield4").trim();
	     String t4=request.getParameter("textfield1").trim();
         String t5=request.getParameter("textfield2").trim();
     
       int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from ureg where email="+"'"+t4+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

			 if(count==0)
	  {
       
       
        PreparedStatement pstmt=con.prepareStatement("insert into ureg values(?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
                   pstmt.setString(5,t5);
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
			 PreparedStatement pstmt1=con.prepareStatement("insert into login values(?,?,?)");   
        	pstmt1.setString(1,t4);
            pstmt1.setString(2,t5);
             pstmt1.setString(3,"Guest");
            
             pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  
            con.close(); 
			
   out.println("<h1 align=center >Registered Successfully... </h1>");
    }
	else
		{

		   out.println("<h1 align=center >Sorry, Already Registered... </h1>");
		}
		
	}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	}
%>
	    </div>
		  <h2 align="center" class="bigger">&nbsp;</h2>
	  </div>
	</div>
	<div class="hr1">
		<hr />
	</div>
	<div id="footer">
		<ul>
			<li></li>
		</ul>
  </div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		