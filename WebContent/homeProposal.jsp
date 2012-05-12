<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="groupone.*" %>
<html>
<head>
<style type="text/css">
TABLE
.menu { border-collapse: collapse; float:right;}
</style>
<script src="menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="menustyle.css" media="screen, print" />

<meta content="text/html; charset=iso-8859-1"
 http-equiv="Content-Type">
<title></title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img src="http://i.imgur.com/xchNB.png" align="left" style="z-index:0" style="margin-bottom:0;">


<form id="homePage" action="HomePage" method="post">
    	<table style="margin-right:0px;margin-left:auto;">
    	<tr>
    	<td class="menu" align="right">

<button type="submit" style="border: 0; background: transparent" name="button" value="Home"><img src="buttons/homeUp.png" onmouseover="setOverImg('8','');" onmouseout="setOutImg('8','');" id="button8" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Browse"><img src="buttons/browseUp.png" onmouseover="setOverImg('1','');" onmouseout="setOutImg('1','');" id="button1" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Order History"><img src="buttons/orderHistoryUp.png" onmouseover="setOverImg('2','');" onmouseout="setOutImg('2','');" id="button2" alt="submit" border="0"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Account"><img src="buttons/accountUp.png" onmouseover="setOverImg('3','');" onmouseout="setOutImg('3','');" id="button3" alt="submit" border="0"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Log Out"><img src="buttons/logoutUp.png" onmouseover="setOverImg('4','');" onmouseout="setOutImg('4','');" id="button4" alt="submit" border="0"></button>

</td>
</tr>
</table>
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