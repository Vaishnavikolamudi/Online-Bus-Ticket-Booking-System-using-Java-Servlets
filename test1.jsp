<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
  
<form name = "f1" method="post" action="">
origin
        Lat: <input name="lat1" type="text" id='lat1'>
Lon: <input name="lon1" type="text" id='lon1'>
<br><br>

Destination:
        Lat1: <input name="lat2" type="text" id='lat2'>
Lon1: <input name="lon2" type="text" id='lon2'>

  Distance:<input type="text" name="dist" id="dis">


        <input type="submit" name="Submit" value="Submit">

</form>
	<%
			if(request.getParameter("Submit")!= null)
			{
				out.print("done");
				String t1=(String)session.getAttribute("lat1");
				String t2=(String)session.getAttribute("lon1");
				String t3=(String)session.getAttribute("lat2");
				String t4=(String)session.getAttribute("lon2");
				
				out.println(t1+"<br>");
				out.println(t2+"<br>");
				out.println(t3+"<br>");
				out.println(t4+"<br>");												
				

				
			}
		
			
	%>
</body>

</html>