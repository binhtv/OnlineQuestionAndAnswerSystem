<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div class="question-list" id="questionList">
	<c:forEach items="${questions}" var="question">
		<div class="question">
			<div class="vote-num">${question.votes} <spring:message code="question.list.vote" /></div>
			<div class="answer-num">${fn:length(question.answers)} <spring:message code="question.list.answer" /></div>
			<div class="group-title">
				<div class="title">
					<a href="${question.id}">${question.title}</a>
				</div>
				<div class="sub-group-title">
					<div class="topic">
						<c:forEach items="${question.topics}" var="topic">
							<div class="topic-item">${topic.name}</div>
						</c:forEach>					
					</div>
					<div class="by-user">
						<spring:message code="question.list.at" /> by <a href="#">Tom Drake</a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>