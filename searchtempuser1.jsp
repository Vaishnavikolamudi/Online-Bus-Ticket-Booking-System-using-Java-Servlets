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
.style27 {font-size: 36px}
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
		<div align="center">
		  <%@ page import ="java.io.*,java.sql.*,java.util.*"%>

		  <%

try
{


	String dt=request.getParameter("textfield").trim();
	String mfrom=request.getParameter("select").trim();
	String mto=request.getParameter("select2").trim();
	out.println(dt);  Connection con=dbconnection.getConnection();Statement st;
		      st=con.createStatement();
		ResultSet rs;
		ResultSetMetaData rmd;
		String sql="select Busid,BName as BusName,froms as Source,too as Destination,DeptTime,Dist,Fare,Available,Doj as DateofJourney from busmaster where froms ="+"'"+mfrom+"'"+" and too ="+"'"+mto+"'"+ " AND DOJ ="+"'"+dt+"'";
	//	out.println(sql);
			rs=st.executeQuery(sql);	
		
       
        
       
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
	/*	out.println("<html><body bgcolor=cyan><h1 align=center>BellMonte Devlopers and Builders <Br></h1>");
		 
        
        out.print("<h3><p align=center> On Going Projects Listings or Information</p>");*/
        out.println("<p align=center><table border=2 bordercolor=blue width =75% cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
		String busno="",fare="",doj="",frm="",t="";
		
        while(rs.next())
         {
		 	fare=rs.getString(7);
		 	busno=rs.getString(1);
		 	doj=rs.getString(9);
		 	frm=rs.getString(3);
		 	t=rs.getString(4);
		 	out.println(busno);
                    out.println("<tr>");
                    for(int x=1;x<=n;x++)
                    {
                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
                    }

 out.println("<td><b><a href=seatlayout.jsp?d="+busno+">Book This</b><a/></td>");
                    out.print("</tr>");
					
              }
			  session.setAttribute("fare",fare);
  			  session.setAttribute("doj",doj);
		  	  session.setAttribute("frm",frm);
		  	  session.setAttribute("t",t);
        out.println("</table></body></html>");
		
		//out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%> 
	
</body>
</html>
