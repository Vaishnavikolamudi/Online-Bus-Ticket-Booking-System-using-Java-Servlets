
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="get" action="search1.jsp">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="35%" border="2" align="center" cellpadding="2" cellspacing="2">
    <caption>
      Select ur choice
    </caption>
    <tr>
      <th scope="col">From</th>
      <th scope="col">To</th>
    </tr>
    <tr>
      <th scope="row"><select name="select">
	  <%@ page import ="java.io.*,java.sql.*,java.util.*"%>
<%

try
{

/*	String uname=request.getParameter("textfield22");
	String pword=request.getParameter("textfield2");
	String grp=request.getParameter("group");

	
	uname.trim();
	pword.trim();
	grp.trim(); */
	
	
//	out.println("test0");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("Jdbc:Odbc:bus","bus","bus");

		ResultSet rs,rs1;
		
		Statement st=conn.createStatement();
		
		String sql="select distinct(froms) from busmaster"; 
			rs=st.executeQuery(sql);
			int found=0;
			while(rs.next())
			{
				String mfrom=rs.getString("froms").trim();
//				String mto=rs.getString("too").trim();
	
		%>				
        <option value=<% out.println(mfrom); %>><% out.println(mfrom); %></option>
		<% }
		rs.close();
		 %>
		
      </select>      </th>
      <td><div align="center">
        <select name="select2">
		<%
	 sql="select distinct(too) from busmaster"; 
			rs1=st.executeQuery(sql);
			//int found=0;
			while(rs1.next())
			{
	//			String mfrom=rs.getString("froms").trim();
				String mto=rs1.getString("too").trim();
	
		%>			
		
		
         <option value=<% out.println(mto); %>><% out.println(mto); %></option>
		<% }
		rs1.close();
		 %>
        </select>
		
		
		
      </div></td>
    </tr>
    <tr>
      <th colspan="2" scope="row"><input type="submit" name="Submit" value="Confirm" /></th>
    </tr>
  </table>
  <div align="center"></div>
  <p>&nbsp;</p>
</form>
</body>
</html>

<%
}
       catch(Exception e)
             {
             		out.print(e);
             	
             }
            
%>