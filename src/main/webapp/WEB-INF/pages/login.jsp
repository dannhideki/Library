<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<t:page_template>
  <jsp:attribute name="header">
    <!-- Page specific JS / CSS goes here -->
  </jsp:attribute>
    <jsp:attribute name="content">
                    <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="<c:url value='/auth/login_check?targetUrl=${targetUrl}' />" 
                                   autocomplete="off" 
                                   method='POST'> 
                                <h1>Log in</h1> 
                                <c:if test="${not empty error}">
                                    <div class="error">${error}</div><br />
                                </c:if>
                                <c:if test="${not empty msg}">
                                    <div class="msg">${msg}</div><br />
                                </c:if>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
                                </p>
                                <input type="hidden" name="${_csrf.parameterName}"
                                       value="${_csrf.token}" />
                            </form>
                        </div>
                            
                    </div>
                </div>  
            </section>
    </jsp:attribute>
</t:page_template>