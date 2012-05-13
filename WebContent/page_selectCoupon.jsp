<%@page import="java.util.ArrayList"%>
<%@page import="groupone.Coupon" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${catalog}</title>
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
<td align="center" valign="top"><h1 style="text-align:center; color:gray">${catalog}</h1>
  </td>
</tr>
</table>

<form id="couponSelect" action="SelectCoupon" method="post">
<table cellpadding="15" border="1" style="background-color: #ffffcc;">
	<tr>
	<td>ID</td>
	<td>Title</td>
	<td>Create Date</td>
	<td>Expire Date</td>
	<td>Quantity</td>
	<td>Sold</td>
	<td>Price</td>
	<td>Category</td>
	<td>Select</td>
	</tr>
	
<%
	ArrayList<Coupon> coupons = (ArrayList<Coupon>)request.getAttribute("coupons");
	
	for (Coupon c : coupons) {
%>

	<tr>
	<td><%=c.getId()%></td>
	<td><%=c.getTitle()%></td>
	<td><%=c.getCreateDate()%></td>
	<td><%=c.getExpireDate()%></td>
	<td><%=c.getQuantity()%></td>
	<td><%=c.getSold()%></td>
	<td><%=c.getPrice()%></td>
	<td><%=c.getCategory()%></td>
	<td><input type="checkbox" name="checkBox" value="<%=c.getId()%>">
	</tr>
	
<% 		
	}
%>
</table>

<p><input type="checkbox" name="gift">This is a gift</p>
<p><input type="submit" value="Buy"></p>
</form>

</body>
</html>