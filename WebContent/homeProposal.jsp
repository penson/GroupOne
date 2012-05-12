<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="groupone.*" %>
<html>
<head>
<script src="menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="menustyle.css" media="screen, print" />

<meta content="text/html; charset=iso-8859-1"
 http-equiv="Content-Type">
<title></title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img src="http://i.imgur.com/xchNB.png" align="left" style="z-index:0">


<form id="homePage" action="HomePage" method="post">
<table style="text-align: center; width: 80%;" border="0" cellpadding="2" cellspacing="2">
    	<tr><td align="right">

<button type="submit" name="button" value="Home"><img src="buttons/homeUp.png" onmouseover="setOverImg('8','');" onmouseout="setOutImg('8','');" id="button8" alt="submit" border="0" /></button>
<!--  <input type="image" name="button" value="Home" alt="Home" src="buttons/homeUp.png" onmouseover="setOverImg('8','');" onmouseout="setOutImg('8','');" id="button8" />-->
<button type="submit" name="button" value="Browse"><img src="buttons/browseUp.png" onmouseover="setOverImg('1','');" onmouseout="setOutImg('1','');" id="button1" alt="submit" border="0" /></button>
<!-- <input type="image" src="buttons/browseUp.png" value="Browse" onmouseover="setOverImg('1','');" onmouseout="setOutImg('1','');" id="button1" name="button"> -->
<input type="image" src="buttons/orderHistoryUp.png" value="Order History" onmouseover="setOverImg('2','');" onmouseout="setOutImg('2','');" id="button2" name="button">
<input type="image" src="buttons/accountUp.png" value="Account" onmouseover="setOverImg('3','');" onmouseout="setOutImg('3','');" id="button3" name="button">
<input type="image" src="buttons/logoutUp.png" value="Log Out" onmouseover="setOverImg('4','');" onmouseout="setOutImg('4','');" id="button4" name="button" onsubmit="submit-form();"> 

</td></tr></table>
</form>	

</div>

<table border="0"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 100%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:blue">Welcome ${account.getFirstName()}</h1>
  </td>
</tr>
</table>


<p>
<p>
<center><img src="http://i.imgur.com/CKg3x.png"></center>


</body>
</html>