<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<
<head>
  <title>B</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="main">FURNITURE WORLD</a></li>
      <li class="active"><a href="main">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="tt.jsp">Tables</a></li>
          <li><a href="ss.jsp">Sofa</a></li>
          <li><a href="bb.jsp">Bed</a></li>
        </ul>
      </li>
      <li><a href="about">About us</a></li>
      <li><a href="admin/product/addproduct">Admin</a></li>
    
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="webb"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
 -->
<body>
<h1>About Us</h1>
<p2>The word "furniture" refers to movable objects intended to support various human activities such as seating (e.g., chairs, stools, tables and sofas) and sleeping (e.g., beds). Furniture is also used to hold objects at a convenient height for work (as horizontal surfaces above the ground, such as tables and desks), or to store things (e.g., cupboards and shelves). Furniture can be a product of design and is considered a form of decorative art. In addition to furniture's functional role, it can serve a symbolic or religious purpose. It can be made from many materials, including metal, plastic, and wood. Furniture can be made using a variety of woodworking joints which often reflect the local culture.
</p2>
<div id="images_hz">
<img src="<c:url value='resources/image/t.jpg'/>">  

<img src="<c:url value='resources/image/tt.jpg'/>"> 
<img src="<c:url value='resources/image/cc.jpg'/>"> 
<img src="<c:url value='resources/image/bb.jpg'/>"> 
<img src="<c:url value='resources/image/yy.jpg'/>"> 
<img src="<c:url value='resources/image/ee.jpg'/>"> 
<img src="<c:url value='resources/image/gg.jpg'/>"> 
<img src="<c:url value='resources/image/bbbbb.jpg'/>"> 
</div>
</body>
</html>