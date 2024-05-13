
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
		<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%

try
{

	
	String mbid=request.getParameter("bid").trim();
	String busno=request.getParameter("busno").trim();
		out.println(mbid);  Connection con=dbconnection.getConnection();Statement st;
		      st=con.createStatement();
			          PreparedStatement pstmt1,pstmt2,pstmt3;
		ResultSet rs;
String sets="";

		String sql="select * from booking1 where bid="+"'"+mbid+"'";
			rs=st.executeQuery(sql);	

 	while(rs.next())
			{
					sets=rs.getString("seats");
	
			}
			
//out.println(sets);
String [] st1=new String[2];
int j=0;
StringTokenizer st2=new StringTokenizer(sets,",");
while (st2.hasMoreTokens())
{
		st1[j]=st2.nextToken();
		j++;
}
out.println(st1[0]);
out.println(st1[1]);


String j1="";
j1=j1.valueOf(j);

		pstmt1=con.prepareStatement("update busmasterlayout set status='A' where busid =?");

			pstmt1.setString(1,busno);
			
			pstmt1.executeUpdate();

			

/*			pstmt3=con.prepareStatement("delete from booking1  where bid =?");

			pstmt3.setString(1,mbid);

			pstmt3.executeUpdate(); */




			pstmt3=con.prepareStatement("delete from booking2  where bid =?");

			pstmt3.setString(1,mbid);

			pstmt3.executeUpdate();


PreparedStatement pstmt4=con.prepareStatement("update busmaster set booked=booked-?,available=available+? where busid=?");   

			pstmt4.setString(1,j1);pstmt4.setString(2,j1);pstmt4.setString(3,busno);
			
            
             pstmt4.executeUpdate(); 
                    
            
            pstmt4.close();  




		out.println("<h1 align=center> cacncellation completed Sucessfully</h1>");
      
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%> 

<p>&nbsp;</p>
		</div>
</body>
</html>
