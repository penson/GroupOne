<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="groupone.*" %>  
<html>
<style type="text/css">
body
{
background-image:url('http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb');
}
</style>
<head>
<script type="text/javascript">

function delayer()
{
	
	var type = <%=session.getAttribute( "userType" ) %>.value;
	
	
	if(type == 'vendor')
	{
		window.location = 'vendor.jsp';
	}
	else
	{
		window.location = 'page_home.jsp';
	}
}

</script>
</head>

<body onLoad="setTimeout('delayer()', 5000)">
<p>
<p>
<center><h2>Registration Complete!
<p>Welcome to the GroupOne Family!</h2>
<p>You will be redirected in 5 seconds.</p></center>

<input id="vendor" type="hidden" name="userType" value= <%=session.getAttribute( "userType" ) %>>
<input id="customer" type="hidden" name="userType" value= <%=session.getAttribute( "userType" ) %>>
</body>
</html>