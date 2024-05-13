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
    <p align="center" class="style1">Selected Seat </p>
    <p align="center" class="style1">
      <%

try
{


	//String dt=request.getParameter("textfield").trim();
//	String mfrom=request.getParameter("select").trim();
//	String mto=request.getParameter("select2").trim();  
Connection con=dbconnection.getConnection();Statement st;
		      st=con.createStatement();
		ResultSet rs;
		ResultSetMetaData rmd;
		String sql="select * from seatcart ";
	out.println(sql);
			rs=st.executeQuery(sql);	
		
       
        
       
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
	/*	out.println("<html><body bgcolor=cyan><h1 align=center>BellMonte Devlopers and Builders <Br></h1>");
		 
        
        out.print("<h3><p align=center> On Going Projects Listings or Information</p>");*/
        out.println("<p align=center><table align=center border=2 bordercolor=blue cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
		
		int x=0;
        while(rs.next())
         {
		 			
                    out.println("<tr>");
                    for( x=1;x<=n;x++)
                    {
                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
										
					
                    }

                    out.print("</tr>");
              }
        out.println("</table></body></html>");
	//	out.println(seats);
		//session.setAttribute("seats",seats);
		//out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%>
    </p>
    <p align="center" class="style1">
	<%
	
	
			try
			{
			
			
			
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bus","root","mysql"); 

		ResultSet rs;
		
		

Statement st=conn.createStatement();
			
			String s=request.getParameter("tkt");
			
		//	out.println(s);
			
			PreparedStatement pstmt;
			 
			 

		pstmt=conn.prepareStatement("insert into seatcart values(?)");
				
			
			pstmt.setString(1,s);

					
			pstmt.executeUpdate();
			pstmt.close();

			String bno=(String)session.getAttribute("busid");

//			out.println("<a href=seatlayout.jsp?d="+bno+">Back to Seat Layout</a>");
			response.sendRedirect("seatlayout.jsp?d="+bno);
			}
			catch(Exception ex)
			{
						out.println(ex);
			}
	
	 %>&nbsp;</p>
    <p align="center" class="style1"><a href="seatlayout.jsp"></a> </p>
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
		