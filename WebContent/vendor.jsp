<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="groupone.*" %>  
<html>
<head>
<script type="text/javascript">
function showOption(id)
{
	sites = ['/GroupOne/add_coupon.jsp','/GroupOne/DeleteCouponPage']
	var site = sites[id];

	document.getElementById('f1').src = site;
	document.getElementById('f1').style.visibility='visible';
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendor Page</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<p><h1 style="text-align:center;">Vendor Page</h1>
<p><h1 style="text-align:center;">Choose an Option</h1>
<p>
<form style = text-align:center> <input name="option" value="AddCoupon" type="radio" onclick="showOption(0)">Add a
Coupon
<input name="option" value="deleteCoupon" type="radio" onclick="showOption(1)"> Delete a
Coupon
</form>
<FORM style = text-align:right METHOD="LINK" ACTION="/GroupOne/index.jsp">
<INPUT TYPE="submit" VALUE="Log Out">
</FORM>
<div style="visibility:hidden"><iframe id="f1"
src=""
marginheight="0" marginwidth="0" frameborder="0" height="500"
width="1200" scrolling = "yes" ALLOWTRANSPARENCY="true">Loading...</iframe><br>
</div>
</body>
</html>