<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="groupone.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="groupone.*" %>
<head>
<title>Add Coupon</title>
</head>
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
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Add Coupon</h1>
  </td>
</tr>
</table>

<p align="center"><b>${couponAdded}</b></p>
<p align="center"><b>${couponError}</b></p>
<p>
<p>
<p>
<p>
<form action="AddCoupon" id="addCouponForm" method="post">
<div class="mbs mainTitle fsl fwb fcb" style="text-align: center;">Complete Information To Add Coupon</div>
<div id="addCoupon_container">
<p>
<p>
<table class="uiGrid editor" align="center" cellpadding="1" cellspacing="0">
<tbody>
<tr>
<td class="label"> <label for="title">Coupon Title:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="firstname" name="title" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="expire_date">Expiration Date:</label></td>
<td>
<div class="field_container"> <select name="month">
	<option value="1">January
	<option value="2">February
	<option value="3">March
	<option value="4">April
	<option value="5">May
	<option value="6">June
	<option value="7">July
	<option value="8">August
	<option value="9">September
	<option value="10">October
	<option value="11">November
	<option value="12">December
</select>
<select name="day">
	<option value="1">1
	<option value="2">2
	<option value="3">3
	<option value="4">4
	<option value="5">5
	<option value="6">6
	<option value="7">7
	<option value="8">8
	<option value="9">9
	<option value="10">10
	<option value="11">11
	<option value="12">12
	<option value="13">13
	<option value="14">14
	<option value="15">15
	<option value="16">16
	<option value="17">17
	<option value="18">18
	<option value="19">19
	<option value="20">20
	<option value="21">21
	<option value="22">22
	<option value="23">23
	<option value="24">24
	<option value="25">25
	<option value="26">26
	<option value="27">27
	<option value="28">28
	<option value="29">29
	<option value="30">30
	<option value="31">31
</select>
<select name="year">
	<option value="2012">2012
	<option value="2013">2013
	<option value="2014">2014
	<option value="2015">2015
</select>
</div>
</td>
</tr>
<tr>
<td class="label"> <label for="quantity">Quantity:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="quantity" name="quantity" type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="price">Price:</label></td>
<td>
<div class="field_container"> <input class="inputtext"
id="price" name="price"
type="text"></div>
</td>
</tr>
<tr>
<td class="label"> <label for="category">Category:</label></td>
<td>
<div class="field_container"> <select name="category">	
<option value="travel">Travel</option>
<option value="food">Food</option>
<option value="moving">Moving</option>
<option value="health">Health</option>
<option value="photography">Photography</option>
<option value="footwear">Footwear</option>
<option value="magazone">Magazine</option>
<option value="homedecorating">Home Decorating</option>
</select>
</div>
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
