<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:if test="${not empty error}">
	<div style="color: red;">
		<spring:message
			code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
		<br />
	</div>
</c:if>
<div class="login-form">
	<form action="<spring:url value="/login"/>" method="post" class="login">
		<h1 class="login-title"><spring:message code="pleaseLogin"/></h1>
			<input type="text" name="username" placeholder="<spring:message code="username" />" class="login-input" />
			<input type="password" name="password" placeholder="<spring:message code="password" />" class="login-input" />
			<input type="submit" name="login" value="Login" class="login-button" />
		<security:csrfInput />
	</form>
</div>
<br />