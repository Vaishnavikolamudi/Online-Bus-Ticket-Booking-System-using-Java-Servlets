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
.style2 {font-size: 36}
.style3 {font-size: 36px; }
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h1>Admin  </h1>
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
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <table width="100%" border="0">
        <caption class="style2">
          Search Details
        </caption>
        <tr>
          <td class="style3">Search By </td>
          <td class="style2"><span class="style3">
            <select name="select">
              <option value="busmaster">Bus</option>
              <option value="ureg">Users</option>
              <option value="booking1">Bookings</option>
              <option value="Contract">Contract</option>
            </select>
          </span> </td>
        </tr>
        <tr>
          <td colspan="2" class="style2"><div align="center" class="style3">
              <input type="submit" name="Submit" value="Submit" />
          </div></td>
        </tr>
      </table>
    </form>
    <p align="center">
      <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
      <%
if(request.getParameter("Submit")!= null)
	{


try
{


	
String search=request.getParameter("select").trim();  Connection con=dbconnection.getConnection();Statement st;
		      st=con.createStatement();
		ResultSet rs;
		ResultSetMetaData rmd;
		String sql="";
		if(search.equals("ureg"))
		{
		sql="select nam as Name ,mobile as MobileNo,email as Email from "+search;		
		}
		else
		{
				 sql="select * from "+search;		
		}

		//out.println(sql);
			rs=st.executeQuery(sql);	
		
       
        
       
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        

        
        out.print("<h3><p align=center> Search Details</p>");
        out.println("<p align=center><table width=100% border=2 bordercolor=blue cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
		String sbid="",sbid1="";
        while(rs.next())
         {
                    out.println("<tr>");
                    for(int x=1;x<=n;x++)
                    {
						/*if(x==1)
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
						else
						{*/
		                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
					//}
					
                    }
                //  out.print("<td><b><a href=cancel2.jsp?bid="+sbid+"&busno="+sbid1+">Cancel</a></b></td>");
                    out.print("</tr>");
              }
        out.println("</table></body></html>");
		
		//out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
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
    <p>&nbsp;</p>
  </div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		