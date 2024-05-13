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
			<h2 align="center" class="bigger">Search Buses here........... </h2>
			<form id="form2" name="form2" method="get" action="searchtempuser1.jsp">
			  <table width="51%" border="2" align="center" cellpadding="2" cellspacing="2">
                <caption>
                  Select ur choice
                </caption>
			    <tr>
			      <th colspan="2" scope="col">Date of Journey 
		          <input type="date" name="textfield" required /></th>
		        </tr>
			    <tr>
                  <th scope="col">From</th>
			      <th scope="col">To</th>
		        </tr>
                <tr>
                  <th scope="row"><select name="select">
                      <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
                      <%

try
{

/*	String uname=request.getParameter("textfield22");
	String pword=request.getParameter("textfield2");
	String grp=request.getParameter("group");

	
	uname.trim();
	pword.trim();
	grp.trim(); */
	
	
//	out.println("test0");
    //Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection(  
//"jdbc:mysql://localhost:3306/bus","root","mysql"); 
Connection conn=dbconnection.getConnection();


		ResultSet rs,rs1;
		
		Statement st=conn.createStatement();
		
		String sql="select distinct(froms) from busmaster"; 
			rs=st.executeQuery(sql);
			int found=0;
			while(rs.next())
			{
				String mfrom=rs.getString("froms").trim();
//				String mto=rs.getString("too").trim();
	
		%>
                      <option value="<% out.println(mfrom); %>">
                        <% out.println(mfrom); %>
                    </option>
                      <% }
		rs.close();
		 %>
                    </select>                  </th>
                  <td><div align="center">
                      <select name="select2">
                        <%
	 sql="select distinct(too) from busmaster"; 
			rs1=st.executeQuery(sql);
			//int found=0;
			while(rs1.next())
			{
	//			String mfrom=rs.getString("froms").trim();
				String mto=rs1.getString("too").trim();
	
		%>
                        <option value="<% out.println(mto); %>">
                          <% out.println(mto); %>
                        </option>
                        <% }
		rs1.close();
		 %>
                      </select>
                  </div></td>
                </tr>
                <tr>
                  <th colspan="2" scope="row"><input type="submit" name="Submit" value="Confirm" /></th>
                </tr>
              </table>
          </form>
</div>
</body>
</html>

		<%
}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>