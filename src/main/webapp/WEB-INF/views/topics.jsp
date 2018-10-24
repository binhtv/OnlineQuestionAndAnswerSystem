<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h2><spring:message code="topicList.heading" /></h2>

<form:form method="get">
	<div id="topics">
		<table>
			<tr>
				<th><spring:message code="topicList.topic.number" /></th>
				<th><spring:message code="topicList.topic.name" /></th>
			</tr>

			<c:forEach var="topic" items="${topics}" varStatus="loop">
				<tr>
					<td>${loop.index}</td>
					<td>${topic.name}</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</form:form>