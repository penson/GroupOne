<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="groupone.*" %>
<html>
<head>
<title>GroupOne Home</title>
<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/qxKzB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="page_home.jsp" target="_self" title="Home">Home</a></li>
   <li><a href="page_browse.jsp" target="_self" title="Browse">Browse</a></li>
   <li><a href="page_orderHist.jsp" target="_self" title="Order History">Order History</a></li>
   <li><a href="page_account.jsp" target="_self" title="Account">Account</a></li>
   <li><a href="index.jsp" target="_self" title="Log Out">Log Out</a></li>
	
</ul>

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


</body>
</html>