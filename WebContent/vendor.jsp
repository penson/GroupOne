<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function showOption(id)
{
	sites = ['http://localhost:8080/GroupOne/add_coupon.jsp', 'http://localhost:8081/GroupOne/DeleteCouponPage']
	var site = sites[id];
	
	document.getElementById('f1').src = site;
	document.getElementById('f1').style.visibility='visible';
}
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendor Page</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">

<p>
<form> <input name="option" value="addCoupon" type="radio" onclick="showOption(0)">Add a
Coupon<br>
<input name="option" value="deleteCoupon" type="radio" onclick="showOption(1)"> Delete a
Coupon
</form>
<div style="visibility:hidden"><iframe id="f1"
src=""
marginheight="0" marginwidth="0" frameborder="0" height="500"
width="600" scrolling = "no" ALLOWTRANSPARENCY="true">Loading...</iframe><br>
</div>
</body>
</html>