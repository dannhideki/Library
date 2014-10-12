<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%> 
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Edit User Details</title>  
</head>  
<body>  
 <center>  
  <c:url value="/j_spring_security_logout" var="logoutUrl" />
  <div style="color: teal; font-size: 30px">
   Edit Details</div>  
  
  <form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
 
	<c:if test="${pageContext.request.userPrincipal.name != null}">
	  <h2>
		Welcome : ${pageContext.request.userPrincipal.name} | <a
			href="javascript:formSubmit()"> Logout</a>
	  </h2>
	</c:if>
  
  <c:url var="userRegistration" value="saveUser.html" />  
  <form:form id="registerForm" modelAttribute="user" method="post"  
   action="userUpdate">  
   <table width="600px" height="150px">  
    <tr>  
        <td><form:hidden path="id" value="${userObject.id}" /></td>  
    </tr> 
    <tr>  
     <td><form:label path="firstName">First Name</form:label></td>  
     <td><form:input path="firstName" value="${userObject.firstName}" /></td>  
    </tr>  
    <tr>  
     <td><form:label path="lastName">Last Name</form:label></td>  
     <td><form:input path="lastName" value="${userObject.lastName}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="email">Email</form:label></td>  
     <td><form:input path="email" value="${userObject.email}"/></td>  
    </tr>  
    <tr>  
     <td><form:label path="phone">Phone</form:label></td>  
     <td><form:input path="phone" value="${userObject.phone}"/></td>  
    </tr>
    <tr>  
     <td><form:label path="enabled">Enabled</form:label></td>  
     <td><form:input path="enabled" value="${userObject.enabled}"/></td>  
    </tr>
    <tr>  
     <td><form:label path="username">Username</form:label></td>  
     <td><form:input path="username" value="${userObject.username}"/></td>  
    </tr> 
    <tr>  
     <td><form:label path="password">Password</form:label></td>  
     <td><form:input path="password" value="${userObject.password}"/></td>  
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