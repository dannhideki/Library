<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%> 
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>User Details</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Daniel Hideki" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
    </head>
    <body >
        <div class="container">
            <jsp:include page="header.jsp" />

            <center>  

                <div style="color: teal; font-size: 30px">User  
                    Details</div>  

                <c:if test="${!empty userList}">  
                    <table border="1" bgcolor="black" width="800px">  
                        <thead>
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
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <td>Edit</td>  
                                <td>Delete</td>  
                            </sec:authorize>
                        </tr>  
                        </thead>
                        <tbody>
                        <c:forEach items="${userList}" var="user">  
                            <tr  
                                style="background-color: white; color: black; text-align: center;"  
                                height="30px">  

                                <td class="user-name"><c:out value="${user.firstName}" />  
                                </td>  
                                <td class="user-name"><c:out value="${user.lastName}" />  
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
                                <sec:authorize access="hasRole('ROLE_ADMIN')">
                                    <td><a href="userEdit?id=${user.id}">Edit</a></td>  
                                    <td><a href="userDelete?id=${user.id}">Delete</a></td>  
                                </sec:authorize>
                            </tr>  
                        </c:forEach>  
                            </tbody>
                    </table>  
                </c:if>  


                <a href="userForm">Click Here to add new User</a>   <br /> 
            </center>  
        </div> 
    </body>  
</html>  