<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<li><a href="<spring:url value="/" />">
<spring:message code="layout.navigation.home" /></a>
</li>
<li><a href="<spring:url value="/login" />">
<spring:message
			code="layout.navigation.login" /></a>
</li>
<li><a href="<spring:url value="/registerFlow" />">
<spring:message
			code="layout.navigation.register" /></a>
</li>
<li>
<a href="<spring:url value="/question/list" />">
<spring:message
			code="layout.navigation.home" /> <spring:message code="layout.navigation.latestQuestion"/></a></li>
<li>
<a href="<spring:url value="/topics/" />">
<spring:message
			code="layout.navigation.topic" /></a></li>
<li>
<a href="<spring:url value="/question/add" />">
<spring:message
			code="layout.navigation.ask" /></a></li>
