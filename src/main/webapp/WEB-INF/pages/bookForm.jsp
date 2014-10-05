<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Book Registration Form</title>  
</head>  
<body>  
 <center>  
  
  <div style="color: teal; font-size: 30px">  
   Book Registration Form</div>  
  
  
  
  <c:url var="bookRegistration" value="saveBook.html" />  
  <form:form id="bookRegisterForm" modelAttribute="book" method="post"  
   action="registerBook">  
   <table width="600px" height="150px">  
     <tr>  
     <td><form:hidden path="id" />  
     </td>  
    </tr> 
    <tr>  
     <td><form:label path="title">Title</form:label>  
     </td>  
     <td><form:input path="title" />  
     </td>  
    </tr> 
    <tr>  
     <td><form:label path="author">Author</form:label>  
     </td>  
     <td><form:input path="author" />  
     </td>  
    </tr>  
    <tr>  
     <td><form:label path="isbn">ISBN</form:label>  
     </td>  
     <td><form:input path="isbn" />  
     </td>  
    </tr>  
    <tr>  
     <td><form:label path="typeBook">Type</form:label>  
     </td>  
     <td><form:select  path="typeBook" > 
             <form:options />
         </form:select>
     </td>  
    </tr>  
    <tr>  
     <td><form:label path="dateRelease">Date Release</form:label>  
     </td>  
     <td><form:input path="dateRelease" />  
     </td>  
    </tr>
     
    <tr>  
     <td></td>  
     <td><input type="submit" value="Register" /></td>  
    </tr>  
   </table>  
  </form:form>  
  
  
  <a href="bookList">Click Here to see Book List</a>  
 </center>  
</body>  
</html> 