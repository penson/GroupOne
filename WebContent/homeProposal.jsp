<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="menuscript.js" language="javascript" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="menustyle.css" media="screen, print" />

<meta content="text/html; charset=iso-8859-1"
 http-equiv="Content-Type">
<title></title>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<img src="http://i.imgur.com/xchNB.png" align="left" style="z-index:0">
<form id="homePage" action="HomePage" method="post">
<table style="text-align: center; width: 80%;" border="0"
 	cellpadding="2" cellspacing="2">
    	<tr><td align="right">
<a href="*" onmouseover="setOverImg('1','');" onmouseout="setOutImg('1','');" target=""><img src="buttons/button1up.png" border="0" id="button1" vspace="1" hspace="1"></a><a href="*" onmouseover="setOverImg('2','');" onmouseout="setOutImg('2','');" target=""><img src="buttons/button2up.png" border="0" id="button2" vspace="1" hspace="1"></a><a href="*" onmouseover="setOverImg('3','');" onmouseout="setOutImg('3','');" target=""><img src="buttons/button3up.png" border="0" id="button3" vspace="1" hspace="1"></a><a href="*" onmouseover="setOverImg('4','');" onmouseout="setOutImg('4','');" target=""><img src="buttons/button4up.png" border="0" id="button4" vspace="1" hspace="1"></a><br>
</td></tr></table>
	
</form>

<table border="0"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 100%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:blue">Groupone's Groupon</h1>
  <div align="center">
    <p style="text-align:center; color:blue">Welcome ${account.getFirstName()}</p>
</div></td>
</tr>
</table>


<p>
<p>
<center><img src="http://tctechcrunch2011.files.wordpress.com/2011/03/groupon-fb.png?w=640"></center>


</body>
</html>