<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="groupone.*" %>  
<html>
<head>
<script type="text/javascript">
function showOption(id)
{
	sites = ['/GroupOne/add_coupon.jsp','/GroupOne/DeleteCouponPage','/GroupOne/vendorAccount.jsp']
	var site = sites[id];

	document.getElementById('f1').src = site;
	document.getElementById('f1').style.visibility='visible';
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendor Page</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<form id="homePage"; action="HomePage"; method="post">
	<table style="text-align: center; width: 100%;" border="0"
 	cellpadding="2" cellspacing="2">	
  		<tbody>
    	<tr>
      		<th><input type="submit" name="button" value="Browse"></th>
      		<th><input type="submit" name="button" value="Order History"></th>
      		<th><input type="submit" name="button" value="Account"></th>
      		<th><input type="submit" name="button" value="Log Out"></th>
    	</tr>
  		</tbody>
	</table>
	
</form>

<h1 style="text-align:center; color:blue">${companyName} Page</h1>
<p><h1 style="text-align:center;">Choose an Option</h1>
<p>
<form style = text-align:center> <input name="option" value="AddCoupon" type="radio" onclick="showOption(0)">Add a
Coupon
<input name="option" value="deleteCoupon" type="radio" onclick="showOption(1)"> Delete a
Coupon
<input name="option" value="account" type="radio" onclick="showOption(2)"> Account
</form>
<div style="visibility:hidden"><iframe id="f1"
src=""
marginheight="0" marginwidth="0" frameborder="0" height="500"
width="1200" scrolling = "yes" ALLOWTRANSPARENCY="true">Loading...</iframe><br>
</div>
</body>
</html>