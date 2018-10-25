<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link href="<c:url value="/resource/styles/showQuestion.css" />"
	rel="stylesheet">

<div class="main-container">
	<div class="section-row">
		<div class="section-title">
			<h3 class="title">Ask a Question</h3>
		</div>
	
		<form:form modelAttribute="question" action="add" method="POST">
			<p>
				<form:input class="input text" placeholder="Title" path="title" />
			</p>
			<p>
				<form:textarea class="input" placeholder="Details" path="details" />
			</p>
			<p>
				<!-- Topic: -->
				<form:select class="input multiselect" path="topics" multiple="true" items="${allTopics}"
					itemLabel="name" itemValue="id">
				</form:select>
			</p>

			<input type="submit" class="primary-button"  value="Add Question">
		</form:form>
	</div>
</div>
