<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h2><spring:message code="welcome.heading"/></h2>
<security:authorize access="isAnonymous()">
	<div>
		<a href="<spring:url value="/login" />"><spring:message code="layout.navigation.login" /></a>
		<spring:message code="welcome.tagline"/>
		<a href="<spring:url value="/question/list" />">
			<spring:message code="layout.navigation.latestQuestion"/>
		</a>
		<p><spring:message code="welcom.sample.acc"/></p>
		<ul>
			<li>ROLE_ADMIN: admin/admin</li>
			<li>ROLE_USER: </li>
			<li>
				<ul>
					<li>user/user</li>
					<li>dawit/user</li>
					<li>daniel/user</li>
					<li>benz/user</li>
				</ul>
			</li>
		</ul>
	</div>
</security:authorize>
<security:authorize access="isAuthenticated()">
	<div>
		<a href="<spring:url value="/question/add" />" class="ask-a-question-btn"> 
			<spring:message code="layout.navigation.ask" />
		</a>
	</div>
</security:authorize>
<br/>