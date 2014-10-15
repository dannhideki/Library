<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<t:page_template>
    <jsp:attribute name="js">
        <script src="js/modernizr.custom.63321.js"></script>
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery.dropdown.js"></script>
    </jsp:attribute>
    <jsp:attribute name="content">

        <center>  
            <div id="container_demo" >
                <div id="wrapper">
                    <div id="login" class="animate form">
                        <h1> Book Registration Form </h1> 
                        <c:url var="bookRegistration" value="saveBook.html" />  
                        <form:form id="bookRegisterForm" modelAttribute="book" method="post" action="registerBook">  
                            <table>  
                                <tr>  
                                    <td>
                                        <form:label path="title">Title</form:label>  
                                        <form:input path="title" />  
                                    </td>  
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td><form:label path="author">Author</form:label>  
                                        <form:input path="author" />  
                                    </td>  
                                </tr> 
                                <tr>  
                                    <td>
                                        <form:label path="isbn">ISBN</form:label>  
                                        <form:input path="isbn" />  
                                    </td> 
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <form:label path="dateRelease">Date Release</form:label>  
                                        <form:input path="dateRelease" />  
                                    </td> 
                                </tr>  
                                <tr>  
                                    <td>
                                        <form:label path="typeBook" class="select-label">Type</form:label>  
                                        <form:select  path="typeBook" id="cd-dropdown" name="cd-dropdown" class="cd-select"> 
                                            <form:options />
                                        </form:select>
                                    </td>  
                                </tr>  
                                <tr>  
                                    <td>
                                        <p class="signin button"> 
                                            <input type="submit" value="Register"/> 
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