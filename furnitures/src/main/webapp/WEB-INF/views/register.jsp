<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


  <title>B</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body>
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




<h1>Registration Form</h1>
<form:form method="POST" action="register" commandName="user">
<table>
     <tr>
        <td><form:label path="name">Name :
       </form:label></td>
        <td><form:input path="name"  type="text" class="form-control"  pattern="^[a-zA-Z''-'\s]{8,40}$" title="minimum 8 character uppercase or lowercase" required=""></form:input></td></tr>
   <br>
        
   
        <tr>
        <td><form:label path="username">Username :
        </form:label></td>
        <td><form:input  path="username" type="text"  class="form-control" pattern="^[a-zA-Z''-'\s]{8,40}$" title="minimum 8 chracters uppercase or lowercase" required="required" ></form:input></td></tr> 
        <tr>
        
        <td><form:label path="password">Password :
        </form:label></td>
        <td><form:input path="password" type="password" class="form-control" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" title="at least 8 char"  required=""></form:input></td></tr>
        
        <tr>
        <td><form:label path="email">Email :
         </form:label></td>
        <td><form:input path="email" type="email" class="form-control"     required=""></form:input></td></tr>
        
        <tr>
        <td><form:label path="contact">Contact : 
        </form:label></td>
        <td><form:input path="contact" type="numbers" class="form-control"   required="required"></form:input></td></tr>
        
        <tr>
        <td><form:label path="address">Address :
        </form:label></td>
        
        <td><form:input path="address" type="text" class="form-control" required=""></form:input></td></tr>
        
<tr>
        <td><form:label path="city">City :
        
        </form:label></td>
        <td><form:input path="city" type="text" class="form-control"  required=""></form:input></td></tr>
        
 <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>

</table>
</form:form>
</body>
</html>
 







