<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="groupone.*" %>  
<html>
<head>
<title>Welcome To GroupOne</title>
<style type="text/css">
body
{
background-image:url('http://assets2.grouponcdn.com/images/groupon/landing_pages/bg-drinks.jpg');
}
</style>
</head>
<body>
<% request.getSession().invalidate(); %>
<div id="header">
  <form id="signupForm" action="VerifyLogin" method="post">
  <table align="right" cellspacing="0">
<tbody>
<tr>
<td><label for="emailAddress">Email</label></td>
<td><label for="password">Password</label></td>
</tr>
<tr>
<td><input name="emailAddress" size="20" type="text"></td>
<td><input name="password" size="20" type="password"></td>
<td><input tabindex="4" value="Login" type="submit"></td>
</tr>
<tr>

<td><a href="page_forgetPassword.jsp">Forgot your password?</a><br>
<font color="red">${errorMsg}</font>
<font color="red">${passwordReset}</font>
<font color="red">${noEmailExists}</font>
</td>
</tr>
</tbody>
</table>
  <a href="/GroupOne/index.jsp" title="Go to GroupOne Home"><img src="http://i.imgur.com/H0YFr.png"
alt="GroupOne logo" hspace="0" vspace="0" align="left" class="logo img"></a>
  </form>
</div>

<!-- This is where normal user will register -->
<form action="CreateCustomer" id="signupForm" method="post">
  <div style="text-align: right;">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><b>Not Registered? No Problem!</b></p>
    <div align="right"><font color="red">${customer_error}</font></div>
  </div>
<div id="registration_container">
<table align="right" cellpadding="1"
cellspacing="0">
<tbody>
<tr>
<td>First Name:</td>
<td><input class="inputtext"
id="firstname" name="c_firstname" type="text">
</td>
</tr>


<tr>
<td>Last Name:</td>
<td><input class="inputtext"
id="lastname" name="c_lastname" type="text">
</td>
</tr>

<tr>
<td>Your Email:</td>
<td><input class="inputtext" id="reg_email__" name="c_reg_email__" type="text">
</td>
</tr>

<tr>
<td>Re-enter Email:</td>
<td><input class="inputtext"
id="reg_email_confirmation__" name="c_reg_email_confirmation__"
type="text">
</td>
</tr>

<tr>
<td>New Password:</td>
<td><input class="inputtext" id="reg_passwd__" name="c_reg_passwd__" value="" type="password"></td>
</tr>

</tbody>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="right"><input value="Submit" type="submit"></p>
</div>
</form>

<!--  This is where the vendor will create account -->
<form action="CreateVendor" id="signupForm" method="post">
<div style="text-align: right;">
<p><b>Vendors! Register Here!!</b></p>
<div align="right"><font color="red">${vendor_error}</font></div>
</div>
<div id="registration_container">
<table align="right" cellpadding="1"
cellspacing="0">

<tbody>
<tr>
<td>Company Name:</td>
<td><input class="inputtext"
id="companyname" name="v_firstname" type="text">
</td>
</tr>

<tr>
<td>Your Email:</td>
<td><input class="inputtext"
id="reg_email__" name="v_reg_email__" type="text">
</td>
</tr>

<tr>
<td>Re-enter Email:</td>
<td><input class="inputtext"
id="reg_email_confirmation__" name="v_reg_email_confirmation__"
type="text">
</td>
</tr>

<tr>
<td>New Password:</td>
<td><input class="inputtext" id="reg_passwd__" name="v_reg_passwd__" value="" type="password"></td>

</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="right"><input value="Submit" type="submit">
</div>
</form>


<div align="center">
<h2>V2.0</h2>
</div>
</body>
</html>