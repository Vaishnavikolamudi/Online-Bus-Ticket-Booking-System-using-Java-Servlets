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
    <p align="center" class="style1">Seat nos Selected </p>
    <p align="center" class="style1">
      <%
int cnt=0;
//String [] sets=new String[10];
String sets="";
try
{
		
	//String dt=request.getParameter("textfield").trim();
//	String mfrom=request.getParameter("select").trim();
//	String mto=request.getParameter("select2").trim();  
Connection con=dbconnection.getConnection();String seats="";
		Statement st;
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
		int j=0;
        while(rs.next())
         {
                    out.println("<tr>");
                    for(int x=1;x<=n;x++)
                    {
                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
					//sets[j]=rs.getString(x);
					sets=sets+","+rs.getString(x);
					j++;
                    }

                    out.print("</tr>");
					cnt++;
              }
        out.println("</table></body></html>");
	//	String seat=(String) session.getAttribute("seats");
	

		//out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%>
    <form id="form1" name="form1" method="post" action="">
	 </p>
    <table width="461" border="1" align="center">
      <tr>
        <td> PNRNO          
          <input type="text" id="bookname5" name="textfield11" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
{  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from booking1 ");
	      int count=1;
      while(rs.next())
      {
			count++;
				  
		}
		
		String s="";
		s="J-"+s.valueOf(count);
  		out.println(s.trim());
		  }

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }%>"/></td>
        <td>Seats
          <input id="textfield42" name="textfield422" required="required" value="<%	  // out.println(sets[0]+","+sets[1]);
		  	//	session.setAttribute("seat1",sets[0]);
			//	session.setAttribute("seat2",sets[1]);
			 out.println(sets);
		   %>"/></td>
        <td>BOOKING DATE          
          <input id="textfield4" name="textfield42" required="required" value="<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%	
		Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;
		
		String dot="";

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
 dot = dot +" "+ hour + ":" + min  ; 

		
         date=month+"/"+dayofmonth+"/"+year+"  "+dot;
   out.println(date);
 %>"/></td>
      </tr>
      <tr>
        <td width="152">No of Tickets Selected </td>
        <td width="104">Fare per Person </td>
        <td width="104">Total Fare </td>
      </tr>
      <tr>
        <td><div align="center">
          <input type="text" name="textfield9" value="<% out.println(cnt); %>" />
          &nbsp;</div></td>
        <td><div align="center">
          <input type="text" name="textfield10" value="<% String f=(String) session.getAttribute("fare"); out.println(f);%>"/>
        </div></td>
        <td><input type="text" name="textfield102" value="<% double d=Float.parseFloat(f)*cnt; out.println(d);  %>"/></td>
      </tr>
    </table>
    <p align="center" class="style1">&nbsp;</p>
   
      <table width="446" border="1" align="center">
        <tr>
          <td width="28">SLNO</td>
          <td width="144">PASSENGER NAME </td>
          <td width="144">AGE</td>
          <td width="102">GENDER</td>
        </tr>
        <tr>
          <td height="21">1</td>
          <td><input name="textfield" type="text" value="XXXXXXXXXXXXXXXXXX" /></td>
          <td><input name="textfield5" type="text" value="XX" maxlength="2" /></td>
          <td><select name="select">
            <option value="M">M</option>
            <option value="F">F</option>
          </select>          </td>
        </tr>
        <tr>
          <td>2</td>
          <td><input name="textfield2" type="text" value="XXXXXXXXXXXXXXXXXXXXXXXX" /></td>
          <td><input name="textfield6" type="text" value="XX" maxlength="2" /></td>
          <td><select name="select2">
            <option value="M">M</option>
            <option value="F">F</option>
          </select></td>
        </tr>
        <tr>
          <td>3</td>
          <td><input name="textfield3" type="text" value="XXXXXXXXXXXXXXXXXXXX" /></td>
          <td><input name="textfield7" type="text" value="XX" maxlength="2" /></td>
          <td><select name="select3">
            <option value="M">M</option>
            <option value="F">F</option>
          </select></td>
        </tr>
        <tr>
          <td>4</td>
          <td><input name="textfield4" type="text" value="XXXXXXXXXXXXXXXXXXX" /></td>
          <td><input name="textfield8" type="text" value="XX" maxlength="2" /></td>
          <td><select name="select4">
            <option value="M">M</option>
            <option value="F">F</option>
          </select></td>
        </tr>
        <tr>
          <td colspan="4"><div align="center">
            <input type="submit" name="Submit" value="Finish Booking" />
            <input type="reset" name="Submit2" value="Reset" />
          </div></td>
        </tr>
      </table>
    </form>
	
	
	<div align="center"><%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.dbconnection"%>
 <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
	  <%
