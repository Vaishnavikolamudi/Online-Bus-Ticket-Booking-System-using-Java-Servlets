<%@ page import ="java.io.*,java.sql.*,java.util.*"%>



<%

try
{

String crdtype=request.getParameter("select");
crdtype.trim();

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("Jdbc:Odbc:sri","sri","sri");

		ResultSet rs,rs1;
	ResultSetMetaData rmd;
		
		Statement st=conn.createStatement();
		
		
		rs=st.executeQuery("select * from card where cardtype="+"'"+crdtype+"'");
	       
            out.println("<h2><p align=center>Your Request Details</p></h2>");

    out.println("<table border=2  align=center bordercolor=grey cellpadding =10><tr></p>");
    	
    		
			
		
	  rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");
        }
        
        while(rs.next())
         {
         
      
         
                    out.println("<tr>");
                    for(int x=1;x<=n;x++)
                    {
                    out.print("<td><b>"+rs.getString(x)+"</b></td>");
                    }

                    out.print("</tr>");
           }
		
 out.println("</table></body></html>");
		  
  
    
  out.println("<h1 align=center><a href=http://localhost:8080/padmasri/cardquery.html>Back</a></h1>");
             
     }
     catch(Exception e)
     {
     }

  %>
    
 

