<%@ page import="java.io.*,java.sql.*,java.util.*,java.util.Properties,java.util.Date,java.net.InetAddress,javax.mail.*,javax.mail.internet.*,javax.activation.*"%>

<%

try
{


	
	String bid=request.getParameter("bid").trim();
	String pname=request.getParameter("pname").trim();
	String not=request.getParameter("not").trim();
	String cno=request.getParameter("cno").trim();
	String doe=request.getParameter("doe").trim();

	
	


    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/bus","root","mysql"); 
		ResultSet rs,rs1;
		
		

Statement st=conn.createStatement();
		
			
		String sql="select * from busmaster"; 
			rs=st.executeQuery(sql);
			int found1=0;
			
			while(rs.next())
			{
			
				String mbid=rs.getString(1).trim();
			//	out.print(username+","+muname);
				if (mbid.equals(bid))
				{
					found1=1;
					break;
				}
				
				
			}
			
			
		//out.println(found1);
			
	if (found1==1)
		{
			
		sql="select * from cdmaster"; 
			rs1=st.executeQuery(sql);
			int found2=0;
			
			while(rs1.next())
			{
			
				String mcno=rs1.getString(1).trim();
				String mdoe=rs1.getString(2).trim();
			//	out.print(username+","+muname);
				if (mcno.equals(cno) && mdoe.equals(doe))
				{
					found2=1;
					break;
				}
				
				
			}
			
			if(found2==1)
			{
			
		PreparedStatement pstmt,pstmt1,pstmt2;
			 Cookie cookies1[] = request.getCookies();
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
			 

		pstmt=conn.prepareStatement("insert into booking values(?,?,?,?)");
				
			
			pstmt.setString(1,bid);
			pstmt.setString(2,pname);
			pstmt.setString(3,not);
						pstmt.setString(4,username);

					
			pstmt.executeUpdate();

		pstmt1=conn.prepareStatement("update busmaster set booked=booked+? where busid =?");
		pstmt1.setString(1,not);
			pstmt1.setString(2,bid);


					
			pstmt1.executeUpdate();
			
			pstmt2=conn.prepareStatement("update busmaster set available=available-? where busid =?");
		pstmt2.setString(1,not);
			pstmt2.setString(2,bid);


					
			pstmt2.executeUpdate();

		out.println("<h1 align=center> Booking completed Sucessfully</h1>");
		
		

out.println("<h2 align=center><a href=userhome.html>Back</a></h2>");	
	
			}
			else
			{
			
			out.println("<h1 align=center> Sorry Invalid card details  </h1>");

		//out.println("<h2 align=center><a href=http://localhost:8080/padmasri/branchuser.html>Back</a></h2>");	
			
			}
			
	}
	else
	{
			out.println("<h1 align=center> Sorry Invalid Bus id  </h1>");
	}


}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>