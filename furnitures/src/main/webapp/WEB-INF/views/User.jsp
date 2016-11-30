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
<h2>User Information</h2>
<form:form method="POST" action="addregister">
   <table>
    
    <tr>
        <td><form:label path="username">Username
        
        </form:label></td>
        
        <td><form:input path="username" /></td>
    </tr>
    <tr>
        <td><form:label path="password">Password
       
        </form:label></td>
        <td><form:input path="password" /></td>
    </tr>
    <tr>
        <td><form:label path="email">Email
        
         </form:label></td>
        <td><form:input path="email" /></td>
    </tr>
    <tr>
    <tr>
        <td><form:label path="contact">Contact
        
        </form:label></td>
        
        <td><form:input path="contact" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
      
</table>  
</form:form>
</body>
</html>

