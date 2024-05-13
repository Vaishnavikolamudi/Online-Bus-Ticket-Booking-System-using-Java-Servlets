<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
  <%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.dbconnection"%>
 <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
<%

try
{

	String uname=request.getParameter("textfield22");
	String pword=request.getParameter("textfield2");
	String grp=request.getParameter("group");

	
	uname.trim();
	pword.trim();
	grp.trim();
	  Connection conn=dbconnection.getConnection();
	
//	out.println("test0");


    //Class.forName("com.mysql.jdbc.Driver");
//Connection conn=DriverManager.getConnection(  
//"jdbc:mysql://localhost:3306/bus","root","mysql"); 

		ResultSet rs,rs1;
		
		Statement st=conn.createStatement();
			
		if (grp.equals("Admin"))
		{
	//		out.println("test0");
		String sql="select * from login"; 
			rs=st.executeQuery(sql);
			int found=0;
			while(rs.next())
			{
				String uuname=rs.getString("uname").trim();
				String ppword=rs.getString("pwd").trim();
			
				if(uname.equals(uuname) && pword.equals(ppword))							
				{	
					found=1;
					break;
				}
			}
				if(found==1)
				{
					
				response.sendRedirect("admin.html");
				}
				else
				{
				response.sendRedirect("signininvalid.html");
				
				}			
			
		}
		else 		if(grp.equals("User"))
		{
			out.println("test1");
		String sql="select * from ureg"; 
			rs1=st.executeQuery(sql);
			int found1=0;
			
			while(rs1.next())
			{
				String uuname=rs1.getString("uname").trim();
				String ppword=rs1.getString("pwd").trim();
			//out.println("test1");
				//out.println(uuname+","+uname+","+ppword+","+pword+"<Br>");
				
				if(uname.equals(uuname) && pword.equals(ppword))							
				{	
						found1=1;			
						break;
				}
			}
			
			if(found1==1)
			{
			
			Cookie cookie1 = new Cookie("uname",uname);
			   cookie1.setMaxAge(3600);
			   response.addCookie(cookie1); 
			response.sendRedirect("userhome.html");	
		        }
			
                else
			{
			response.sendRedirect("signininvalid.html");
				
				}			
	
	}
}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>