<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=ISO-8859-1"
 http-equiv="content-type">
<title></title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<tr>
<td colspan="2">
<img src="http://i.imgur.com/xchNB.png"
alt="GroupOne logo" hspace="0" vspace="0" align="left" class="logo img">
<h1 style="text-align:center; color:blue"> Groupone's Groupon</h1>
<p style="text-align:center; color:blue">Welcome ${account.getFirstName()}</p>
</td>
</tr>

<form id="homePage" action="HomePage" method="post">
	<table style="text-align: center; width: 100%;" border="0"
 	cellpadding="2" cellspacing="2">	
  		<tbody>
    	<tr>
      		<th><input type="submit" name="button" value="Browse"></th>
      		<th><input type="submit" name="button" value="Order History"></th>
      		<th><input type="submit" name="button" value="Account"></th>
      		<th><input type="submit" name="button" value="Log Out"></th>
    	</tr>
  		</tbody>
	</table>
	
</form>

<center><img src="http://tctechcrunch2011.files.wordpress.com/2011/03/groupon-fb.png?w=640"/></center>

</body>
</html>