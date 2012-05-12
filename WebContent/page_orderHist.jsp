<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="groupone.Transaction" %>
<%@ page import="groupone.DBOperation" %>
<%@ page import="groupone.Coupon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<h1>Order History</h1>

<table cellpadding="15" border="1" style="background-color: #ffffcc;">
	<tr>
	<td>Transaction ID</td>
	<td>Date</td>
	<td>Title</td>
	<td>Price</td>
	<td>Category</td>
	<td>Type</td>
	</tr>

<%
	HttpSession userSession = request.getSession(false);
	String accountId = userSession.getAttribute("accountId").toString();
	ArrayList<Transaction> transactions = DBOperation.getTransactionList();
	//ArrayList<Transaction> filtered = new ArrayList<Transaction>();
	
	for(Transaction t : transactions) {
		if(t.getIdTransAcct().equalsIgnoreCase(accountId)) {
			String couponId = t.getIdTransCoup();
			Coupon coupon = DBOperation.searchCoupon(couponId);
%>

			<tr>
			<td><%=t.getIdTransaction()%></td>
			<td><%=t.getDate()%></td>
			<td><%=coupon.getTitle()%></td>
			<td><%=coupon.getPrice()%></td>
			<td><%=coupon.getCategory()%></td>
			<td><%=t.getType()%></td>
			</tr>

<%
		}
	}
%>

<p><a href="page_home.jsp">Back</a></p>

</body>
</html>