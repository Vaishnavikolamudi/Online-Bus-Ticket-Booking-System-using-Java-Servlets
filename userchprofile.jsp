<%@page import="dbcon.dbconnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style24 {	color: #000000;
	font-weight: bold;
	font-size: 45px;
}
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


			<li><a href="userchprofile.jsp" id="main-menu4" accesskey="4" title=""> Edit Profile</a></li>
			<li><a href="searchtempuser.jsp" id="main-menu4" accesskey="4" title=""> Booking</a></li>
			<li><a href="cancel1.jsp" id="main-menu4" accesskey="4" title=""> Cancel Tickets</a></li>
			<li><a href="bookhistory.jsp" id="main-menu4" accesskey="4" title=""> Booking History</a></li>
			<li><a href="homepage1.html" id="main-menu4" accesskey="4" title=""> SignOut</a></li>

		</ul>
  </div>
	<div id="content">
<div id="right">
			<h2 class="bigger">Change Password </h2>
			<form id="form1" name="form1" method="get" action="">
  <div align="center">
  <table width="332" border="1">
    <tr>
      <td width="155" height="29"><span class="style23"> Old Password </span></td>
      <td width="161"><input name="op" type="password" id="op" required="required"/></td>
      <td width="161" rowspan="4"><img src="pwdchage.jpg" width="219" height="200" /></td>
    </tr>
    <tr>
      <td><span class="style23">New Password </span></td>
      <td><input name="np" type="password" id="np" required="required"/></td>
      </tr>
    <tr>
      <td><span class="style23">Confirm Password </span></td>
      <td><input name="cp" type="password" id="cp" required="required"/></td>
      </tr>
    
    <tr>
      <td height="41"><div align="center" class="style21"><span class="style19">
          <input name="Submit" type="submit" class="style19" value="Submit" />
      </span></div></td>
      <td><div align="center"><span class="style1">
          <input name="Submit2" type="reset" class="style1" value="Reset" />
      </span></div></td>
      </tr>
  </table>
</div>
</form>
            <div align="center">
              <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
              <%
			  if(request.getParameter("Submit")!= null)
	{
		try
		{

	
				String op=request.getParameter("op");
				String np=request.getParameter("np");
				String cp=request.getParameter("cp");  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
      ResultSet rs,rs1;
		//	ResultSet rs;
			ResultSetMetaData rmd;
		
			Statement st=con.createStatement();
			
			
			
    		String e=(String) session.getAttribute("email");
			
    		String sql="select * from ureg where email="+"'"+e+"'";
			rs=st.executeQuery(sql);
			int found=0;
		//	String mop="",muname="";
			while(rs.next())
			{
				
			 	//mop=rs.getString("pwd").trim();				
			 //	muname=rs.getString("email").trim();				
			
				//if(mop.equals(op) && username.equals(muname)) 
				//{
					found=1;
				//	break;
				//}	
			
			}
			
						
			
			if (np.equals(cp) && found==1)
			{
				
			  PreparedStatement pstmt1=con.prepareStatement("update ureg set pwd= ?  where email=?");
			  pstmt1.setString(1,np);
			  pstmt1.setString(2,e);	 
			  pstmt1.executeUpdate();
			  
			   PreparedStatement pstmt2=con.prepareStatement("update login set pwd= ?  where uname=?");
			  pstmt2.setString(1,np);
			  pstmt2.setString(2,e);	 
			  pstmt2.executeUpdate();
			  out.println("<h1 align=center> Updated Sucessfully</h1>");

//out.println("<h2 align=center><a href=http://localhost:8080/bus/userhome.html>Back</a></h2>");	
			}
			
			else
			{
			out.println("<h1 align=center> Invalid Password Try again</h1>");

			//out.println("<h2 align=center><a href=http://localhost:8080/bus/chprofile.html>Back</a></h2>");	
			
					
			}		
							
			
			
		
		}
		catch(Exception e)
		{
			out.println(e);	
		}

		}
%>
              
              
              
            </div>
</div>
</body>
</html>

		