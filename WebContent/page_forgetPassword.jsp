<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
	function testResult()
	{
		var password = document.frm2.Password.value
		var password2 = document.frm2.rPassword.value
			if(password == password2){
				alert("Password Match")
			}
			else{
				alert("Password Does Not Match")
			}

	}
</script>

</head>
<body background = "http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

	<h1><center>Forgot Password?</center></h1>

	Enter Email Address: <textarea cols="50" rows="1" name="Old Email"></textarea><br><br>
	<form name="frm2">
	New Password: <textarea cols="50" rows="1" name="Password"></textarea><br><br>
	Re-enter New Password: <textarea cols="50" rows="1" name="rPassword"></textarea><br><br>
	<input type="button" value="Submit" onclick="testResult()" />

</form>

</body>
</html>