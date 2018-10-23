<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div class="question-list">
	<c:forEach items="${questions}" var="question">
		<div class="question">
			<div class="vote-num">${question.votes} vote</div>
			<div class="answer-num">${fn:length(question.answers)} answers</div>
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
						ansered x min ago by <a href="#">Tom Drake</a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>