<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
<html lang="en">
<head>
  <title>FURNITURE WORLD</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
</head>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
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

<h2>Product Information</h2>
<form:form method="POST" action="addproducts" commandName="productformobj">
   <table>
    
    <tr>
        <td><form:label path="productid">Productid :</form:label></td>
        
        <td><form:input path="productid" class="form-control"/></td>
    </tr>
    <tr>
        <td><form:label path="productname">Productname :
       
        </form:label></td>
        <td><form:input path="productname" class="form-control"/></td>
    </tr>
    <tr>
        <td><form:label path="productprice">Productprice :
        
         </form:label></td>
        <td><form:input path="productprice" class="form-control"/></td>
    </tr>
    
    <tr>
        <td><form:label path="quantity">Quantity :
        
        </form:label></td>
        
        <td><form:input path="quantity" class="form-control" /></td>
    </tr>
     <tr>
     <td><form:label path="categories">categories :
     </form:label></td>
     <td><form:select  path="categories"  id="single1">
     <option>LivingRoom</option>
     <option>DiningRoom</option>
     <option>BedRoom</option>
     </form:select>
    </td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="ADDPRODUCT"/>
        </td>
    </tr>
      
</table>  
</form:form>
</body>
</html>

