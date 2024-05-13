<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.dbconnection"%>
 <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
body {
	background-color: #FFFFFF;
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
			<li><a href="adminchpasswordsave.jsp" id="main-menu4" accesskey="4" title="">Edit Profile </a></li>
			<li><a href="newroute.jsp" id="main-menu4" accesskey="4" title="">Route Maintainance </a></li>
			<li><a href="adminsearch.jsp" id="main-menu4" accesskey="4" title="">Search </a></li>
			<li><a href="homepage1.html" id="main-menu4" accesskey="4" title="">SignOut </a></li>
		</ul>
  </div>
	<div id="content">
<div id="right">
	<h2 align="center" class="bigger">New Route   Registration : </h2>
			<form id="form1" name="form1" method="get" action="newroute.jsp">
  <div align="center">
  <table width="470" border="1">
    <tr>
      <td height="29">Bus No </td>
      <td><input type="text" id="bookname5" name="textfield11" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
{  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from busmaster ");
	      int count=1;
      while(rs.next())
      {
			count++;
				  
		}
		
		String s="";
		s=s.valueOf(count);
  		out.println(s.trim());
		  }

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }%>"/></td>
      <td width="149" rowspan="11"><div align="center"><img src="images/stock-vector-vector-register-icon-80961514.jpg" alt="" width="134" height="162" class="img1" /></div></td>
    </tr>
    <tr>
      <td width="143" height="29">Bus Name </td>
      <td width="156"><input name="bname" type="text" id="bname" required="required"/></td>
      </tr>
    <tr>
      <td>From </td>
      <td><input name="fromm" type="text" id="fromm" required="required"/></td>
      </tr>
    <tr>
      <td><span class="style23">To </span></td>
      <td><input name="too" type="text" id="too" required="required"/></td>
      </tr>
    <tr>
      <td><span class="style23">Dep Time </span></td>
      <td><input name="dtime" type="time" id="dtime" required="required"/></td>
      </tr>
    <tr>
      <td><span class="style23">Arr Time </span></td>
      <td><input name="atime" type="time" id="atime" required="required"/></td>
      </tr>
    <tr>
      <td>Distance</td>
      <td><input name="dist" type="text" id="dist" required="required"/></td>
      </tr>
    <tr>
      <td>Fare</td>
      <td><input name="fare" type="text" id="fare" required="required"/></td>
      </tr>
    <tr>
      <td>Total Seats </td>
      <td><input name="tseat" type="text" id="tseat" value="24" /></td>
      </tr>
    <tr>
      <td>Date of Journey </td>
      <td><input name="doj" type="date" id="pass5" required="required"/></td>
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
              <%@ page import="java.io.*,java.sql.*,java.util.*,java.util.Properties,java.util.Date,java.net.InetAddress,javax.mail.*,javax.mail.internet.*,javax.activation.*"%>
              
              <%
