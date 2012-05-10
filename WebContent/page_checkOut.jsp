<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<h1>Check Out</h1>

<p>Title: ${coupon.getTitle()}</p>
<p>Expiration Date: ${coupon.getExpireDate()}</p>
<p>Seller: ${coupon.getVendor()}</p>
<p>$ ${coupon.getPrice()}</p>

<p>Please enter your credit card information</p>
<form id=checkOut action="CheckOut" method="post">
	<table>
		<tr>
		<td>Credit Card Number</td>
		<td><input type="text" name="cardNumber"></td>
		</tr>
		<tr>
		<td>Card Holder's Name</td>
		<td><input type="text" name="name"></td>
		</tr>
		<tr>
		<td>Expiration Date</td>
		<td><input type="text" name="expirationDate"></td>
		</tr>
		<tr>
		<td>Security Code</td>
		<td><input type="text" name="securityCode"></td>
		</tr>
	</table>
	<input type="submit" name="submit" value="Place Your Order">
</form>

<p><a href="page_browse.jsp">Back</a></p>

</body>
</html>