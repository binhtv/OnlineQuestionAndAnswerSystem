<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Personal Details</title>
<link href="<c:url value="/resource/styles/app.css" />" rel="stylesheet">
</head>
<body class="login-form">
	<ul class="steps">
	  <li>Login detail</li>
	  <li class="active">Personal Detail</li>
	  <li>Preferences</li>
	</ul>
	<form:form modelAttribute="personalDetails"
		action="${flowExecutionUrl}" method="post" cssClass="login">

		<h1 class="login-title">Enter Personal Details</h1>
		<div class="errorSummary">
			<form:errors path="*" cssClass="error"/>
		</div>
		<div id="firstName">
			<form:input path="firstName" cssClass="login-input" placeholder="First Name"/>
			<form:errors path="firstName" cssClass="error"/>
		</div>
		<div id="lastName">
			<form:input path="lastName" cssClass="login-input" placeholder="Last Name"/>
			<form:errors path="lastName" cssClass="error"/>
		</div>
		<div id="email">
			<form:input path="email" placeholder="Email" cssClass="login-input"/>
			<form:errors path="email" cssClass="error"/>
		</div>

		<label for="gender"> <spring:message code="gender" />: </label><br/>
		<form:select path="gender" cssClass="gender-select">
			<form:option label="Male" value="Male" />
			<form:option label="Female" value="Female" />
		</form:select>
		<p>&nbsp;</p>
		<%-- <div id="birthDate">
			<label for="birthDate"> <spring:message code="birthDate" />: </label>
			<form:input path="birthDate" />
			<form:errors path="birthDate" />
		</div> --%>
		<div>
			<input type="submit" name="_eventId_next" value="Next" class="login-button"/> 
			<input type="submit" name="_eventId_back" value="Back" class="login-button cancel"/>
		</div>
	</form:form>
</body>
</html>
