<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/product/update" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editProdObj">
		<table>
		<tr>
			<td><form:label path="productid">productId</form:label></td>
			<td><form:input path="productid" disabled="true"/>
			<form:hidden path="productid" /></td>
        </tr>
        <tr>
        <td><form:label path="productname">Product Name</form:label>  </td>
        <td><form:input path="productname"></form:input></td>
	    </tr>
	     <tr>
        <td><form:label path="Productprice">Product Price</form:label>  </td>
        <td><form:input path="Productprice"></form:input></td>
	    </tr>
	    <tr>
	    <td><form:label path="quantity">Quantity</form:label>  </td>
        <td><form:input path="quantity"></form:input></td>
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
	    <td colspan="2"><input type="submit" value="EditBook"></td>
	    </tr>
		</table>
	</form:form>
</body>
</html>