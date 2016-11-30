<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<table border="1" cellpadding="5">
		<H1> List of Categories</H1>
		<tr>
	
			<th>ProductName</th>
			<th>ProductPrice</th>
			<th>Quantity</th>
			<th>view</th>
		</tr>

<c:forEach items="${prot }" var="cat">
<tr>
<td>${cat.getProductname()}</td>
<td>${cat.getProductprice()}</td>
<td>${cat.getQuantity()}</td>
<td><a href="#"><span class="glyphicon glyphicon-eye-open"></span></a></td>
		


</tr>
</c:forEach>
</table>
</div>


</body>
</html>