<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1>Please Login!</h1>
<div>
	<div id="username">
		<label for="userName"> Username: </label>
		<input type="text" name="username" placeholder="enter your username"/>
	</div>
	<div id="password">
		<label for="password">Password: </label>
		<input type="password" name="password" placeholder="enter your password"/>
	</div>
	<div id="buttons">
		<input type="submit" name="login" value="Login" /> 
		<input type="submit" name="register" value="Register" onclick="<spring:url value="/registerFlow" />"/>
	</div>
</div>
<br/>