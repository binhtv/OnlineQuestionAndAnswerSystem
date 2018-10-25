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
<link href="<c:url value="/resource/styles/app.css" />" rel="stylesheet">
</head>
<body class="login-form">
	<ul class="steps">
	  <li class="active">Login detail</li>
	  <li>Personal Detail</li>
	  <li>Preferences</li>
	</ul>
	<form:form modelAttribute="loginDetails" action="${flowExecutionUrl}"
		method="post" cssClass="login">

		<h1 class="login-title">Enter Login Detail</h1>
		<div class="errorSummary">
			<form:errors path="*" cssClass="error" />
		</div>
		<div id="username">
			<form:input path="userName" cssClass="login-input" type="text"
				placeholder="User name" />
			<div>
				<form:errors path="userName" cssClass="error" />
			</div>
		</div>
		<div id="password">
			<form:password path="password" cssClass="login-input"
				placeholder="Password" />
			<div>
				<form:errors path="password" cssClass="error" />
			</div>
		</div>
		<div>
			<input type="submit" name="_eventId_next" value="Next"
				class="login-button" /> 
			<a href="<c:url value="/"/>" class="login-button cancel link-as-a-button">Cancel</a>
		</div>
	</form:form>
</body>
</html>
