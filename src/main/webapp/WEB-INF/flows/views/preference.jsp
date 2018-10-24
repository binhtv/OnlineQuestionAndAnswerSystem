<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preferences</title>
</head>
<body>
	<h2>Select Preference</h2>

	<form:form modelAttribute="favoriteTopic" action="${flowExecutionUrl}" method="post">
		<div id="topicName">
			<label for="topicName"> <spring:message code="topicName" />: </label>
			<form:select path="topicName">
				<form:option label="Social" value="Social" />
				<form:option label="Medical" value="Medical" />
				<form:option label="Technology" value="Technology" />
			</form:select>
		</div>
		
		<div class="buttons">
			<input type="submit" name="_eventId_register" value="Register" /> 
			<input	type="submit" name="_eventId_back" value="Back" />
			<input	type="submit" name="_eventId_cancel" value="Cancel" />
		</div>
	</form:form>
</body>
</html>

