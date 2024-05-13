<%@page import="dbcon.dbconnection"%>
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
              <p align="center"><span class="style1">Contract Buses Booking </span></p>
              <table width="562" border="1">
                <tr>
                  <td width="234"><img src="images/login_icon.gif" width="204" height="129" /></td>
                  <td width="312" colspan="2"><table width="100%" border="1">
                    <caption>
                      Your Requirements
                    </caption>
                    <tr>
                      <td width="69%">From</td>
                      <td width="31%"><select name="t1" id="t1">
                        <option value="Bengaluru">Bengaluru</option>
                        <option value="Chennai">Chennai</option>
                      </select>
                      </td>
                    </tr>
                    <tr>
                      <td>To</td>
                      <td><select name="t2" id="t2">
                        <option value="Bengaluru">Bengaluru</option>
                        <option value="Chennai">Chennai</option>
                      </select></td>
                    </tr>
                    <tr>
                      <td>Date of Travel </td>
                      <td><input name="t3" type="date" id="t3"></td>
                    </tr>
                    <tr>
                      <td>Date of Return </td>
                      <td><input name="t4" type="date" id="t4"></td>
                    </tr>
                    <tr>
                      <td>Approxminate Kms. </td>
                      <td><select name="t5" id="t5">
                        <option value="&lt;250">&lt;250</option>
                        <option value="250-500">250-500</option>
                        <option value="500-1000">500-1000</option>
                      </select>
                      </td>
                    </tr>
                    <tr>
                      <td>Mobile No </td>
                      <td><input name="t6" type="text" id="t6" maxlength="10"></td>
                    </tr>
                    <tr>
                      <td>Name</td>
                      <td><input name="t7" type="text" id="t7"></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="3"><label></label>
                    <div align="center">
                      <input type="submit" name="button" id="button" value="Submit" />
                      <input type="reset" name="button2" id="button2" value="reset" />                    
                    <a href="resetpass.jsp"></a></div></td>
                </tr>
              </table>
            <p>&nbsp;</p>
        <p align="center"><span class="col-lg-8 col-lg-offset-2">
                  </span></p>
        </form>
		<%@ page import="java.io.*,java.sql.*,java.util.*,java.util.Properties,java.util.Date,java.net.InetAddress,javax.mail.*,javax.mail.internet.*,javax.activation.*"%>

<%
if(request.getParameter("button")!= null)
	{

try
{


	
	String t1=request.getParameter("t1");
	String t2=request.getParameter("t2");
	String t3=request.getParameter("t3");
	String t4=request.getParameter("t4");
	String t5=request.getParameter("t5");
	String t6=request.getParameter("t6");
	String t7=request.getParameter("t7");
	
	
    //Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection(  
//"jdbc:mysql://localhost:3306/bus","root","mysql"); 
Connection conn=dbconnection.getConnection();

		ResultSet rs;
		
		

Statement st=conn.createStatement();
		
			

	
		PreparedStatement pstmt;
			 
			 

		pstmt=conn.prepareStatement("insert into contract values(?,?,?,?,?,?,?)");
				
			
			pstmt.setString(1,t1);
			pstmt.setString(2,t2);
			pstmt.setString(3,t3);
			pstmt.setString(4,t4);
			pstmt.setString(5,t5);
			pstmt.setString(6,t6);
			pstmt.setString(7,t7);

					
			pstmt.executeUpdate();



		out.println("<h1 align=center> Submitted Sucessfully</h1>");


			



}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
			 }
            
%>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
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
		