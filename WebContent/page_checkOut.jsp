<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="groupone.Coupon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout</title>
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
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Shopping Cart</h1>
  </td>
</tr>
</table>
<table align="center" cellpadding="15" border="1" style="background-color: powderblue;">
	<tr>
	<td>Title</td>
	<td>Expire Date</td>
	<td>Price</td>
	<td>Category</td>
	</tr>

<%
	ArrayList<Coupon> coupons = (ArrayList<Coupon>)request.getAttribute("coupons");

	for(Coupon c : coupons) {
%>

	<tr>
	<td><%=c.getTitle()%></td>
	<td><%=c.getExpireDate()%></td>
	<td><%=c.getPrice()%></td>
	<td><%=c.getCategory()%></td>
	</tr>

<%
	}
%>
</table>
<br/>
<p>Please enter your credit card information</p>
<form id=checkOut action="CheckOut" method="post">
	<table>
<%
		if(request.getAttribute("gift") != null) {
			out.println("<tr>");
			out.println("<td>Recepient Email Address</td>");
			out.println("<td><input type=\"text\" name=\"giftEmail\">");
			out.println("</tr>");
		}
%>
		<tr>
		<td>Credit Card Number</td>
		<td><input type="text" name="textField"></td>
		</tr>
		<tr>
		<td>Card Holder's Name</td>
		<td><input type="text" name="textField"></td>
		</tr>
		<tr>
		<td>Expiration Date</td>
		<td><input type="text" name="textField"></td>
		</tr>
		<tr>
		<td>Security Code</td>
		<td><input type="text" name="textField"></td>
		</tr>
	</table>
	<input type="hidden" name="objectId" value="${objectId}">
	<input type="hidden" name="coupons" value="${objectId2}">
	<input type="hidden" name="gift" value="${gift}">
	<input type="submit" name="submit" value="Place Your Order">
</form>

</body>
</html>