<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%> 
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@page session="true"%> 

<t:page_template>
    <jsp:attribute name="js">
        <script src="js/modernizr.custom.63321.js"></script>
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery.dropdown.js"></script>
    </jsp:attribute>
    <jsp:attribute name="content">  
        <center>  
            <div id="container_demo" >
                <a class="hiddenanchor" id="toregister"></a>
                <a class="hiddenanchor" id="tologin"></a>
                <div id="wrapper">

                    <div id="login" class="animate form">
                        <h1> Edit Details </h1> 
                        <c:url var="userRegistration" value="saveUser.html" />  
                        <form:form id="registerForm" modelAttribute="user" method="post" action="userUpdate">
                            <table>  
                                <tr>
                                    <td> 
                                        <form:hidden path="id" value="${userObject.id}" />
                                        <form:label path="firstName" data-icon="u">First Name</form:label>  
                                        <form:input path="firstName" id="usernamesignup" name="firstname" required="required" type="text" placeholder="mysuperusername690"  value="${userObject.firstName}" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <form:label path="lastName" data-icon="u">Last Name</form:label>    
                                        <form:input path="lastName" name="lastname" required="required" type="text" placeholder="mysuperusername690" value="${userObject.lastName}"/>
                                    </td>  
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="email" for="emailsignup" class="youmail" data-icon="e">Email</form:label>   
                                        <form:input path="email" id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com" value="${userObject.email}"/>  
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <form:label path="phone" data-icon="u">Phone</form:label>   
                                        <form:input path="phone" type="phone" required="required" placeholder="99-9999-99999" value="${userObject.phone}" />  
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="username" data-icon="u">Username</form:label>    
                                        <form:input path="username" name="firstname" required="required" type="text" placeholder="mysuperusername690" value="${userObject.username}" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <form:label path="password" for="passwordsignup" class="youpasswd" data-icon="p">Password</form:label>    
                                        <form:password  path="password" id="passwordsignup" name="passwordsignup" required="required" placeholder="eg. X8df!90EO" value="${userObject.password}" />
                                    </td>
                                </tr>
                                <tr> 
                                    <td>
                                        <form:label path="role" class="select-label">User Type</form:label>   
                                        <form:select  path="role" id="cd-dropdown" name="cd-dropdown" class="cd-select" > 
                                            <form:options />
                                        </form:select>  
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td><form:label path="enabled">Enabled</form:label>
                                        <form:checkbox path="enabled" required="required" value="${userObject.enabled}"/></td>
                                </tr>

                                <tr>
                                    <td>    
                                        <p class="signin button"> 
                                            <input type="submit" value="Update"/> 
                                        <p>

                                    </td>
                                </tr>
                            </table>
                        </form:form>
                    </div>  
                </div>
            </div>
        </center>  

        <script type="text/javascript">

            $(function() {

                $('#cd-dropdown').dropdown({
                    gutter: 5
                });

            });

        </script>
    </jsp:attribute> 
</t:page_template>