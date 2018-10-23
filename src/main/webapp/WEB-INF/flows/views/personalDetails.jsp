<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Details</title>
</head>
<body>
	<h2>Enter Personal Details</h2>

	<form:form modelAttribute="personalDetails"
		action="${flowExecutionUrl}" method="post">

		<div class="errorSummary">
			<form:errors path="*" />
		</div>
		<div id="firstName">
			<label for="firstName"> First Name: </label>
			<form:input path="firstName" />
			<form:errors path="firstName" />
		</div>
		<div id="lastName">
			<label for="lastName"> Last Name: </label>
			<form:input path="lastName" />
			<form:errors path="lastName" />
		</div>

		<div id="gender">
			<label for="gender"> Gender: </label>
			<form:select path="gender">
				<form:option label="Male" value="Male" />
				<form:option label="Female" value="Female" />
			</form:select>
		</div>

		<div id="birthDate">
			<label for="birthDate"> Date of Birth: </label>
			<form:input path="birthDate" />
			<form:errors path="birthDate" />
		</div>
		<div id="email">
			<label for="email"> Email: </label>
			<form:input path="email" />
			<form:errors path="email" />
		</div>
		<div id="favoriteTopic">
			<label for="favoriteTopic"> Favorite Topic: </label>
			<form:select path="favoriteTopic" >
				<form:option label="SQL" value="sql" />
				<form:option label="Java" value="java" />
				<form:option label="Python" value="python" />
				<form:option label="Swift" value="swift" />
			</form:select>
		</div>
		<div>
			<input type="submit" name="_eventId_next" value="Next" /> <input
				type="submit" name="_eventId_back" value="Back" />
		</div>
	</form:form>
</body>
</html>
