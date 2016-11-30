<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>B</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
body {
margin:0 auto;
background-image: url(value="resources/image/backk.jpg");
backgroung-repeat: no-repeat;

  }
    
form
{
width:300px;
padding:20px;
margin:20px;
}
fieldset
{
align:"center";
height:300px;
padding:0px;
margin:0px;
}
</style>

</head>
<body>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="main">FURNITURE WORLD</a></li>
      <li class="active"><a href="main">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Tables</a></li>
          <li><a href="#">Sofa</a></li>
          <li><a href="#">Bed</a></li>
        </ul>
      </li>
      <li><a href="about">About us</a></li>
      
    
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="webb"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav> -->
<div id="a">
  <h2>Login Page</h2>
  <form action="Signin"  method="POST"> 
  
    <div class="form" >
      <label for="username">Username:</label>
      <input type="text" name="username" class="form-control" id="username"  required="required" />
    </div>
    <div class="form2" >
      <label for="pwd">Password:</label>
      <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <input type="submit" class="btn btn-success ribbon"></button>
  </form>
  
  
</div>

</body>
</html>

