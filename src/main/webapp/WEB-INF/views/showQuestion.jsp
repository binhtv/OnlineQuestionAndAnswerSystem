<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<link href="<c:url value="/resource/styles/showQuestion.css" />"
	rel="stylesheet">

<div class="main-container">

	<div class="section-row">

		<div class="page-header">
			<div class="post-category">
				<!-- <a href="category.html">Lifestyle</a> -->
			</div>
			<h3>
				<c:out value="${question.title }" />
			</h3>
			<ul class="post-meta">
				<li><a href="#">${question.questioner.username }</a></li>
				<li> <fmt:formatDate pattern = "HH:mm:ss MM/dd/yyyy" 
         value = "${question.dateTime}" /> </li>
			</ul>
		</div>
		
		<c:out value="${question.details }" />
	</div>


	<security:authorize access="isAuthenticated()">
		<div class="section-row">
			<div class="section-title">
				<h3 class="title">Leave an answer</h3>
			</div>
			<%-- <security:authentication property="principal.username" /> --%>
			<div id="add_answer_form">
				<textarea class="input" id="answer_detail" name="details"></textarea>
				<br>
				<button class="primary-button" id="add_answer"
					onclick="addAnswer(${question.id});">Submit</button>
			</div>
		</div>
	</security:authorize>

	<div class="section-row">
		<div class="section-title">
			<h3 class="title">
				<span id="num-of-ans"></span> Answers
			</h3>
		</div>
		<div id="answers" data-question-id="${question.id}">
			<div id="comments" class="post-comments">
				<c:forEach items="${answers}" var="ans">
					<!-- comment -->
					<div class="media">
						<div class="media-left">
							<div class="blank-profile avatar ${fn:substring(ans.answerer.username, 0, 1)}">
								${fn:substring(ans.answerer.username, 0, 1)}
							</div>
							<!-- <img class="media-object hoverZoomLink" src="https://colorlib.com/preview/theme/callie/img/avatar-3.jpg" alt=""> -->
							
						</div>
						<div class="media-body"
							style="overflow: hidden; zoom: 1; display: table-cell; vertical-align: top;">
							<div class="media-heading">
								<h4>${ans.answerer.username}</h4>
								<span class="time">- <fmt:formatDate pattern = "HH:mm:ss MM/dd/yyyy" 
         value = "${ans.dateTime}" /> </span>
							</div>
							<p>${ans.details}</p>
							<!-- /comment -->
						</div>
					</div>
					<!-- /comment -->
				</c:forEach>
			</div>
		</div>
	</div>

</div>