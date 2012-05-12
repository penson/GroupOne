<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<ul id="menu">
   <li><a href="" target="_self" title="Home" class="current">Home</a></li>
   <li><a href="" target="_self" title="Browse">Browse</a></li>
   <li><a href="" target="_self" title="Order History">Order History</a></li>
   <li><a href="" target="_self" title="Account">Account</a></li>
   <li><a href="" target="_self" title="Log Out">Log Out</a></li>
</ul>

<h1 style="text-align:center; color:blue"> Groupone's Groupon</h1>
<p style="text-align:center; color:blue">Welcome ${account.getFirstName()}</p>

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

<center><img src="http://tctechcrunch2011.files.wordpress.com/2011/03/groupon-fb.png?w=640"/></center>

</body>
</html>
