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
		<h1>redbuses.com</h1>
</div>
	<div id="main-menu">
		<ul>

<li><a href="userchprofile.jsp" id="main-menu4" accesskey="4" title=""> Edit Profile</a></li>
			<li><a href="searchtempuser.jsp" id="main-menu4" accesskey="4" title=""> Booking</a></li>
			<li><a href="cancel1.jsp" id="main-menu4" accesskey="4" title=""> Cancel Tickets</a></li>
			<li><a href="bookinghistory.jsp" id="main-menu4" accesskey="4" title=""> Booking History</a></li>
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


	
	//String mfrom=request.getParameter("select").trim();
	//String mto=request.getParameter("select2").trim();  
	Connection con=dbconnection.getConnection();Statement st;
		      st=con.createStatement();
		ResultSet rs;
		ResultSetMetaData rmd;
		String sql="select *from booking1"; 
			rs=st.executeQuery(sql);	
		
       
        
       
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
	/*	out.println("<html><body bgcolor=cyan><h1 align=center>BellMonte Devlopers and Builders <Br></h1>");*/
		 
        
        out.print("<h3><p align=center> Booking History</p>");
        out.println("<p align=center><table border=2 bordercolor=blue cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
									String sbid="",sbid1="",stat="";
        while(rs.next())
         {
                    out.println("<tr>");
                    for(int x=1;x<=n;x++)
                    {
						if(x==1)
						{
										sbid=rs.getString(x);
					                    //out.print("<td><b><a href=cancel2.jsp>"+sbid+"</a></b></td>");
					                   out.print("<td><b>"+sbid+"</b></td>");
						}
						else if(x==10)
						{
										sbid1=rs.getString(x);
					                    //out.print("<td><b><a href=cancel2.jsp>"+sbid+"</a></b></td>");
					                   out.print("<td><b>"+sbid1+"</b></td>");
						
						}
						else if(x==11)
						{
										stat=rs.getString(x);

					                   out.print("<td><b>"+stat+"</b></td>");
						
						}
						else
						{
		                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
					}
					
                    }
					if(stat.equals("Cancelled"))
					{
			                     out.print("</tr>");
					}
					else
					{
                  out.print("<td><b><a href=cancel2.jsp?bid="+sbid+"&busno="+sbid1+">Cancel</a></b></td>");
				                     out.print("</tr>");
					
					}
              }
        out.println("</table></body></html>");
		
		//out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%> 
		    
          </div>
		  <p>&nbsp;</p>
</div>
</body>
</html>
