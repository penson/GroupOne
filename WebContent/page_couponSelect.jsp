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
<body>

<h1>${catalog}</h1>

<form id="couponSelect" action="CouponSelect" method="post">
<table style="text-align: center; width: 50%; height: 50%;" frame="border" cellpadding="5">
<tbody>

<%
	ArrayList<Coupon> coupons = (ArrayList<Coupon>)request.getAttribute("coupons");

	out.println("<TABLE cellpadding=\"15\" border=\"1\" style=\"background-color: #ffffcc;\">");	
	for (Coupon c : coupons) {
		out.println("<TR>");
		out.println("<TD>" + c.getId() + "</TD>");
		out.println("<TD>" + c.getTitle() + "</TD>");
		out.println("<TD>" + c.getCreateDate() + "</TD>");
		out.println("<TD>" + c.getExpireDate()+ "</TD>");
		out.println("<TD>" + c.getQuantity() + "</TD>");
		out.println("<TD>" + c.getSold() + "</TD>");
		out.println("<TD>" + c.getPrice() + "</TD>");
		out.println("<TD>" + c.getCategory() + "</TD>");
		out.println("<TD><input type=\"button\" name=\"buyButton\" value=\"Buy\"></TD>");
		out.println("</TR>");
	}
	out.println("</TABLE>");
%>

</tbody>
</table>

<p><a href="page_browse.jsp">Back</a></p>
<p><a href="page_home.jsp">Back to home</a></p>
</form>

</body>
</html>