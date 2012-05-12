<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="groupone.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="java.util.*" %>  
<%@ page import="groupone.*" %>
<head>
<title>Delete Coupon</title>
</head>
<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/qxKzB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="page_vendorHome.jsp" target="_self" title="Home">Home</a></li>
   <li><a href="page_addCoupon.jsp" target="_self" title="Add Coupon">Add Coupon</a></li>
   <li><a href="page_deleteCoupon.jsp" target="_self" title="Delete Coupon">Delete Coupon</a></li>
   <li><a href="page_vendorAccount.jsp" target="_self" title="Account">Account</a></li>
   <li><a href="index.jsp" target="_self" title="Log Out">Log Out</a></li>
	
</ul>

</form>
</div>	

<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<%
ArrayList<Coupon> coupons = (ArrayList<Coupon>)request.getAttribute("coupons");

for (Coupon c : coupons) {
%>
<TR>
<TD><%=c.getId()%></TD>
<TD><%=c.getTitle()%></TD>
<TD><%=c.getCreateDate()%></TD>
<TD><%=c.getExpireDate()%></TD>
<TD><%=c.getQuantity()%></TD>
<TD><%=c.getSold()%></TD>
<TD><%=c.getPrice()%></TD>
<TD><%=c.getCategory()%></TD>
<TD>
<form action="DeleteCoupon" method="post">
	<button name="couponDelete" value="<%=c.getId()%>" type="submit">Delete!</button>
</form>
</TD>
</TR>

<% } %>


</body>
</html>