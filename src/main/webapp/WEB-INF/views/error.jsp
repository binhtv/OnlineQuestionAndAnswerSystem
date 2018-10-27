<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<p>Profile image is empty.</p>
<div class="errorImage">
	<img
		src="<spring:url value="/resource/images/error_page.jpg" htmlEscape="true" />"
		alt="Error found" />
</div>
<div>
	<a href="<spring:url value="/welcome" />">Back</a>
</div>
