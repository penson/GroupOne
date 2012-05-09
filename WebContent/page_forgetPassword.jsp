<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
	function comparePasswords()
	{
		var password = document.reset.newPassword.value;
		var password2 = document.reset.confirmPassword.value;
		
			if(password === password2)
			{
				return true;
			}
			else
			{
				alert("Password Does Not Match");
				return false;
			}

	}
</script>

</head>
<body background = "http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<center><h1>
<p>Reset Your Password</p></h1><h3>Enter your email address and select a new password</p>
</h3>
<p>&nbsp;
</center>
<form name="resetForm" action="ResetPassword" onSubmit="return comparePasswords()" method="post">
<table align="center" cellpadding="1"
cellspacing="2">

<tbody>
<tr>
<td>Email Address:</td>
<td><input class="inputtext"
id="email" name="email" type="text">
</td>
</tr>

<tr>
<td>New Password:</td>
<td><input class="inputtext"
id="newPassword" name="newPassword"
type="password">
</td>
</tr>

<tr>
<td>Confirm New Password:</td>
<td><input class="inputtext"
id="confirmPassword" name="confirmPassword" value="" type="password">
</td>
</tbody>
</table>
<p align="center">
  <input value="Submit" type="submit">
</form>
</body>
</html>