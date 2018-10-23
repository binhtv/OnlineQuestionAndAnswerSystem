<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


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
<title>${title }</title>

</head>

<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<tiles:insertAttribute name="navigation" />
			</ul>
			<h3 class="text-muted"><spring:message code="layout.project.name" /></h3>
		</div>

		<div class="body">
			<tiles:insertAttribute name="body" />
		</div>

		<div class="footer">
			<tiles:insertAttribute name="footer" />
		</div>

	</div>
	
	<script type="text/javascript" src="<c:url value="/resource/scripts/jquery-1.9.1.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resource/scripts/app.js" />"></script>
</body>
</html>
