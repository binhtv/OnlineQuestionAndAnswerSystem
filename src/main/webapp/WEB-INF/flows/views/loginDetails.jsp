<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Details</title>
</head>
<body>
	<h2>Enter Login Details</h2>

	<form:form modelAttribute="loginDetails" action="${flowExecutionUrl}"
		method="post">

		<%-- <input type="hidden" name="_eventId" value="peformLoginDetails">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" /> --%>
		

		<div class="errorSummary">
			<form:errors path="*" />
		</div>
		<div id="username">
			<label for="userName"> <spring:message code="username" />: </label>
			<form:input path="userName" />
			<form:errors path="userName" />
		</div>
		<div id="password">
			<label for="password"><spring:message code="password" />: </label>
			<form:password path="password" />
		</div>
		<div>
			<input type="submit" name="_eventId_next" value="Next" />
			<input type="submit" name="_eventId_cancel" value="Cancel" />
		</div>
		
	</form:form>
</body>
</html>
