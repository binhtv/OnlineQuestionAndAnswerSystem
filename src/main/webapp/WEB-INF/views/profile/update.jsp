<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="login-form">
	<form:form modelAttribute="profile" action="" method="post" cssClass="login" enctype="multipart/form-data">
		<h1 class="login-title"><spring:message code="profile.update.image"/></h1>
		<c:if test="${p_success != null }">
			<p style="color : green;">${p_success }</p>
		</c:if>
		<c:if test="${p_error != null }">
			<p style="color : red;">${p_error }</p>
		</c:if>
		<input type="file" name="image" id="image" accept="image/*" />

		<div style="text-align: center;">
			<form:errors path="image" cssStyle="color : red;" />
		</div>
		<br/>
		<div>
			<input type="submit" name="upload" value="Save"
				class="login-button" /> 
			<a href="<c:url value="/"/>" class="login-button cancel link-as-a-button">Cancel</a>
		</div>
	</form:form>
</div>