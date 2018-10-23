<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<fieldset>
	<h3>
		<c:out value="${question.title }" />
	</h3>
	<br>

	<c:out value="${question.details }" />
	<br> From :
</fieldset>

<fieldset>
	<legend>Add an answer</legend>
	<div id="add_answer_form">
		<textarea id="answer_detail" name="details">
		</textarea>
		<br> <button id="add_answer"
			onclick="addAnswer(${question.id});">Submit</button>
	</div>
</fieldset>

<fieldset>
	<legend>All Answers</legend>
	<c:forEach items="${question.answers}" var="answer">
		<fieldset>
			${answer.details}
		</fieldset>
	</c:forEach>
</fieldset>