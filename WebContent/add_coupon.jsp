<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="groupone.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
TABLE
.menu { border-collapse: collapse; float:right;}
</style>
<script src="menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="menustyle.css" media="screen, print" />
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Add Coupon</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<div id="banner">
<img src="http://i.imgur.com/xchNB.png" align="left" style="z-index:0" style="margin-bottom:0;">

<form id="homePage" action="HomePage" method="post">
    	<table style="margin-right:0px;margin-left:auto;">
    	<tr>
    	<td class="menu" align="right">

<button type="submit" style="border: 0; background: transparent" name="button" value="Home"><img src="buttons/homeUp.png" onmouseover="setOverImg('8','');" onmouseout="setOutImg('8','');" id="button8" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Add Coupon"><img src="buttons/addUp.png" onmouseover="setOverImg('5','');" onmouseout="setOutImg('5','');" id="button5" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Delete Coupon"><img src="buttons/deleteUp.png" onmouseover="setOverImg('6','');" onmouseout="setOutImg('6','');" id="button6" alt="submit" border="0" WIDTH="100%"></button>
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
