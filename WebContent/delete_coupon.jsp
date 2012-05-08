<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>  
<%@ page import="groupone.Coupon" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Coupon</title>
</head>
<body>

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
</TR>
<% } %>


</body>
</html>