try
{

//String b=request.getParameter("Submit");
	if(request.getParameter("Submit")!= null)
	{
		String tamt=request.getParameter("textfield102");
		String pnr=request.getParameter("textfield11");
		String bd=request.getParameter("textfield42");
		String bbno=(String)session.getAttribute("busid");
		String doj=(String)session.getAttribute("doj");
		String ff=(String)session.getAttribute("frm");
		String t=(String)session.getAttribute("t");
		   String not=request.getParameter("textfield9").trim();
      String far=request.getParameter("textfield10").trim();
	  
	     String nm=request.getParameter("textfield").trim();
      String age=request.getParameter("textfield5").trim();
	     String gen=request.getParameter("select").trim();
		 
		 /*out.println(bbno+"<br>");
		 out.println(doj+"<br>");
		 out.println(ff+"<br>");
		 out.println(t+"<br>");
		 out.println(far+"<br>"); */
		 
		 
session.setAttribute("not",not);
session.setAttribute("bno",bbno);
		 String nm1=request.getParameter("textfield").trim();
		 String nm2=request.getParameter("textfield5").trim();
		 String nm3=request.getParameter("select").trim();

		 
		 String ag1=request.getParameter("textfield2").trim();
		 String ag2=request.getParameter("textfield6").trim();
		 String ag3=request.getParameter("select").trim();

		 
		 String g1=request.getParameter("textfield3").trim();
		 String g2=request.getParameter("textfield7").trim();
		 String g3=request.getParameter("select3").trim();

		 
		 
		 session.setAttribute("pnr",pnr);
		 
		 
		 
		 
		 
//		 session.setAttribute("email",u); 
String lname=(String)session.getAttribute("email");  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
//		 	String bbno=(String)session.getAttribute("busid");
		   PreparedStatement pstmt=con.prepareStatement("insert into booking1 values(?,?,?,?,?,?,?,?,?,?,?)");   
        	pstmt.setString(1,pnr);
            pstmt.setString(2,bd);
            pstmt.setString(3,ff);
            pstmt.setString(4,t);
            pstmt.setString(5,not);
        	pstmt.setString(6,tamt);
            pstmt.setString(7,doj);
            pstmt.setString(8,lname);
         //   pstmt.setString(9,sets[0]+","+sets[1]);
		    pstmt.setString(9,sets);
			session.setAttribute("seats",sets);
            pstmt.setString(10,bbno);
            pstmt.setString(11,"Active");
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
		 
///////////////////

		   PreparedStatement pstmt1=con.prepareStatement("insert into booking2 values(?,?,?,?,?)");   
        	pstmt1.setString(1,pnr);
            pstmt1.setString(2,nm1);
            pstmt1.setString(3,nm2);
            pstmt1.setString(4,nm3);
            pstmt1.setString(5,lname);
         
             pstmt1.executeUpdate(); 

        	pstmt1.setString(1,pnr);
            pstmt1.setString(2,ag1);
            pstmt1.setString(3,ag2);
            pstmt1.setString(4,ag3);
            pstmt1.setString(5,lname);
         
             pstmt1.executeUpdate(); 


        	pstmt1.setString(1,pnr);
            pstmt1.setString(2,g1);
            pstmt1.setString(3,g2);
            pstmt1.setString(4,g3);
            pstmt1.setString(5,"b@g.com");
         
             pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  
			
			
		
		 //  PreparedStatement pstmt2=con.prepareStatement("delete from seatcart");   
//
//
//            
//             pstmt2.executeUpdate(); 
//                    
//            
//            pstmt2.close();  
		 
		   PreparedStatement pstmt3=con.prepareStatement("update busmaster set booked=?,available=available-? where busid=?");   

			pstmt3.setString(1,not);pstmt3.setString(2,not);pstmt3.setString(3,bbno);
			
            
             pstmt3.executeUpdate(); 
                    
            
            pstmt3.close();  




//	  out.println("done");
	
	response.sendRedirect("seatlayout3.jsp");
	}
	
}
 catch(Exception e)
    {
     
    out.println("Exception occured" +e);
    }
	%>
    </div>
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
		