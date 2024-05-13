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
.style1 {	font-size: 36px;
	font-weight: bold;
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
			<li class="first"><a href="about.html" id="main-menu1" accesskey="1" title="">About</a> </li>
			<li><a href="signin.jsp" id="main-menu2" accesskey="2" title="">Sign In </a></li>
			<li><a href="signup.jsp" id="main-menu3" accesskey="3" title="">New User ?</a></li>
			<li><a href="searchtemp.jsp" id="main-menu4" accesskey="4" title="">Search your Busses here </a></li>
			<li class="first"></li></ul>
  </div>
	<div id="content">
	  <div id="right">
		  <form id="form1" name="form1" method="post" action="">
            <p align="center" class="style1">Forgot Password ? </p>
		    <p>&nbsp;</p>
		    <table width="474" border="2" align="center">
              <caption>&nbsp;
              </caption>
		      <tr>
                <td width="306"><div align="center">
                    <p>Type your Email or Usernamae
                      <input name="textfield1" type="text" id="textfield1" />
                    </p>
                  <p>User Type<strong>
                    <select name="select">
                      <option value="Admin">Admin</option>
                      <option value="Guest">Guest</option>
                    </select>
                  </strong></p>
                </div></td>
	            <td width="150" rowspan="2"><div align="right"><img src="why_us1-250x250.jpg" width="149" height="78"></div></td>
		      </tr>
              <tr>
                <td><div align="center">
                  <input type="submit" name="Submit" value="Submit" />
                  <input type="reset" name="Submit2" value="Reset" />
                  <a href="signin.jsp"><strong>Remember Password ? </strong></a></div></td>
              </tr>
            </table>
		    <p>&nbsp;</p>
	      </form>
		  <h2 align="center" class="bigger">&nbsp;</h2>
		  <p align="center" class="bigger">
		    <%@page import="javax.mail.*"%>
            <%@page import="javax.mail.internet.*"%>
            <%@page import="javax.activation.*"%>
            <%@page import="java.util.Random"%>
            <%@page import="javax.swing.JOptionPane"%>
            <%@page import="java.util.Properties"%>
            <%@page import="java.util.*,java.io.*"%><%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.dbconnection"%>
 <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
            <%
  if(request.getParameter("Submit")!= null)
   	{
	try {
	
		String mailid = request.getParameter("textfield1");

	String group = request.getParameter("select");


Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;

 	 

//	out.println(dot1);
  Connection con=dbconnection.getConnection();Statement stmt=con.createStatement();
	
	  ResultSet rs;			
	  if(group.equals("Admin"))
	  {
	  	out.println("test");
		String s="select * from login where uname="+"'"+mailid+"'";
		out.println(s);
		  rs=stmt.executeQuery(s);
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}
		out.println(found);
		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
		
		  String str="Update login set pwd=? where uname=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,date);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

						out.println("done");

	
		}	
	}
	else  if(group.equals("Guest"))
	{
	String sql="select * from login where uname="+"'"+mailid+"'";
	out.println(sql);
		  rs=stmt.executeQuery(sql);
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
		
		  String str="Update login set pwd=? where uname=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,date);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				//rs.close();
				str="Update ureg set pwd=? where email=?";
				PreparedStatement psmt1 =con.prepareStatement(str);
				psmt1.setString(1,date);
				psmt1.setString(2,mailid);
				psmt1.executeUpdate();
				//out.println(s1+","+s3);
				psmt1.close();
				rs.close();
		
						out.println("done");
	
		}	
	
	
	
	}
	/////////////////////////////////
	
/*		String email = "surendrarao.mba@gmail.com",
		//String email = "sathish@fabsys.in",
//                        String email = "sridharjoshi1603@gmail.com",
//				out.println(RandomStringUtils.random(12));

		password1="",password2="AV73a2#Gio",password3 = "sathish@1234", host = "smtp.gmail.com", port = "465", subject = "Your Password is"+dot1, to = "sridharjoshi1603@gmail.com".trim();//, text = pk.trim();

		Properties props = new Properties();
		props.put("mail.smtp.user", email);
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", port);
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");

		SecurityManager security = System.getSecurityManager();

		try {
			class SMTPAuthenticator extends javax.mail.Authenticator {
				public PasswordAuthentication getPasswordAuthentication() {
					//String email = "sathish@fabsys.in", password = "sathish@1234";
                                        String email = "surendrarao.mba@gmail.com", password = "AV73a2#Gio";
                                         //String email = "sridharjoshi1603@gmail.com", password = "";
					return new PasswordAuthentication(email, password);
				}
			}
			SMTPAuthenticator auth = new SMTPAuthenticator();
			Session sessions = Session.getInstance(props, auth);
			sessions.setDebug(true);

			MimeMessage msg = new MimeMessage(sessions);
			msg.setText("test");
			msg.setSubject(subject);
			msg.setFrom(new InternetAddress(email));
			msg.addRecipient(Message.RecipientType.TO,
//					new InternetAddress(to));
					new InternetAddress(mailid));

			Transport.send(msg);
			System.out.println("Email sent successfully");

			JOptionPane.showMessageDialog(null,
					"Your Verification Key is send to ur mail");
			response.sendRedirect("forgotpassack.jsp");
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(null, "Send Failed");
//			response.sendRedirect("index.html");
		} 
*/
	}

	catch (Exception ex) {
		out.println(ex);
	}
	}
%>
&nbsp; </p>
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
		