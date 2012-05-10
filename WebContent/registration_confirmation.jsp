<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="groupone.*" %>  
<html>
<style type="text/css">
body
{
background-image:url('http://assets2.grouponcdn.com/images/groupon/landing_pages/bg-drinks.jpg');
}
</style>
<head>
<script type="text/javascript">

function delayer(data)
{
	self.location = "vendor.jsp";
	
}

</script>
</head>

<body onLoad="setTimeout('delayer(${v})', 1000)">
<h2>Account Created Successfully!!</h2>
<p>You will be redirected in 5 seconds.</p>

</body>
</html>