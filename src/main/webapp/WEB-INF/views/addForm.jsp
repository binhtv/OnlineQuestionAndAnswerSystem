<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<fieldset>
	<legend>Add a Question</legend>
	<form:form modelAttribute="question" action="add" method="POST">
		<p>
			Title: <form:input path="title"/>
		</p>
		<p>
			Details: <form:textarea  path="details"/>
		</p>
		<p>
			Topic: 
			<form:select path="topics" multiple="true">
				<form:options items="${allTopics }" itemValue="id" itemLabel="name"/>
			</form:select>
		</p>
		
		<input type="submit" value="Add Question">
	</form:form>
</fieldset>
