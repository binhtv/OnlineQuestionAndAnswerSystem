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
<link href="<c:url value="/resource/styles/app.css" />" rel="stylesheet">
</head>
<body class="login-form">
	<ul class="steps">
	  <li>Login detail</li>
	  <li>Personal Detail</li>
	  <li class="active">Preferences</li>
	</ul>
	<form:form modelAttribute="favoriteTopic" action="${flowExecutionUrl}" method="post" cssClass="login">
		<h1 class="login-title">Select your favorites</h1>
		<div id="name">
			<form:select path="name" multiple="true" cssClass="preference-topic">
				<form:options items="${topics}" itemValue="id" itemLabel="name"/>
			</form:select>
		</div>
		
		<div class="buttons">
			<input type="submit" name="_eventId_register" value="Register" class="login-button"/> 
			<input	type="submit" name="_eventId_back" value="Back" class="login-button cancel"/>
			<input	type="submit" name="_eventId_cancel" value="Cancel" class="login-button cancel"/>
		</div>
	</form:form>
</body>
</html>

