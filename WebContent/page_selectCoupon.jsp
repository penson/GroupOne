<%@page import="java.util.ArrayList"%>
<%@page import="groupone.Coupon" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<h1>${catalog}</h1>

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
<p><a href="page_browse.jsp">Back</a></p>
<p><a href="page_home.jsp">Back to home</a></p>
</form>

</body>
</html>