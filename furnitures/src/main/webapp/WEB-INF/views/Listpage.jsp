
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="#">FURNITURE WORLD</a></li>
    <li class="active"><a href="main">Home</a></li>
      
      
    
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <li class="active"><a href="addproduct">Add</a></li>
    <li class="active"><a href="Listpage">View</a></li>
    <li class="active"><a href="main">Log Out</a></li>
      
    </ul>
  </div>
</nav>
<H1> List of Products</H1>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<table border="0" class="table table-striped table-hover">
		<tr>
	
			<th>PRODUCT ID</th>
			<th>PRODUCT NAME</th>
			<th>PRODUCT PRICE</th>
			<th>QUANTITY</th>
			<th>CATEGORIES</th>
			<th>edit/delete</th>
		</tr>
		<!--  for Each book b in books -->
		
		<c:forEach items="${lobj}" var="b">
		<tr>
	 
	   <td>${b.productid}</td>
	   <td>${b.productname}</td>
	   <td>${b.productprice}</td>
	   <td>${b.quantity}</td>
	   <td>${b.categories}</td>
	   
	   
	   
	    <%-- <td><a href="getProductsByid/${b.productid}" >${b.productid}</a></td> --%>
		<td>
		<a href="admin/product/update/${b.productid}"><span class="glyphicon glyphicon-edit"></span></a>
		<a href="admin/product/delete/${b.productid}"><span class="glyphicon glyphicon-remove"></span></a>
		</td>
		</tr>
		
		</c:forEach>
	</table>

</body>
</html>
