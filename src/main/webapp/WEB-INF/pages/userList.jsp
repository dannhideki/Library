<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>User Details</title>  
</head>  
<body>  
 <center>  
  
  <div style="color: teal; font-size: 30px">User  
   Details</div>  
  
  <c:if test="${!empty userList}">  
   <table border="1" bgcolor="black" width="800px">  
    <tr  
     style="background-color: teal; color: white; text-align: center;"  
     height="40px">  
       
     <td>First Name</td>  
     <td>Last Name</td>  
     <td>Email</td>  
     <td>Phone</td>
     <td>Username</td>
     <td>Password</td>
     <td>Enable</td>
     <td>Edit</td>  
     <td>Delete</td>  
    </tr>  
    <c:forEach items="${userList}" var="user">  
     <tr  
      style="background-color: white; color: black; text-align: center;"  
      height="30px">  
        
      <td><c:out value="${user.firstName}" />  
      </td>  
      <td><c:out value="${user.lastName}" />  
      </td>  
      <td><c:out value="${user.email}" />  
      </td>  
      <td><c:out value="${user.phone}" />  
      </td> 
      <td><c:out value="${user.username}" />  
      </td> 
      <td><c:out value="${user.password}" />  
      </td>
      <td><c:out value="${user.enabled}" />  
      </td>
      <td><a href="userEdit?id=${user.id}">Edit</a></td>  
      <td><a href="userDelete?id=${user.id}">Delete</a></td>  
     </tr>  
    </c:forEach>  
   </table>  
  </c:if>  
  
  
  <a href="userForm">Click Here to add new User</a>  
 </center>  
</body>  
</html>  