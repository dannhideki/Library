<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Edit User Details</title>  
</head>  
<body> 
 <center>  
  
  <div style="color: teal; font-size: 30px">Edit Details</div>  
  
  <c:url var="bookRegistration" value="saveBook.html" />  
  <form:form id="bookRegisterForm" 
             modelAttribute="book" 
             method="post" 
             action="updateBook">  
   <table width="600px" height="150px">  

    <tr>  
     <td><form:label path="title">First Name</form:label></td>  
     <td><form:input path="title" value="${bookObject.title}" /></td>  
    </tr>  
    <tr>  
     <td><form:label path="author">Last Name</form:label></td>  
     <td><form:input path="author" value="${bookObject.author}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="isbn">Email</form:label></td>  
     <td><form:input path="isbn" value="${bookObject.isbn}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="typeBook">Phone</form:label></td>  
     <td><form:input path="typeBook" value="${bookObject.typeBook}"/></td>  
    </tr>
    <tr>  
     <td><form:label path="dateRelease">Enabled</form:label></td>  
     <td><form:input path="dateRelease" value="${bookObject.dateRelease}"/></td>  
    </tr>
    <tr>  
     <td></td>  
     <td><input type="submit" value="Update" />  
     </td>  
    </tr>  
   </table>  
  </form:form>  
 </center>  
</body>  
</html> 