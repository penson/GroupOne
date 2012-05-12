<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="groupone.*" %>
<head>
<title>Password Reset</title>
<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/qxKzB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="index.jsp" target="_self" title="Home">Home</a></li>
	
</ul>

</form>
</div>	

<table border="0"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 90%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Reset Your Password</h1>
  </td>
</tr>
<tr>
<td align="center" valign="top"><h3 style="text-align:center; color:gray">Enter your email address and select a new password</h3>
</table>

<form name="resetForm" action="ResetPassword" onSubmit="comparePasswords()" method="post">
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
<p align="center"><font color="red">${passwordNoMatch}</font>
<p align="center"><font color="red">${passwordError}</font>
<p align="center">
  <input value="Submit" type="submit">
</form>
</body>
</html>