<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%

try
{


	
	String mfrom=request.getParameter("select");
	String mto=request.getParameter("select2");
	
		Connection con;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:bus","bus","bus");                                   

		Statement st;
		      st=con.createStatement();
		ResultSet rs;
		ResultSetMetaData rmd;
		String sql="select * from busmaster where froms ="+"'"+mfrom+"'"+" and too ="+"'"+mto+"'";
			rs=st.executeQuery(sql);	
		
       
        
       
             
          rmd=rs.getMetaData();
        int n=rmd.getColumnCount();
        //out.println("<body bgcolor = gray > </body>");
        
      //  out.println("<html></head><body>background=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/Neel/NEW/bg_01.jpg><table border=1 cellspacing=1 style=border-collapse: collapse bordercolor=#111111 width=100% bgcolor=#FFFF66 height=132 bordercolorlight=#FFFF66 bordercolordark=#FFFF66 background=file:///C:/Program%20Files/Apache%20Software%20Foundation/Tomcat%205.0/webapps/Neel/NEW/tellfriend.jpg><tr><td width=100% height=129><p align=center><b><font size=7><u><font color=#FF6600>EVENT MANAGEMENT CO.</font></u></font></b></p><p align=center><font size=6><b><font color=#FFFFFF><u>Art Co. Events</u></font></b></font><font size=5 color=#00FFFF></font><p align=center><font size=5 color=#FFFF66>A Dreamtree Networks Ltd.</font><p align=center><br>&nbsp;</td></tr></table></body></html>");
		out.println("<html><body bgcolor=cyan><h1 align=center>BellMonte Devlopers and Builders <Br></h1>");
		 
        
        out.print("<h3><p align=center> On Going Projects Listings or Information</p>");
        out.println("<p align=center><table border=2 bordercolor=blue cellpadding =10><tr></p>");
    	
    	
        for(int i=1;i<=n;i++)
        {
        out.print("<td><b>"+rmd.getColumnName(i)+"</b></td>");

        }
        out.println("</tr>");
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
		
		out.println("<h2 align=center><br><a href=http://localhost:8081/real/homepage.html><br>Home Page</a></h2>");
	      
 }

   catch(Exception e)
   {
        out.println(e);
   }



%>
