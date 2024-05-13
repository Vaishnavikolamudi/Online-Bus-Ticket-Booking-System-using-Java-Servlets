<%

   Cookie cookies1[] = request.getCookies();
    		Cookie cookie1;
    		String mbusid="";
    		for(int i=0;i<cookies1.length;i++)
    		{
		      cookie1 = cookies1[i];
			     if(cookie1.getName().equals("busid"))
			{
				mbusid= cookies1[i].getValue();
             			 }
		}	
		


%>
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
		<h1><span class="style24">Red Bus</span></h1>
</div>
	<div id="main-menu">
		<ul>
			<li class="first"></li>
			<li><a href="admin.html" id="main-menu2" accesskey="2" title="">Back</a></li>
		</ul>
  </div>
	<div id="content">
		<div id="right">
		<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%

try
{

	
	String matime=request.getParameter("textfield").trim();
	String mdtime=request.getParameter("textfield2").trim();
	String mfare=request.getParameter("textfield3").trim();
	
		//out.println(mbid);	
		Connection con;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:bus","bus","bus");                                   

		Statement st;
		      st=con.createStatement();
		ResultSet rs;

		PreparedStatement pstmt1,pstmt2,pstmt3;
pstmt1=con.prepareStatement("update busmaster set ARRTIME=?,DEPTTIME=?,Fare=? where busid =?");
		pstmt1.setString(1,matime);
			pstmt1.setString(2,mdtime);
			pstmt1.setString(3,mfare);
			pstmt1.setString(4,mbusid);
			


					
			pstmt1.executeUpdate();
			
/*			pstmt2=con.prepareStatement("update busmaster set available=available+? where busid =?");
		pstmt2.setString(1,mnot);
			pstmt2.setString(2,mbid);


					
			pstmt2.executeUpdate();

			pstmt3=con.prepareStatement("delete from booking  where bid =?");

			pstmt3.setString(1,mbid);

			pstmt3.executeUpdate();*/

		out.println("<h1 align=center> Editing  completed Sucessfully</h1>");
      
	      
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
