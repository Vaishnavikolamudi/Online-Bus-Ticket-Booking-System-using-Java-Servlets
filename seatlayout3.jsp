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
.style1 {font-size: 18px}
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1 align="center">Welcome User or Guest </h1>
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
    <p align="center">&nbsp;</p>
    <p align="center" class="style1">Your Ticket Details</p>
    <table width="343" border="1" align="center">
      <tr>
        <td>Bus No </td>
        <td><% 	String bbno=(String)session.getAttribute("busid"); out.println(bbno); %></td>
      </tr>
      <tr>
        <td width="168">PNR NO </td>
        <td width="159"><%String pnr=(String) session.getAttribute("pnr"); out.println(pnr); %>&nbsp;</td>
      </tr>
      <tr>
        <td>Date of Journey </td>
        <td><% String doj=(String)session.getAttribute("doj"); out.println(doj);
%></td>
      </tr>
      <tr>
        <td>From</td>
        <td><% 					String ff=(String)session.getAttribute("frm"); out.println(ff); %></td>
      </tr>
      <tr>
        <td>To</td>
        <td><%		String t=(String)session.getAttribute("t"); out.println(t); %></td>
      </tr>
      <tr>
        <td>No of Tickets </td>
        <td><% String not=(String)session.getAttribute("not"); out.println(not); %></td>
      </tr>
      <tr>
        <td>Seat Nos</td>
        <td><% //String seat1=(String)session.getAttribute("seat1"); out.println(seat1+",");
		//String seat2=(String)session.getAttribute("seat2"); out.println(seat2);
		String seat1=(String)session.getAttribute("seats"); out.println(seat1);
				
		try
		{  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
      ResultSet rs,rs1;
	  
	  
	 /*  PreparedStatement pstmt=con.prepareStatement("update busmasterlayout set status='N' where busid=? and seatno=?");   
        	pstmt.setString(1,bbno);
            pstmt.setString(2,seat1);
            pstmt.executeUpdate(); 
              
            
            pstmt.close();  

	   PreparedStatement pstmt1=con.prepareStatement("update busmasterlayout set status='N' where busid=? and seatno=?");   
        	pstmt1.setString(1,bbno);
            pstmt1.setString(2,seat2);
            pstmt1.executeUpdate(); 
              
            
            pstmt1.close();*/  
	  
	  
	    rs=stmt.executeQuery("select * from seatcart");

PreparedStatement pstmt1;
		String sno="";
      while(rs.next())
      {
	  sno=rs.getString(1);
	//  out.println(bbbo+","+sno+"<br>");
	  pstmt1=con.prepareStatement("update busmasterlayout set status='N' where busid=? and seatno=?");   
        	pstmt1.setString(1,bbno);
            pstmt1.setString(2,sno);
            pstmt1.executeUpdate();
			pstmt1.close(); 
				  
		}
		
	  
	  
	  
	  
	  
	  
	  
	  
	  }

 catch(Exception e)
    {
     
    out.println("Exception occured" +e);
    }
     
		
		 %></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">Passenger Details </div></td>
      </tr>
    </table>
    <p align="center" class="style1">&nbsp; </p>
    <p align="center" class="style1">
    
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p align="center">&nbsp;</p>
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
		