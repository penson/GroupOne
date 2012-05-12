<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>  
<%@ page import="groupone.Coupon" %>  
<html>
<head>
<style type="text/css">
TABLE
.menu { border-collapse: collapse; float:right;}
</style>
<script src="menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="menustyle.css" media="screen, print" />
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>Delete Coupon</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<div id="banner">
<img src="http://i.imgur.com/xchNB.png" align="left" style="z-index:0" style="margin-bottom:0;">

<form id="homePage" action="HomePage" method="post">
    	<table style="margin-right:0px;margin-left:auto;">
    	<tr>
    	<td class="menu" align="right">

<button type="submit" style="border: 0; background: transparent" name="button" value="Home"><img src="buttons/homeUp.png" onmouseover="setOverImg('8','');" onmouseout="setOutImg('8','');" id="button8" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Add Coupon"><img src="buttons/addUp.png" onmouseover="setOverImg('5','');" onmouseout="setOutImg('5','');" id="button5" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Delete Coupon"><img src="buttons/deleteUp.png" onmouseover="setOverImg('6','');" onmouseout="setOutImg('6','');" id="button6" alt="submit" border="0" WIDTH="100%"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Account"><img src="buttons/accountUp.png" onmouseover="setOverImg('3','');" onmouseout="setOutImg('3','');" id="button3" alt="submit" border="0"></button>
<button type="submit" style="border: 0; background: transparent" name="button" value="Log Out"><img src="buttons/logoutUp.png" onmouseover="setOverImg('4','');" onmouseout="setOutImg('4','');" id="button4" alt="submit" border="0"></button>

</td>
</tr>
</table>
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