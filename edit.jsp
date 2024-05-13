<%

 /*  Cookie cookies1[] = request.getCookies();
    		Cookie cookie1;
    		String username="";
    		for(int i=0;i<cookies1.length;i++)
    		{
		      cookie1 = cookies1[i];
			     if(cookie1.getName().equals("uname"))
			{
				username= cookies1[i].getValue();
             			 }
		}	
		
*/

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
		  <p>
		    <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
            <%

try
{

	
	String mbid=request.getParameter("bid").trim();
	//String mto=request.getParameter("select2").trim();
	
//		out.println(mbid);	
		Connection con;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:bus","bus","bus");                                   

		Statement st;
		      st=con.createStatement();
		ResultSet rs;
		Cookie cookie1 = new Cookie("busid",mbid);
			   cookie1.setMaxAge(3600);
			   response.addCookie(cookie1); 

		String sql="select * from busmaster";
		rs=st.executeQuery(sql);	
		String mBUSID="";          
		String mBNAME="";          
		String mFROMS="";          
		String mTOO="";            
		String mDEPTTIME="";       
		String mARRTIME  ="";      
		String mDIST        ="";   
		String mFARE          =""; 
		String mTSEATS ="";        
		String mBOOKED ="";        
		String mAVAILABLE="";      
		String mDOJ="";
		int found=0;
 	while(rs.next())
			{
			
				 mBUSID=rs.getString("BUSID").trim();
				 mBNAME=rs.getString("BNAME").trim();
				 mFROMS=rs.getString("FROMS").trim();
				 mTOO=rs.getString("TOO").trim();
		   		mDEPTTIME=rs.getString("DEPTTIME").trim();
				mARRTIME  =rs.getString("ARRTIME").trim();      
				mDIST        =rs.getString("DIST").trim();   
				mFARE          =rs.getString("FARE").trim(); 
				if(mbid.equals( mBUSID))							
				{	
					found=1;
					break;
				}
			}


			out.println("<html><body><h1 align=center>Selected Details<Br></h1>");
			
			out.println("<table border=1 align=center><tr><td align=left>Bus id </td><td>"+mbid+"</td></tr>");
			out.println("<tr><td align=left>Bus Name</td><td>"+mBNAME+"</td></tr>");
			out.println("<tr><td>From</td><td>"+mFROMS+"</td></tr>");
			out.println("<tr><td align=left>TO </td><td>"+mTOO+"</td></tr>");
			out.println("<tr><td align=left>Arrival Time</td><td>"+mARRTIME+"</td></tr>");
			out.println("<tr><td align=left>Departure Time</td><td>"+mDEPTTIME+"</td></tr>");
			out.println("<tr><td align=left>Distance</td><td>"+mDIST+"</td></tr>");
			out.println("<tr><td align=left>FARE</td><td>"+mFARE+"</td></tr></table>");
			
			



			/*

        PreparedStatement pstmt1,pstmt2,pstmt3;
pstmt1=con.prepareStatement("update busmaster set booked=booked-? where busid =?");
		pstmt1.setString(1,mnot);
			pstmt1.setString(2,mbid);


					
			pstmt1.executeUpdate();
			
			pstmt2=con.prepareStatement("update busmaster set available=available+? where busid =?");
		pstmt2.setString(1,mnot);
			pstmt2.setString(2,mbid);


					
			pstmt2.executeUpdate();
        PreparedStatement pstmt1,pstmt2,pstmt3;

			pstmt3=con.prepareStatement("delete from busmaster where busid =?");

			pstmt3.setString(1,mbid);

			pstmt3.executeUpdate();

		out.println("<h1 align=center> Deleted Sucessfully</h1>");*/
      
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%> 
</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <form id="form1" name="form1" method="get" action="edit1.jsp">
		    <table width="62%" border="2" align="center" cellpadding="2" cellspacing="2">
              <caption>
                Edit Details
              </caption>
		      <tr>
                <th scope="col">Arrival Time </th>
		        <th scope="col"><div align="left">
		          <input type="text" name="textfield" />
	            </div></th>
	          </tr>
              <tr>
                <th scope="row">Departure Time </th>
                <td><input type="text" name="textfield2" /></td>
              </tr>
              <tr>
                <th scope="row">Fare</th>
                <td><input type="text" name="textfield3" /></td>
              </tr>
              <tr>
                <th colspan="2" scope="row"><input type="submit" name="Submit" value="confirm" />
                <input type="reset" name="Submit2" value="Reset" /></th>
              </tr>
            </table>
          </form>
		  <p>&nbsp;          </p>
		  <p>&nbsp;</p>
</div>
</body>
</html>
