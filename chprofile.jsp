<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%
		try
		{

	
				String op=request.getParameter("op");
				String np=request.getParameter("np");
				String cp=request.getParameter("cp");
	

			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("Jdbc:Odbc:bus","bus","bus");
	
			ResultSet rs;
			ResultSetMetaData rmd;
		
			Statement st=conn.createStatement();
			
			
			
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
    
    
			
    		String sql="select * from ureg";
			rs=st.executeQuery(sql);
			int found1=0;
			String mop="",muname="";
			while(rs.next())
			{
				
			 	mop=rs.getString("pwd").trim();				
			 	muname=rs.getString("uname").trim();				
			
				if(mop.equals(op) && username.equals(muname)) 
				{
					found1=1;
					break;
				}	
			
			}
			
						
			
			if (np.equals(cp) && found1==1)
			{
				
			  PreparedStatement pstmt1=conn.prepareStatement("update ureg set pwd= ?  where uname=?");
			  pstmt1.setString(1,np);
			  pstmt1.setString(2,username);	 
			  pstmt1.executeUpdate();
			  out.println("<h1 align=center> Submitted Sucessfully</h1>");

out.println("<h2 align=center><a href=http://localhost:8080/bus/userhome.html>Back</a></h2>");	
			}
			
			else
			{
			out.println("<h1 align=center> Invalid Password Try again</h1>");

			out.println("<h2 align=center><a href=http://localhost:8080/bus/chprofile.html>Back</a></h2>");	
			
					
			}		
							
			
			
		
		}
		catch(Exception e)
		{
			out.println(e);	
		}

		
%>


