<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<div class="question-list" id="questionList">
	<c:forEach items="${questions}" var="question">
		<c:choose>
			<c:when test="${question.votes >= 3}">
				<c:set var="highVoteClass" value="high-vote"/>
			</c:when>
			<c:otherwise>
				<c:set var="highVoteClass" value=""/>
			</c:otherwise>
		</c:choose>
		<div class="question ${highVoteClass }" id="question_${question.id}">
			<a href="javascript:void(0)" class="vote-up-icon voteUpQuestion" data-qid="${question.id}">
			</a>
			<div class="vote-num"><span id="vote_${question.id}">${question.votes}</span> <spring:message code="question.list.vote" /></div>
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
						<spring:message code="question.list.at" /> 
						<fmt:formatDate pattern = "HH:mm:ss MM/dd/yyyy" 
         value = "${question.dateTime}" /> by <a href="#">${question.questioner != null ? question.questioner.username : "Unknown"}</a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>