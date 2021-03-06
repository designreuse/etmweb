<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/bootstrap" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<spring:message code="reset.pageTitle" var="title"/>    
<jsp:include page="../common/header.jsp" flush="true" >
	<jsp:param name="title" value="${title}" /> 
</jsp:include>

    <div class="container">

	    <div class="row">
	    	<div class="offset3 span6 alert alert-into">
	  		   <spring:message code="reset.info" /> 	    	
	    	</div>
	    </div>
	    
	    <div class="row">

		    <div class="span4 offset4">
				<form:form modelAttribute="forgotForm" method="POST" class="well">
				
					<bootstrap:input path="email" labelMessage="reset.email" />
					
					<div class="form-actions">
						<spring:message code="reset.submit" var="submit" /> 
						<input type="submit" value="${submit}" class="btn btn-primary btn-large" />
					</div>	
				</form:form>	        
		    </div>
	    </div>

    </div> <!-- /container -->
    
<jsp:include page="../common/footer.jsp" flush="true" />