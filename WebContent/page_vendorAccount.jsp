<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="groupone.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="groupone.*" %>
<head>
<title>GroupOne Home</title>
<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/qxKzB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="page_vendorHome.jsp" target="_self" title="Home">Home</a></li>
   <li><a href="page_addCoupon.jsp" target="_self" title="Add Coupon">Add Coupon</a></li>
   <li><a href="page_deleteCoupon.jsp" target="_self" title="Delete Coupon">Delete Coupon</a></li>
   <li><a href="page_vendorAccount.jsp" target="_self" title="Account">Account</a></li>
   <li><a href="index.jsp" target="_self" title="Log Out">Log Out</a></li>
	
</ul>

</form>
</div>	

<table border="0" align="center"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 90%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Account Settings</h1>
  </td>
</tr>
</table>

<h3>Change your Email</h3>
<form action="ChangeEmail" id="changeEmailForm" method="post">
<div id="changeEmailContainer">
<table cellpadding="1" cellspacing="0" width="300">
<tbody>
<tr>
<td width="300">Current Email:</td>
<td><%= ((Account)session.getAttribute("account")).getEmail()%></td>
</tr>

<tr>
<td>New Email:</td>
<td><input class="inputtext" id="newEmail" name="newEmail" type="text"></td>
</tr>

<tr>
<td><font color="red">${emailChange}</font></td>
</tr>

<tr>
<td></td>
<td height="50"><input value="Submit" type="submit">
<td>
</tr>
</tbody>
</table>
</div>
</form>

<p>
<p>
<p>
<p>

<h3>Change your Password</h3>
<form action="ChangePassword" id="changePasswordForm" method="post">
<div id="changePasswordContainer">
<table cellpadding="1" cellspacing="0">

<tbody>
<tr>
<td width="135">Current Password:</td>
<td><input class="inputtext" id="currentPassword" name="currentPassword" type="password">
</td>
</tr>

<tr>
<td>New Password:</td>
<td><input class="inputtext" id="newPassword" name="newPassword" type="password">
</td>
</tr>

<tr>
<td>Confirm Password:</td>
<td><input class="inputtext" id="confirmPassword" name="confirmPassword" type="password">
</td>
</tr>

<tr>
<td><font color="red">${errorMsg}</font></td>
</tr>

<tr>
<td></td>
<td height="50"><input value="Submit" type="submit">
</td>
</tr>
</tbody>
</table>
</div>
</form>

</body>
</html>