if(request.getParameter("Submit")!= null)
	{

try
{


	String bno=request.getParameter("textfield11").trim();
	String bname=request.getParameter("bname").trim();
	String fromm=request.getParameter("fromm").trim();
	String too=request.getParameter("too").trim();
	String dtime=request.getParameter("dtime").trim();
	String atime=request.getParameter("atime").trim();
	String dist=request.getParameter("dist").trim();
	String fare=request.getParameter("fare").trim();
	String tseat=request.getParameter("tseat").trim();
	String doj=request.getParameter("doj").trim();  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
      ResultSet rs,rs1;

		
		

Statement st=con.createStatement();
		
		PreparedStatement pstmt,pstmt1,pstmt2,pstmt3,pstmt4,pstmt5,pstmt6,pstmt7,pstmt8,pstmt9,pstmt10;
		PreparedStatement pstmt11,pstmt12,pstmt13,pstmt14,pstmt15,pstmt16,pstmt17,pstmt18,pstmt19,pstmt20;
		PreparedStatement pstmt21,pstmt22,pstmt23,pstmt24;
			 
		

		pstmt=con.prepareStatement("insert into busmaster values(?,?,?,?,?,?,?,?,?,?,?,?)");
				
			pstmt.setString(1,bno);
			pstmt.setString(2,bname);
			pstmt.setString(3,fromm);
			pstmt.setString(4,too);
			pstmt.setString(5,dtime);
			pstmt.setString(6,atime);
			pstmt.setString(7,dist);
			pstmt.setString(8,fare);
			pstmt.setString(9,tseat);
			pstmt.setString(10,"0");
			pstmt.setString(11,"24");
			pstmt.setString(12,doj);
					
			pstmt.executeUpdate();
////////////////////////////

		pstmt1=con.prepareStatement("insert into busmasterlayout values(?,'1','A')");
		pstmt1.setString(1,bno);
		pstmt1.executeUpdate();

pstmt2=con.prepareStatement("insert into busmasterlayout values(?,'2','A')");
		pstmt2.setString(1,bno);
		pstmt2.executeUpdate();

pstmt3=con.prepareStatement("insert into busmasterlayout values(?,'3','A')");
		pstmt3.setString(1,bno);
		pstmt3.executeUpdate();

pstmt4=con.prepareStatement("insert into busmasterlayout values(?,'4','A')");
		pstmt4.setString(1,bno);
		pstmt4.executeUpdate();

pstmt5=con.prepareStatement("insert into busmasterlayout values(?,'5','A')");
		pstmt5.setString(1,bno);
		pstmt5.executeUpdate();

pstmt6=con.prepareStatement("insert into busmasterlayout values(?,'6','A')");
		pstmt6.setString(1,bno);
		pstmt6.executeUpdate();


pstmt7=con.prepareStatement("insert into busmasterlayout values(?,'7','A')");
		pstmt7.setString(1,bno);
		pstmt7.executeUpdate();

pstmt8=con.prepareStatement("insert into busmasterlayout values(?,'8','A')");
		pstmt8.setString(1,bno);
		pstmt8.executeUpdate();
pstmt9=con.prepareStatement("insert into busmasterlayout values(?,'9','A')");
		pstmt9.setString(1,bno);
		pstmt9.executeUpdate();
pstmt10=con.prepareStatement("insert into busmasterlayout values(?,'10','A')");
		pstmt10.setString(1,bno);
		pstmt10.executeUpdate();

////////////////////// from 11

		pstmt11=con.prepareStatement("insert into busmasterlayout values(?,'11','A')");
		pstmt11.setString(1,bno);
		pstmt11.executeUpdate();

pstmt12=con.prepareStatement("insert into busmasterlayout values(?,'12','A')");
		pstmt12.setString(1,bno);
		pstmt12.executeUpdate();

pstmt13=con.prepareStatement("insert into busmasterlayout values(?,'13','A')");
		pstmt13.setString(1,bno);
		pstmt13.executeUpdate();

pstmt14=con.prepareStatement("insert into busmasterlayout values(?,'14','A')");
		pstmt14.setString(1,bno);
		pstmt14.executeUpdate();

pstmt15=con.prepareStatement("insert into busmasterlayout values(?,'15','A')");
		pstmt15.setString(1,bno);
		pstmt15.executeUpdate();

pstmt16=con.prepareStatement("insert into busmasterlayout values(?,'16','A')");
		pstmt16.setString(1,bno);
		pstmt16.executeUpdate();


pstmt17=con.prepareStatement("insert into busmasterlayout values(?,'17','A')");
		pstmt17.setString(1,bno);
		pstmt17.executeUpdate();

pstmt18=con.prepareStatement("insert into busmasterlayout values(?,'18','A')");
		pstmt18.setString(1,bno);
		pstmt18.executeUpdate();
pstmt19=con.prepareStatement("insert into busmasterlayout values(?,'19','A')");
		pstmt19.setString(1,bno);
		pstmt19.executeUpdate();
pstmt20=con.prepareStatement("insert into busmasterlayout values(?,'20','A')");
		pstmt20.setString(1,bno);
		pstmt20.executeUpdate();


///////////////// from 21

pstmt21=con.prepareStatement("insert into busmasterlayout values(?,'21','A')");
		pstmt21.setString(1,bno);
		pstmt21.executeUpdate();

pstmt22=con.prepareStatement("insert into busmasterlayout values(?,'22','A')");
		pstmt22.setString(1,bno);
		pstmt22.executeUpdate();
pstmt23=con.prepareStatement("insert into busmasterlayout values(?,'23','A')");
		pstmt23.setString(1,bno);
		pstmt23.executeUpdate();
pstmt24=con.prepareStatement("insert into busmasterlayout values(?,'24','A')");
		pstmt24.setString(1,bno);
		pstmt24.executeUpdate();

/////////////////////////

		
		out.println("<h1 align=center> Added Sucessfully</h1>");


}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
         }   
%>
            </div>
</div>
</body>
</html>

		