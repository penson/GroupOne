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

<form id="couponSelect" action="CouponSelect" method="post">
<%
	ArrayList<Coupon> coupons = (ArrayList<Coupon>)request.getAttribute("coupons");

	out.println("<TABLE cellpadding=\"15\" border=\"1\" style=\"background-color: #ffffcc;\">");
	
	out.println("<TR>");
	out.println("<TD>ID</TD>");
	out.println("<TD>Title</TD>");
	out.println("<TD>Create Date</TD>");
	out.println("<TD>Expire Date</TD>");
	out.println("<TD>Quantity</TD>");
	out.println("<TD>Sold</TD>");
	out.println("<TD>Price</TD>");
	out.println("<TD>Category</TD>");
	out.println("</TR>");
	
	for (Coupon c : coupons) {
		String id = c.getId();
		out.println("<TR>");
		out.println("<TD>" + c.getId() + "</TD>");
		out.println("<TD>" + c.getTitle() + "</TD>");
		out.println("<TD>" + c.getCreateDate() + "</TD>");
		out.println("<TD>" + c.getExpireDate()+ "</TD>");
		out.println("<TD>" + c.getQuantity() + "</TD>");
		out.println("<TD>" + c.getSold() + "</TD>");
		out.println("<TD>" + c.getPrice() + "</TD>");
		out.println("<TD>" + c.getCategory() + "</TD>");
		out.println("<TD><input type=\"checkbox\" name=\"checkBox\" value=\"${coupons}\"></TD>");
		out.println("</TR>");
	}
	out.println("</TABLE>");
%>

<p><input type="text" name="textBox"></p>
<p><input type="submit" value="Buy"></p>

<p><a href="page_browse.jsp">Back</a></p>
<p><a href="page_home.jsp">Back to home</a></p>
</form>

</body>
</html>