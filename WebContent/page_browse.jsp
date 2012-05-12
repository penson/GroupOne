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
<title>GroupOne Home</title>
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
<table border="0" align="center"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 90%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Choose a catalog to browse</h1>
  </td>
</tr>
</table>

<form id="browseCatalog" action="BrowsePage" method="post">
<table style="text-align: center; width: 50%; height: 50%;" frame="border" cellpadding="5" align="center">
  <tbody>
    <tr>
		<td><img src="http://s3.grouponcdn.com/images/site_images/2143/0614/Kalani-01_wide.jpg" alt="Travel" title = "Travel" width="340" height="207"/></td>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2151/5991/servlet_grid_6.jpg" alt="Food" width="340" height="207"/></td>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2157/7960/IMAGE-Aarons-Moving2_grid_6.jpg" alt="Moving" width="340" height="207"/></td>
    </tr>
    <tr>
    	<td><input type="submit" name="catalogBtn" value="Travel"></td>
    	<td><input type="submit" name="catalogBtn" value="Food"></td>
    	<td><input type="submit" name="catalogBtn" value="Moving"></td>
    </tr>    
    <tr>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2152/5626/IMAGE-Hiking-Yoga-7_grid_6.jpg" alt="Health" width="340" height="207"/></td>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2160/3661/IMAGE-Inspiring-Images-Photography-2_grid_6.jpg" alt="Photography" width="340" height="207"/></td>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2155/7914/IMAGE-American-Rag-Mens-shoes-Division-6_grid_6.jpg" alt="Footwear" width="340" height="207"/></td>
    </tr>
    <tr>
    	<td><input type="submit" name="catalogBtn" value="Health"></td>
    	<td><input type="submit" name="catalogBtn" value="Photography"></td>
    	<td><input type="submit" name="catalogBtn" value="Footwear"></td>
    </tr>    
    <tr>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2145/7667/IMAGE-Blue-Dolphin-Magazines-10-TITLES-3_grid_6.jpg" alt="Magazine" width="340" height="207"/></td>
      	<td><img src="http://s3.grouponcdn.com/images/site_images/2144/9776/IMAGE-3-Day-Blinds2_grid_6.jpg" width="340" height="207"></td>
      	<td></td>
    </tr>
    <tr>
    	<td><input type="submit" name="catalogBtn" value="Magazine"></td>
    	<td><input type="submit" name="catalogBtn" value="Home Decorating"></td>
    	<td><input type="submit" name="catalogBtn" value="Other"></td>
    </tr>
  </tbody>
</table>
</form>

<p><a href="page_home.jsp">Back</a></p>


</body>
</html>