<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="groupone.*" %>
<head>
<script type="text/javascript">
				function update()
				{
				homepage.submit();
				}
				</script>

<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />


<title>GroupOne Home</title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/xchNB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="home_proposal.jsp" target="_self" title="Home">Home</a></li>
   <li><a href="/page_browse.jsp" target="_self" title="Browse">Browse</a></li>
   <li><a href="/page_orderHist.jsp" target="_self" title="Order History">Order History</a></li>
   <li><a href="/page_account.jsp" target="_self" title="Account">Account</a></li>
   <li><a href="/index.jsp" target="_self" title="Account">Log Out</a></li>
	
</ul>

</form>
</div>	

<table border="0"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 90%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:blue">Welcome ${account.getFirstName()}</h1>
  </td>
</tr>
</table>


<p>
<p>
<center><img src="http://i.imgur.com/CKg3x.png"></center>


</body>
</html>