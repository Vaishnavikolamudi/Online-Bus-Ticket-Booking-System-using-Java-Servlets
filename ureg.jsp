<%@page import="dbcon.dbconnection"%>
<%@ page import="java.io.*,java.sql.*,java.util.*,java.util.Properties,java.util.Date,java.net.InetAddress,javax.mail.*,javax.mail.internet.*,javax.activation.*"%>

<%

try
{


	
	String fname=request.getParameter("fname");
	String address=request.getParameter("addr");
	String username=request.getParameter("uname");
	String password=request.getParameter("pass");
	String email=request.getParameter("emailid");
	
	address.trim();
	fname.trim();
	username.trim();
	password.trim();
	email.trim();
	
   // Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection(  
//"jdbc:mysql://localhost:3306/bus","root","mysql"); 
Connection conn=dbconnection.getConnection();

		ResultSet rs;
		
		

Statement st=conn.createStatement();
		
			
		String sql="select * from ureg"; 
			rs=st.executeQuery(sql);
			int found1=0;
			
			while(rs.next())
			{
			
				String muname=rs.getString(4).trim();
			//	out.print(username+","+muname);
				if (muname.equals(username))
				{
					found1=1;
					break;
				}
				
				
			}
			
			
		out.println(found1);
			
	if (found1==0)
		{
			
		PreparedStatement pstmt;
			 
			 

		pstmt=conn.prepareStatement("insert into ureg values(?,?,?,?,?)");
				
			
			pstmt.setString(1,fname);
			pstmt.setString(2,address);
			pstmt.setString(4,username);
			pstmt.setString(5,password);
			pstmt.setString(3,email);

					
			pstmt.executeUpdate();



		out.println("<h1 align=center> Submitted Sucessfully</h1>");

out.println("<h2 align=center><a href=branchuser.html>Back</a></h2>");	
/*			
   try 
	{
	out.println("done1");
         Properties props = System.getProperties();
         props.put("mail.smtp.auth", "true");

         // Get a Session object
         Session mailSession = Session.getDefaultInstance(props, null);
	out.println("done2");
         // construct the message
         Message msg = new MimeMessage(mailSession);
	//out.println("done3");
         //Set message attributes
         msg.setFrom(new InternetAddress(from));
         InternetAddress[] address = {new InternetAddress(to)};
         msg.setRecipients(Message.RecipientType.TO, address);
         msg.setSubject(compression);
         msg.setText(body);
         msg.setSentDate(new Date());

         tr = mailSession.getTransport("smtp");
         tr.connect(smtphost, username, password);
         msg.saveChanges();
         tr.sendMessage(msg, msg.getAllRecipients());
         tr.close();
	//out.println("done4");
	
         } 
	catch (Exception e) 
	{
	             e.printStackTrace();
	         }*/
	
			}
			else
			{
			
			out.println("<h1 align=center> User Already Exists  </h1>");

out.println("<h2 align=center><a href=http://localhost:8080/padmasri/branchuser.html>Back</a></h2>");	
			
			}
			



}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>