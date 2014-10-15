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
    </jsp:attribute>
    <jsp:attribute name="content"> 
        <center>  
            <div id="container_demo" >
                <div id="wrapper">
                    <div id="login" class="animate form">
                        <h1> Edit Details </h1>

                        <c:url var="bookRegistration" value="saveBook.html" />  
                        <form:form id="bookRegisterForm" 
                                   modelAttribute="book" 
                                   method="post" 
                                   action="updateBook">  
                            <table>  
                                <tr>
                                    <td> 
                                        <form:hidden path="id" 
                                                     value="${bookObject.id}" />
                                        <form:label path="title" 
                                                    data-icon="u">Title</form:label>  
                                        <form:input path="title" 
                                                    id="txttitle" 
                                                    name="title" 
                                                    required="required" 
                                                    type="text" 
                                                    placeholder="mytitle"  
                                                    value="${bookObject.title}" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <form:label path="author" 
                                                    data-icon="u">Author</form:label>    
                                        <form:input path="author" 
                                                    name="author" 
                                                    required="required" 
                                                    type="text" 
                                                    placeholder="myauthor" 
                                                    value="${bookObject.author}"/>
                                    </td>  
                                </tr>
                                <tr>
                                    <td> 
                                        <form:label path="isbn" 
                                                    data-icon="u">ISBN</form:label>  
                                        <form:input path="isbn" 
                                                    id="txtisbn" 
                                                    name="isbn" 
                                                    required="required" 
                                                    type="text" 
                                                    placeholder="myisbn"  
                                                    value="${bookObject.isbn}" />
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <form:label path="dateRelease">Date Release</form:label>
                                        <form:input id="idDateField" 
                                                    path="dateRelease" 
                                                    value="${bookObject.dateRelease}" 
                                                    placeholder="dd/MM/yyyy" />
                                    </td>  
                                </tr> 
                                <tr>  
                                    <td>
                                        <form:label path="typeBook" class="select-label">User Type</form:label>   
                                        <form:select  path="typeBook" id="cd-dropdown" name="cd-dropdown" class="cd-select" value="${bookObject.typeBook}" > 
                                            <form:options />
                                        </form:select>

                                    </td>  
                                </tr>
                                <tr>   
                                    <td><p class="signin button"> 
                                            <input type="submit" value="Update"/> 
                                        <p>
                                    </td>  
                                </tr>  
                            </table>  
                        </form:form>  
                        </center> 
                        <script type="text/javascript">
                            $(function() {
                                $('#idDateField').datepicker({
                                    dateFormat: 'dd/mm/yy',
                                    dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
                                    dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
                                    dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
                                    monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                                    monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
                                    nextText: 'Próximo',
                                    prevText: 'Anterior'
                                });
                                $("#idDateField").mask("99/99/9999");
                            });

                            $(function() {

                                $('#cd-dropdown').dropdown({
                                    gutter: 5
                                });

                            });

                        </script>
                    </jsp:attribute>
                </t:page_template>