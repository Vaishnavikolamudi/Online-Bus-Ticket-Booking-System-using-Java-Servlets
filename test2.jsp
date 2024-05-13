<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <input type="text" name="textfield" />
  <input type="submit" name="Submit" value="Submit" />
</form>
<p>
  <%
			if(request.getParameter("Submit")!= null)
			{

				String t1=(String)session.getAttribute("textfield");
				
				out.println(t1+"<br>");
								out.print("done");
				

				
			}
		
			
	%>
</p>
</body>
</html>
