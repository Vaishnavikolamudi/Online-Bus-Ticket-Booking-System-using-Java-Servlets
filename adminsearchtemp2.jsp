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
		<h1><span class="style24">Red Bus</span></h1>
</div>
	<div id="main-menu">
		<ul>
			<li class="first"><a href="about.html" id="main-menu1" accesskey="1" title=""></a><a href="adminsearchtemp1.jsp">View	Details</a> </li>
			<li><a href="login.html" id="main-menu2" accesskey="2" title=""></a><a href="adminsearchtemp2.jsp">Maintanance</a></li>
			<li><a href="ureg1.html" id="main-menu3" accesskey="3" title=""></a></li>
			<a href="newroute.html"> New	Route		
            </a>
			<li><a href="l.html" id="main-menu4" accesskey="4" title=""></a></li>
			<li><a href="feedback.html" id="main-menu4" accesskey="4" title=""> </a></li>
			<li><a href="homepage1.html">SignOut</a></li>
		</ul>
  </div>
	<div id="content">
		<div id="right">
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
		String sql="select  BUSID ,BNAME , FROMS , TOO    ,  DEPTTIME   , ARRTIME  , DIST ,  FARE ,tSEATS ,doj  from busmaster ";
		//where froms ="+"'"+mfrom+"'"+" and too ="+"'"+mto+"'";
	//	out.println(sql);
			rs=st.executeQuery(sql);	
		
       
        String sbid="";
       
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
	/*	out.println("<html><body bgcolor=cyan><h1 align=center>BellMonte Devlopers and Builders <Br></h1>");
		 
        
        out.print("<h3><p align=center> On Going Projects Listings or Information</p>");*/
        out.println("<p align=center><table border=2 bordercolor=blue cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
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
						else
						{
		                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
							}
					
                   // out.print("<td><b>"+rs.getString(x)+"</b></td>");
                    }
 				out.print("<td><b><a href=delete.jsp?bid="+sbid+">Delete</a></b></td>");
 				out.print("<td><b><a href=edit.jsp?bid="+sbid+">Edit</a></b></td>");
                    out.print("</tr>");
              }
        out.println("</table></body></html>");
		
		//out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
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
