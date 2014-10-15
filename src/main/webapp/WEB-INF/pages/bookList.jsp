<%@ page language="java" contentType="text/html; charset=UTF-8"  
         pageEncoding="UTF-8"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<t:page_template>
    <jsp:attribute name="content">

        <center>  

            <div style="color: teal; font-size: 30px">Book  
                Details</div>  

            <c:if test="${!empty bookList}">  
                <table border="1" bgcolor="black" width="800px">  
                    <tr  
                        style="background-color: teal; color: white; text-align: center;"  
                        height="40px">  

                        <td>Title</td>
                        <td>Author</td> 
                        <td>ISBN</td>  
                        <td>Type</td>  
                        <td>Date Release</td>
                        <td>Edit</td>  
                        <td>Delete</td>  
                    </tr>  
                    <c:forEach items="${bookList}" var="book">  
                        <tr  
                            style="background-color: white; color: black; text-align: center;"  
                            height="30px">  

                            <td><c:out value="${book.title}" />  
                            </td>  
                            <td><c:out value="${book.author}" />  
                            </td>
                            <td><c:out value="${book.isbn}" />  
                            </td>  
                            <td><c:out value="${book.typeBook}" />  
                            </td>  
                            
                            <td>
                                <fmt:formatDate value="${book.dateRelease}" pattern="dd/MM/yyyy" />
                            </td> 
                            <td><a href="bookEdit?id=${book.id}">Edit</a></td>  
                            <td><a href="deleteBook?id=${book.id}">Delete</a></td>  
                        </tr>  
                    </c:forEach>  
                </table>  
            </c:if>  


            <a href="bookForm">Click Here to add new Book</a> <br /> 
        </center>  

    </jsp:attribute>
</t:page_template>