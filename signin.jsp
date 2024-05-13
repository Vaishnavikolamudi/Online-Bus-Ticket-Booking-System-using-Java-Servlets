<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
.style1 {font-size: 24px}
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
			<li class="first"><a href="about.html" id="main-menu1" accesskey="1" title="">About</a>			</li>
			<li><a href="signin.jsp" id="main-menu2" accesskey="2" title="">Sign In </a></li>
			<li><a href="signup.jsp" id="main-menu3" accesskey="3" title="">New User ?</a></li>
			<li><a href="searchtemp.jsp" id="main-menu4" accesskey="4" title="">Search your Busses here </a></li>
<li><a href="contract.jsp" id="main-menu4" accesskey="4" title="">Book for Contract Buses here </a></li>				
		</ul>
	</div>
	<div id="content">
	  <div id="right">
  <form id="form1" name="form1" method="post" action="">
              <p align="center"><span class="style1">SignIn</span></p>
              <table width="527" border="1">
                <tr>
                  <td width="287"><img src="images/login_icon.gif" width="204" height="129" /></td>
                  <td width="224" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>Email Id </td>
                      <td><input type="text" name="textfield1" id="textfield1" required="required" /></td>
                    </tr>
                    <tr>
                      <td>Password</td>
                      <td><input name="textfield2" type="password" id="textfield2" required="required" /></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="3"><label></label>
                    <div align="center">
                      <input type="submit" name="button" id="button" value="Sign In" />
                      <input type="reset" name="button2" id="button2" value="reset" />                    
                   <!--   <a href="resetpass.jsp">Forgotpassword?</a></div></td>-->
                </tr>
              </table>
            <p>&nbsp;</p>
        <p align="center"><span class="col-lg-8 col-lg-offset-2"><%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.dbconnection"%>
 <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
            <%
try
{

//String b=request.getParameter("Submit");
	if(request.getParameter("button")!= null)
	{  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
    
   
       
      String u=request.getParameter("textfield1").trim();
      String p=request.getParameter("textfield2").trim();
      

	     rs=stmt.executeQuery("select * from login where uname="+"'"+u+"'"+" and pwd="+"'"+p+"'");
      String s="",s1="";
      int found=0;
	  String utype="";
      while(rs.next())
      {
	  	utype=rs.getString(3);
			found++;

				  
		}
		  
		 if(found==1 && utype.equals("Admin"))
		 {
		 
				 session.setAttribute("email",u); 
		 
		                 response.sendRedirect("admin.html"); 
		}
		 else if(found==1 && utype.equals("Guest"))
		 {
		 
				 session.setAttribute("email",u); 
		 
		                 response.sendRedirect("userhome.jsp"); 
		}
		  else
		 {
		 		   out.println("<h1 align=center >Invalid Login... </h1>");

			}
                  rs.close();
		
			stmt.close();
			con.close();	  
				  
				  
	  }
}

 catch(Exception e)
    {
     
    out.println("Exception occured" +e);
    }
%>
        </span></p>
          </form>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
			<p class="bigger">&nbsp;</p>
	  </div>
	</div>
	<div class="hr1">
		<hr />
	</div>
	<div id="footer">
		<ul>
			<li></li>
		</ul>
  </div>
</div>
</body>
</html>

			<center><span style="width: 100%; font-family: helvetica; font-size: 6px;">
			Design downloaded from <a href="http://www.freewebtemplates.com" style="font-family: helvetica; font-size: 6px;">FreeWebTemplates.com</a><br>
			Free web design, web templates, web layouts, and website resources!
			</span></center><br><br>
		