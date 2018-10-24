<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="<c:url value="/resource/styles/showQuestion.css" />"
	rel="stylesheet">


<fieldset>
	<h3>
		<c:out value="${question.title }" />
	</h3>
	<br>

	<c:out value="${question.details }" />
	<br> From :
</fieldset>


<security:authorize access="isAuthenticated()">
	<%-- <security:authentication property="principal.username" /> --%>
	<fieldset>
		<legend>Add an answer</legend>
		<div id="add_answer_form">
			<textarea id="answer_detail" name="details"></textarea>
			<br>
			<button id="add_answer" onclick="addAnswer(${question.id});">Submit</button>
		</div>
	</fieldset>
</security:authorize>

<fieldset>
	<legend>All Answers</legend>
	<div id="answers" data-question-id="${question.id}">
		<ul id="comments">
			<c:forEach items="${answers}" var="ans">

				<li class="cmmnt">
					<!-- <div class="avatar"><a href="javascript:void(0);"><img src="images/pikabob.png" width="55" height="55" alt="pikabob photo avatar"></a></div> -->
					<div class="cmmnt-content">
						<header>
							<a href="javascript:void(0);" class="userlink">${ans.answerer.username}</a> - <span
								class="pubdate"> at <fmt:formatDate
									pattern="HH:mm:ss MM/dd/yyyy" value="${ans.dateTime}" /></span>
						</header>
						<p>${ans.details}</p>
					</div>
				</li>

			</c:forEach>
		</ul>
	</div>
</fieldset>