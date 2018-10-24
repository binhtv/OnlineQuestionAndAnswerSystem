<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value="/resource/styles/app.css" />" rel="stylesheet">
<c:set var="title">
	<tiles:getAsString name="title" />
</c:set>
<title><spring:message code="${title }"/></title>

</head>

<body>
	<div class="container">
		<div class="header">
			<h3 class="text-muted">
				<spring:message code="layout.project.name" />
			</h3>
			<security:authorize access="isAuthenticated()">
				<div class="user-info">
					<img alt="user photo" src="<c:url value="/resource/images/user.png"/>" class="user-photo"/>
	  				<security:authentication property="principal.username" />
				</div>
			</security:authorize>
			<ul class="nav nav-pills pull-right">
				<li>
					<a href="<spring:url value="?language=en_US"/>"><spring:message code="lang.english" /></a>
				</li>
				<li>
					<a href="<spring:url value="?language=vi_VN"/>"><spring:message code="lang.vietnamese" /></a>
				</li>
			</ul>
		</div>

		<div class="body">
			<ul class="left-nav">
				<tiles:insertAttribute name="navigation" />
			</ul>
			<div class="main-content">
			<tiles:insertAttribute name="body" />
			</div>
		</div>

		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div>

	</div>
	<script type="text/javascript">
		var i18nVote="<spring:message code='question.list.vote' />";
		var i18nAnswer="<spring:message code='question.list.answer' />";
		var i18nAt="<spring:message code='question.list.at' />";
	</script>
	<script type="text/javascript"
		src="<c:url value="/resource/scripts/lib/sockjs-0.3.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resource/scripts/lib/jquery-1.9.1.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resource/scripts/lib/jquery-ui.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resource/scripts/lib/stomp.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resource/scripts/app.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resource/scripts/question/question.js" />"></script>
</body>
</html>
