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
	<h2>Select Preferences</h2>

	<form:form action="${flowExecutionUrl}" method="post">
			<div id="preference">
				<label for="preference"> Preference: </label>
				<form:select path="preference" multiple="true">
					<form:option label="SQL" value="sql" />
					<form:option label="Java" value="java" />
					<form:option label="Python" value="python" />
					<form:option label="Swift" value="swift" />
				</form:select>

			</div>
			<div id="agreement">
				<input type="checkbox" name="agreement" value="agreement" />
			</div>
			<div class="buttons">
				<input type="submit" name="_eventId_register" value="Register" /> <input
					type="submit" name="_eventId_back" value="Back" /> <input
					type="submit" name="_eventId_cancel" value="Cancel" />
			</div>
		</form:form>
</body>
</html>

