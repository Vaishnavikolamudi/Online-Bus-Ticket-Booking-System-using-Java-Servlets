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
.style2 {font-size: 36px}
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
    <p align="center"><% 
	try
	{
	
	 // Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/bus","root","mysql"); 
Connection conn=dbconnection.getConnection();

		//ResultSet rs,rs1;
		
		Statement st=conn.createStatement();
	String bno=request.getParameter("d");
	session.setAttribute("busid",bno);
	
	//String bbno=(String)session.getAttribute("busid");

	ResultSet rs;
	
		ResultSetMetaData rmd;
		String sql="select * from busmasterlayout where busid="+"'"+bno+"'"; //+" or busid="+"'"+bbno+"'";
	out.println(sql);
			rs=st.executeQuery(sql);	
		
      
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
      //  out.println("<p align=center><table border=2 bordercolor=blue width =75% cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
//        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
	
	String s1="",s1stat="";
		String s2="",s2stat="";
			String s3="",s3stat="";
				String s4="",s4stat="";
					String s5="",s5stat="";
					String s6="",s6stat="";
String s7="",s7stat="";
			
String s8="",s8stat="";
			
String s9="",s9stat="";
			
String s10="",s10stat="";
			
String s11="",s11stat="";
			
String s12="",s12stat="";
			
String s13="",s13stat="";
			
String s14="",s14stat="";
			
String s15="",s15stat="";
String s16="",s16stat="";
			
String s17="",s17stat="";
			
String s18="",s18stat="";
			
String s19="",s19stat="";
			
String s20="",s20stat="";
			
String s21="",s21stat="";
			
String s22="",s22stat="";
			
String s23="",s23stat="";
			
String s24="",s24stat="";

			
	int cnt=1;
        while(rs.next())
         {
	 			if(cnt==1)
				{
				s1=rs.getString(2);
				s1stat=rs.getString(3);
				}
				else if(cnt==2)
				{
				s2=rs.getString(2);
				s2stat=rs.getString(3);
				}
				else if(cnt==3)
				{
				s3=rs.getString(2);
				s3stat=rs.getString(3);
				}
				else if(cnt==4)
				{
				s4=rs.getString(2);
				s4stat=rs.getString(3);
				}
				else if(cnt==5)
				{
				s5=rs.getString(2);
				s5stat=rs.getString(3);
				}
				else if(cnt==6)
				{
				s6=rs.getString(2);
				s6stat=rs.getString(3);
			//	out.println("try..."+s6+","+s6stat);
				}
				else if(cnt==7)
				{
				s7=rs.getString(2);
				s7stat=rs.getString(3);
				}
				else if(cnt==8)
				{
				s8=rs.getString(2);
				s8stat=rs.getString(3);
				}
				else if(cnt==9)
				{
				s9=rs.getString(2);
				s9stat=rs.getString(3);
				}
				
				else if(cnt==10)
				{
				s10=rs.getString(2);
				s10stat=rs.getString(3);
				}
				else if(cnt==11)
				{
				s11=rs.getString(2);
				s11stat=rs.getString(3);
				}
				else if(cnt==12)
				{
				s12=rs.getString(2);
				s12stat=rs.getString(3);
				}
				else if(cnt==13)
				{
				s13=rs.getString(2);
				s13stat=rs.getString(3);
				}
				else if(cnt==14)
				{
				s14=rs.getString(2);
				s14stat=rs.getString(3);
				}
				else if(cnt==15)
				{
				s15=rs.getString(2);
				s15stat=rs.getString(3);
				}
				else if(cnt==16)
				{
				s16=rs.getString(2);
				s16stat=rs.getString(3);
				}
				else if(cnt==17)
				{
				s17=rs.getString(2);
				s17stat=rs.getString(3);
				}
				else if(cnt==18)
				{
				s18=rs.getString(2);
				s18stat=rs.getString(3);
				}
				else if(cnt==19)
				{
				s19=rs.getString(2);
				s19stat=rs.getString(3);
				}
				else if(cnt==20)
				{
				s20=rs.getString(2);
				s20stat=rs.getString(3);
				}
				else if(cnt==21)
				{
				s21=rs.getString(2);
				s21stat=rs.getString(3);
				}
				else if(cnt==22)
				{
				s22=rs.getString(2);
				s22stat=rs.getString(3);
				}
				else if(cnt==23)
				{
				s23=rs.getString(2);
				s23stat=rs.getString(3);
				}
				else if(cnt==24)
				{
				s24=rs.getString(2);
				s24stat=rs.getString(3);
				}
					cnt++;
              }

	      
 

	
	
	
	%></p>
    <p align="center" class="style1">Seat Layout </p>
    <table width="255" height="287" border="1" align="center">
      <tr>
        <td colspan="2"><div align="center">DOOR</div></td>
        <td colspan="3"><div align="center">Driver</div></td>
      </tr>
      <tr>
        <td width="48">
          <div align="center">
            <%
			if (s1stat.equals("A"))
//					out.println("<a href=seatlayout1.jsp?tkt=1>1</a>");
					out.println("<a href=seatlayout1.jsp?tkt=1>1</a>");
				else
					out.println("<b><font color=red>1</font></b>");
					
					 %>
        &nbsp;</div></td>
        <td width="41"><div align="center">
          <%
			if (s2stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=2>2</a>");
				else
					//out.println("2");
					out.println("<b><font color=red>2</font></b>");
					
					 %>
        </div></td>
        <td width="8" rowspan="6"><p align="center">A</p>
        <p align="center">I</p>
        <p align="center">S</p>
        <p align="center">L</p>
        <p align="center">E</p></td>
        <td width="43"><div align="center">
          <%
			if (s3stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=3>3</a>");
				else
										//out.println("2");
					out.println("<b><font color=red>3</font></b>");

					
					 %>
        </div></td>
        <td width="81">
          <div align="center">
            <%
			if (s4stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=4>4</a>");
				else
									//out.println("2");
					out.println("<b><font color=red>4</font></b>");

					
					 %>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <%
			if (s5stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=5>5</a>");
				else
									//out.println("2");
					out.println("<b><font color=red>5</font></b>");

					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s6stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=6>6</a>");
				else
					out.println("<b><font color=red>6</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s7stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=7>7</a>");
				else
						out.println("<b><font color=red>7</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s8stat.equals("A"))
				out.println("<a href=seatlayout1.jsp?tkt=8>8</a>");
				else
						out.println("<b><font color=red>8</font></b>");
					
					 %>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <%
			if (s9stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=9>9</a>");
				else
					out.println("<b><font color=red>9</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s10stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=10>10</a>");
				else
						out.println("<b><font color=red>10</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s11stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=11>11</a>");
				else
					out.println("<b><font color=red>11</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s12stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=12>12</a>");
				else
					out.println("<b><font color=red>12</font></b>");
					
					 %>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <%
			if (s13stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=13>13</a>");
				else
						out.println("<b><font color=red>13</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s14stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=14>14</a>");
				else
						out.println("<b><font color=red>14</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s15stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=15>15</a>");
				else
						out.println("<b><font color=red>15</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s16stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=16>16</a>");
				else
					out.println("<b><font color=red>16</font></b>");
					
					 %>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <%
			if (s17stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=17>17</a>");
				else
						out.println("<b><font color=red>17</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s18stat.equals("A"))
				out.println("<a href=seatlayout1.jsp?tkt=18>18</a>");
				else
						out.println("<b><font color=red>18</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s19stat.equals("A"))
				out.println("<a href=seatlayout1.jsp?tkt=19>19</a>");
				else
						out.println("<b><font color=red>19</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s20stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=20>20</a>");
				else
						out.println("<b><font color=red>20</font></b>");
					
					 %>
        </div></td>
      </tr>
      <tr>
        <td><div align="center">
          <%
			if (s21stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=21>21</a>");
				else
						out.println("<b><font color=red>21</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s22stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=22>22</a>");
				else
						out.println("<b><font color=red>22</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s23stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=23>23</a>");
				else
						out.println("<b><font color=red>23</font></b>");
					
					 %>
        </div></td>
        <td><div align="center">
          <%
			if (s24stat.equals("A"))
					out.println("<a href=seatlayout1.jsp?tkt=24>24</a>");
				else
						out.println("<b><font color=red>24</font></b>");
					
					 %>
        </div></td>
      </tr>
      <tr>
        <td colspan="5"><div align="center"></div></td>
      </tr>
    </table>
    <div align="center">
      <%	}

   catch(Exception e)
   {
        out.println(e);
   }
%>
    </div>
    <p class="style1">&nbsp;	</p>
    <p align="center" class="style2"><a href="seatlayout2.jsp">Click Confirm for passenger details </a></p>
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
		