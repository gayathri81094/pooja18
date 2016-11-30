<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FURNITURE</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="styles.css">

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FURNITURE WORLD</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="main">Home</a></li>
      
       
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Catog?cat=LivingRoom">LivingRoom</a></li>
          <li><a href="Catog?cat=BedRoom">BedRoom</a></li>
          <li><a href="Catog?cat=DiningRoom">DiningRoom</a></li>
           </ul>
      </li>
         
      
      <li><a href="about">About us</a></li>
    </ul>  
    
    
    
    <ul class="nav navbar-nav navbar-right">
     <c:if test="${sessionScope.name eq null }">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
      <li><a href="webb"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </c:if>
  <c:if test="${sessionScope.name ne null }">
<h1>Hai,"${sessionScope.name}"</h1>
  <li><a href="logout"> Logout</a></li>
   </ul>
    </c:if>
    </div>
</nav>

</body>
</html>