<%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%

try
{


	String fid=request.getParameter("textfield4");
	String ffnam=request.getParameter("textfield6");
	String fmnam=request.getParameter("textfield8");
	String flnam=request.getParameter("textfield10");
	String fdob1=request.getParameter("select");
	String fdob2=request.getParameter("select2");
	String fdob3=request.getParameter("select3");
	String fdob=fdob1+"/"+fdob2+"/"+fdob3;
	String fgen=request.getParameter("select4");
	String fadd=request.getParameter("textarea");
	String fph=request.getParameter("textfield18");
	String femail=request.getParameter("textfield20");
	String funam=request.getParameter("textfield24");
	String fpass=request.getParameter("textfield252");

	fid.trim();
	ffnam.trim();
	fmnam.trim();
	flnam.trim();
	fdob.trim();
	fgen.trim();
	fadd.trim();
	fph.trim();
	femail.trim();
	funam.trim();
	fpass.trim();


Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("Jdbc:Odbc:education","education","education");

		//ResultSet rs1;
		
		Statement st=conn.createStatement();
		PreparedStatement pstmt;
			 

pstmt=conn.prepareStatement("insert into facreg values(?,?,?,?,?,?,?,?,?,?,?)");
				
			pstmt.setString(1,fid);
			pstmt.setString(2,ffnam);
			pstmt.setString(3,fmnam);
			pstmt.setString(4,flnam);
			pstmt.setString(5,fdob);
			pstmt.setString(6,fgen);
			pstmt.setString(7,fadd);
			pstmt.setString(8,fph);
			pstmt.setString(9,femail);
			pstmt.setString(10,funam);
			pstmt.setString(11,fpass);

	




			
			
			pstmt.executeUpdate();
		

response.sendRedirect("http://localhost:8080/Education/facregack.html");	
//out.println("<html><body bgcolor=cyan><h1 align=center>vlcgs Devlopers and //Builders <Br> student Registration Completed successfully..<br> <a //href=http://localhost:8080/cp/product.html><br>Home Page</a></h1>");
			
			
			out.println("</body></html>");



}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>