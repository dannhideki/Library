<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%>  
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<t:page_template>
    <jsp:attribute name="content">
                    <center>  
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        
                <div id="login" class="animate form">
                    <h1> Sign up </h1> 
                    <c:url var="userRegistration" value="saveUser.html" />
                    <form:form id="registerForm" modelAttribute="user" method="post" action="register">
                        <table>  
                            <tr>
                                <td>
                                    <form:label path="firstName" data-icon="u">First Name</form:label> 
                                    <form:input path="firstName" id="usernamesignup" name="firstname" required="required" type="text" placeholder="mysuperusername690" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="lastName" data-icon="u">Last Name</form:label>    
                                        <form:input path="lastName" name="lastname" required="required" type="text" placeholder="mysuperusername690" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="email" for="emailsignup" class="youmail" data-icon="e">Email</form:label>   
                                        <form:input path="email" id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com" />  
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <form:label path="username" data-icon="u">Username</form:label>    
                                        <form:input path="username" name="firstname" required="required" type="text" placeholder="mysuperusername690" />
                                    </td>
                                </tr>
                                <tr> 
                                    <td>
                                        <form:label path="password" for="passwordsignup" class="youpasswd" data-icon="p">Password</form:label>    
                                        <form:password  path="password" id="passwordsignup" name="passwordsignup" required="required" placeholder="eg. X8df!90EO" />
                                    </td>
                                </tr>
                                <tr> 
                                    <td>
                                        <form:label path="phone" data-icon="u">Phone</form:label>   
                                        <form:input path="phone" type="phone" required="required" placeholder="99-9999-99999" />  
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>    
                                        <p class="signin button"> 
                                            <input type="submit" value="Sign up"/> 
                                        <p>
                                        
                                    </td>
                                </tr>
                            </table>
                    </form:form>
                </div>  
                    </div>
                </div>
            </center>  
    </jsp:attribute>
</t:page_template>



