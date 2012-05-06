<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<div><a> </a>
<div><a>
<meta http-equiv="Content-Type"
content="text/html; charset=ISO-8859-1">
<title>Welcome To GroupOne</title>
<style type="text/css">
body
{
background-image:url('http://assets2.grouponcdn.com/images/groupon/landing_pages/bg-drinks.jpg');
}
</style></a></div>
<a> </a></div>
</head>
<body>
<div id="bar">
<form id="signupForm" action="VerifyLogin" method="post"> <a
class="lfloat" href="/GroupOne/index.jsp" title="Go to GroupOne Home"><img
alt="GroupOne logo" class="logo img" src="http://i.imgur.com/cLLbp.png">
</a>
<table align="right" cellspacing="0">
<tbody>
<tr>
<td class="html7magic"><label for="emailAddress">Email</label></td>
<td class="html7magic"><label for="password">Password</label></td>
</tr>
<tr>
<td><input name="emailAddress" size="20" type="text"></td>
<td><input name="password" size="20" type="password"></td>
<td><input tabindex="4" value="Login" type="submit"></td>
</tr>
<tr>
<td class="login_form_label_field"><a
href="page_forgetPassword.jsp">Forgot your password?</a></td>
</tr>
</tbody>
</table>
</form>
</div>
<form action="CreateCustomer" id="signupForm" method="post">
<div class="mbs mainTitle fsl fwb fcb" style="text-align: right;">Not
Registered? No Problem!</div>
<div id="registration_container">
<table class="uiGrid editor" align="right" cellpadding="1"
cellspacing="0">
<tbody>
<tr>
<td class="label"> <label for="c_firstname">First Name:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="firstname" name="c_firstname" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="c_lastname">Last Name:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="lastname" name="c_firstname" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="c_reg_email__">Your Email:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="reg_email__" name="c_reg_email__" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="c_reg_email_confirmation__">Re-enter
Email:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="reg_email_confirmation__" name="c_reg_email_confirmation__"
type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="c_reg_passwd__">New Password:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="reg_passwd__" name="c_reg_passwd__" value="" type="password"></div>
</tbody>
</table>
</div>
<p><br>
&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>
<p style="text-align: right;"> <input tabindex="4" value="Submit"
type="submit"></p>
</form>

<!--  This is where the vendor will create account -->
<form action="CreateVendor" id="signupForm" method="post">
<div class="mbs mainTitle fsl fwb fcb" style="text-align: right;">Vendors! Register Here!!</div>
<div id="registration_container">
<table class="uiGrid editor" align="right" cellpadding="1"
cellspacing="0">
<tbody>
<tr>
<td class="label"> <label for="v_firstname">Company Name:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="companyname" name="v_firstname" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="v_reg_email__">Your Email:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="reg_email__" name="v_reg_email__" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="v_reg_email_confirmation__">Re-enter
Email:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="reg_email_confirmation__" name="v_reg_email_confirmation__"
type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="v_reg_passwd__">New Password:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="reg_passwd__" name="v_reg_passwd__" value="" type="password"></div>
</tbody>
</table>
</div>
<br>
&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>
<p style="text-align: right;"> <input tabindex="4" value="Submit"
type="submit"></p>
</form>
<div align="center">
<h2>V2.0</h2>
</div>
</body>
</html>