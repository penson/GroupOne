<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String catalog = (String)request.getAttribute("catalog");
	out.write("<h1>"+catalog+"</h1>");
%>

<p><a href="page_browse.jsp">Back to catalog</a></p>
<p><a href="page_home.jsp">Back to Home</a></p>

</body>
</html>