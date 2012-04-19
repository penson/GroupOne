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
	background-image:url('http://i.imgur.com/kQLqM.jpg');	
}
</style>
</head>
<body>
	<div id="topBar">
	<div id="bar">
	<a class="lfloat" href="/GroupOne/index.jsp" title="Go to GroupOne Home"><img class="logo img" src="http://i.imgur.com/cLLbp.png" alt="GroupOne logo">
    </a>
    <div class="alignRight">
    <form id="loginForm" action="TestServlet" method="POST">
    <table cellspacing="0">
    <tbody>
    <tr>
    <td class="html7magic">
    <label for="userName">Email</label>
    </td>
    <td class="html7magic">
    <label for="password">Password</label>
    </td>
    </tr>
    <tr>
    	<td>
        <input type="text" name="userName" size="20">
        </td>
        <td>
        <input type="text" name="password" size="20">
        </td>
        <td>
        <input type="submit" value="Login" tabindex="4">
        </td>
        </tr>
        <tr>
        <td class="login_form_label_field">
        <a href="recover">Forgot your password?</a>
        </td>
        </tr>
    </tbody>
    </table>
    </form>
    	</div>
    </div>
    </div>
    <form id="signupForm" action="RegistrationConfirmation" method="POST">
    
    <div class="mbm phm headerTextContainer">
    <div class="mbs mainTitle fsl fwb fcb">Not Registered? No Problem!</div>
    <div id="registration_container">
    <table class="uiGrid editor" cellspacing="0" cellpadding="1"><tbody><tr>
    <td class="label"><label for="firstname">First Name:</label></td><td><div class="field_container">
    <input type="text" class="inputtext" id="firstname" name="firstname"></div></td></tr><tr>
    <td class="label"><label for="lastname">Last Name:</label></td><td><div class="field_container"><input type="text" class="inputtext" id="lastname" name="lastname"></div></td></tr>
    <tr><td class="label"><label for="reg_email__">Your Email:</label></td>
    <td><div class="field_container"><input type="text" class="inputtext" id="reg_email__" name="reg_email__"></div></td></tr>
    <tr><td class="label"><label for="reg_email_confirmation__">Re-enter Email:</label></td><td>
    <div class="field_container"><input type="text" class="inputtext" id="reg_email_confirmation__" name="reg_email_confirmation__">
    </div></td></tr><tr><td class="label"><label for="reg_passwd__">New Password:</label></td><td><div class="field_container"><input type="password" class="inputtext" id="reg_passwd__" name="reg_passwd__" value=""></div></td></tr><tr>
    </tr></tbody></table>
    <input type="submit" value="Submit" tabindex="4">
    </div>
    </div>
    </form>
    
    <h2>V1.0</h2>
</body>
</html>