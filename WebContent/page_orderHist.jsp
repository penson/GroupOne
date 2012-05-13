<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="groupone.Transaction" %>
<%@ page import="groupone.DBOperation" %>
<%@ page import="groupone.Coupon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Order History</title>
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
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Order History</h1>
  </td>
</tr>
</table>
<table cellpadding="15" border="1" style="background-color: #ffffcc;">
	<tr>
	<td>Transaction ID</td>
	<td>Title</td>
	<td>Date</td>
	<td>Price</td>
	<td>Category</td>
	<td>Type</td>
	<td>Recipient Email</td>
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
			<td><%=coupon.getTitle()%></td>
			<td><%=t.getDate()%></td>
			<td><%=coupon.getPrice()%></td>
			<td><%=coupon.getCategory()%></td>
			<td><%=t.getType()%></td>
			<td><%=t.getEmail()%></td>
			</tr>

<%
		}
	}
%>

</body>
</html>