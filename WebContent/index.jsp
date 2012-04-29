<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To GroupOne</title>
<style type="text/css">
body
{
	background-image:url('http://assets2.grouponcdn.com/images/groupon/landing_pages/bg-drinks.jpg');	
}
</style>
</head>
<body>
<div id="bar">
<form id="signupForm" action="VerifyLogin" method="POST">
	<a class="lfloat" href="/GroupOne/index.jsp" title="Go to GroupOne Home"><img alt="GroupOne logo" class="logo img" src="http://i.imgur.com/cLLbp.png" /> </a>
	<table align="right" cellspacing="0">
		<tbody>
			<tr>
				<td class="html7magic"><label for="emailAddress">Email</label></td>
				<td class="html7magic"><label for="password">Password</label></td>
			</tr>
			<tr>
				<td><input name="emailAddress" size="20" type="text" /></td>
				<td><input name="password" size="20" type="password" /></td>	
				<td><input tabindex="4" type="submit" value="Login" /></td>
			</tr>
			<tr>
				<td class="login_form_label_field"><a href="http://www.html.am/recover">Forgot your password?</a></td>
			</tr>
		</tbody>
	</table>
</form>
</div>


<form action="CreateAccount" id="signupForm" method="POST">
	<div class="mbs mainTitle fsl fwb fcb" style="text-align: right; ">Not Registered? No Problem!</div>
	<div id="registration_container">
		<table align="right" cellpadding="1" cellspacing="0" class="uiGrid editor">
			<tbody>
				<tr>
					<td class="label">
						<label for="firstname">First Name:</label></td>
					<td>
						<div class="field_container">
							<input class="inputtext" id="firstname" name="firstname" type="text" /></div>
					</td>
				</tr>
				<tr>
					<td class="label">
						<label for="lastname">Last Name:</label></td>
					<td>
						<div class="field_container">
							<input class="inputtext" id="lastname" name="lastname" type="text" /></div>
					</td>
				</tr>
				<tr>
					<td class="label">
						<label for="reg_email__">Your Email:</label></td>
					<td>
						<div class="field_container">
							<input class="inputtext" id="reg_email__" name="reg_email__" type="text" /></div>
					</td>
				</tr>
				<tr>
					<td class="label">
						<label for="reg_email_confirmation__">Re-enter Email:</label></td>
					<td>
						<div class="field_container">
							<input class="inputtext" id="reg_email_confirmation__" name="reg_email_confirmation__" type="text" /></div>
					</td>
				</tr>
				<tr>
					<td class="label">
						<label for="reg_passwd__">New Password:</label></td>
					<td>
						<div class="field_container">
							<input class="inputtext" id="reg_passwd__" name="reg_passwd__" type="password" value="" /></div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p style="text-align: right; ">
	<input tabindex="4" type="submit" value="Submit" /></p>
</form>
        
<div align="center"><h2>V1.0</h2></div>

<%
	// This scriptlet declares and initializes "date"
	System.out.println( "Evaluating date now" );
	java.util.Date date = new java.util.Date();
%>
</body>
</html>