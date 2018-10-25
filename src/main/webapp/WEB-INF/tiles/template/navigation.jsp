<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<li>
	<a href="<spring:url value="/" />"><spring:message code="layout.navigation.home" /></a>
</li>
<li>
	<a href="<spring:url value="/question/list" />">
		<spring:message code="layout.navigation.latestQuestion"/></a>
</li>
<li>
	<a href="<spring:url value="/topics" />"> <spring:message code="layout.navigation.topic" /></a>
</li>
<security:authorize access="isAuthenticated()">
	<li>
		<a href="<spring:url value="/question/add" />"> <spring:message code="layout.navigation.ask" /></a>
	</li>
</security:authorize>

<security:authorize access="hasAnyRole('ROLE_ADMIN')">
	<li>
		<i class="star"></i><a href="<spring:url value="/topic/add" />"> <strong><spring:message code="layout.navigation.addtopic" /></strong></a>
	</li>
</security:authorize>
<hr style="margin-right: 20px;"/>
<security:authorize access="isAnonymous()">
	<li>
		<a href="<spring:url value="/login" />"><spring:message code="layout.navigation.login" /></a>
	</li>
	<li>
		<a href="<spring:url value="/registerFlow" />"><spring:message code="layout.navigation.register" /></a>
	</li>
</security:authorize>
<security:authorize access="isAuthenticated()">
	<spring:url value="/logout" var="logout_url" />
	<li>
		<a href="${logout_url }"><spring:message code="layout.navigation.logout" /></a>
	</li>
</security:authorize>
