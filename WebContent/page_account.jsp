<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="groupone.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<h1 style="text-align:center; color:blue">Account Setting</h1>
<h3>Change your Email</h3>
<form action="ChangeEmail" id="changeEmailForm" method="post">
<div id="changeEmailContainer">
<table cellpadding="1" cellspacing="0" width="300">
<tbody>
<tr>
<td width="300">Current Email:</td>
<td>${userEmail}
</td>
</tr>

<tr>
<td>New Email:</td>
<td><input class="inputtext" id="newEmail" name="newEmail" type="text">
<font color="red">${emailChange}</font>
<font color="red">${emailError}</font>
<font color="red">${emailTaken}</font>
</td>
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

<h3>Change your Email</h3>
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
<td><input class="inputtext" id="newPassword" name="newPassword" type="password"><br>
<font color="red">${passwordChange}</font>
<font color="red">${passwordError}</font>
<font color="red">${passwordNoMatch}</font>
</td>
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

<p><a href="page_home.jsp">Back</a></p>

</body>
</html>