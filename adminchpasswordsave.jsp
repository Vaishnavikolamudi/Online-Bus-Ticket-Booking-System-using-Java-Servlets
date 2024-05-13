<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="dbcon.dbconnection"%>
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
.style2 {font-size: 24px; font-weight: bold; }
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1 align="center">Administrator</h1>
  </div>
	<div id="main-menu">
		<ul>
			<li><a href="adminchpasswordsave.jsp" id="main-menu4" accesskey="4" title="">Edit Profile </a></li>
			<li><a href="newroute.jsp" id="main-menu4" accesskey="4" title="">Route Maintainance </a></li>
			<li><a href="adminsearch.jsp" id="main-menu4" accesskey="4" title="">Search </a></li>
			<li><a href="homepage1.html" id="main-menu4" accesskey="4" title="">SignOut </a></li>
		</ul>
  </div>
  <div id="content">
    <p>&nbsp;</p>
    <p align="center" class="style2">Change Password </p>
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <table width="332" border="1" align="center">
        <tr>
          <td width="155" height="29"><span class="style23"> Old Password </span></td>
          <td width="161"><input name="op" type="password" id="op" required="required"/></td>
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
              <input name="Submit2" type="reset" value="Reset" />
          </span></div></td>
        </tr>
      </table>
    </form>
    <p>&nbsp;</p>
    <p align="center">&nbsp;</p>
    <p align="center">
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
			
    		String sql="select * from login where uname="+"'"+e+"'";
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
</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		