<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="groupone.Coupon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<h1>Shopping Cart</h1>

<table align="center" cellpadding="15" border="1" style="background-color: powderblue;">
	<tr>
	<td>Title</td>
	<td>Create Date</td>
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
	<td><%=c.getCreateDate()%></td>
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
			out.println("<td><input type=\"text\" name=\"textField\">");
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

<p><a href="page_browse.jsp">Back</a></p>

</body>
</html>