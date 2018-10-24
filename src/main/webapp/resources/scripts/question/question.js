(function () {
	var contextRoot = "/" + window.location.pathname.split('/')[1];
	var socket = new SockJS("/OnlineQuestionAndAnswerSystem/ws");
	var stompClient = Stomp.over(socket);

	var handleQuestionAdd = function (frame) {
		let question = JSON.parse(frame.body);
		let topics = question.topics;
		let topicHtml = '';
		topics.forEach((v) => {
			topicHtml += '<div class="topic-item">' + v.name + '</div>';
		});
		let newQuestion = '<div class="question">' +
			'<div class="vote-num">' + question.votes + ' vote</div>' +
			'<div class="answer-num">' + question.numOfAnswers + ' answers</div>' +
			'<div class="group-title">' +
			'<div class="title">' +
			'<a href="' + question.id + '">' + question.title + '</a>' +
			'</div>' +
			'<div class="sub-group-title">' +
			'<div class="topic">' +
			topicHtml +
			'</div>' +
			'<div class="by-user">' +
			'ansered x min ago by <a href="#">Tom Drake</a>' +
			'</div>' +
			'</div>' +
			'</div>' +
			'</div>';
		$('#questionList').prepend(newQuestion);
		$('#questionList').children().first().effect("highlight", {}, 2000);
	};
	// Handle Vote up WS
	var handleQuestionVoteUp = function (frame) {
		let question = JSON.parse(frame.body);
		$('#vote_' + question.id).html(question.votes);
		if (question.votes >= 5) {
			$('#question_' + question.id).addClass('high-vote');
		}
	}

	var handleAnswerAdd = function (frame) {
		let answer = JSON.parse(frame.body);
		console.log(answer);
		$("#answers[data-question-id=" + answer.question.id + "] #comments").prepend('<li class="cmmnt"><div class="cmmnt-content"><header><a href="javascript:void(0);" class="userlink">Pikabob</a> - <span class="pubdate"> answered at  ' + convertDateToString(answer.dateTime) + '</span></header><p>' + answer.details + '</p></div></li>');
	};

	// Handle Vote Up
	var onClickVoteUp = function (e) {
		let self = $(e.target);
		let id = self.data('qid');
		if (self.hasClass('voted')) {
			return;
		}
		$.ajax({
			url: contextRoot + '/question/voteUp/' + id,
			type: 'GET',
			success: function (resp) {
				self.addClass('voted');
			},
			error: function (err) {
				console.log(err);
			}
		});
	}

	// Callback function to be called when stomp client is connected to server
	var connectCallback = function () {
		stompClient.subscribe('/topic/question/add', handleQuestionAdd);
		stompClient.subscribe('/topic/question/voteUp', handleQuestionVoteUp);
		stompClient.subscribe('/topic/answer/add', handleAnswerAdd);
	};

	// Callback function to be called when stomp client could not connect to
	// server
	var errorCallback = function (error) {
		console.log(error);
	};

	stompClient.connect("guest", "guest", connectCallback, errorCallback);

	// Register for events
	$(document).ready(function (e) {
		$('.voteUpQuestion').on('click', onClickVoteUp);
	});

	//----Add new answer
	var contextRoot = "/" + window.location.pathname.split('/')[1];

})();

//----Add new answer
var contextRoot = "/" + window.location.pathname.split('/')[1];

function addAnswer(questionId) {
	// var dataToSend = JSON.stringify(serializeObject($('#add_answer_form')));
	$.ajax({
		url: contextRoot + "/answer/add",
		type: 'GET',
		data: {
			questionId: questionId,
			details: $("#add_answer_form").find("#answer_detail").val(),
		},
		dataType: "json",
		contentType: 'application/json',
		success: function (answer) {
			// $("#answers[data-question-id=" + answer.question.id + "] #comments").prepend('<li class="cmmnt"><div class="cmmnt-content"><header><a href="javascript:void(0);" class="userlink">Pikabob</a> - <span class="pubdate"> answered at  ' + convertDateToString(answer.dateTime) + '</span></header><p>' + answer.details + '</p></div></li>');

		},
		error: function (errorObject) {
			console.log(errorObject);
		}
	})
}

function convertDateToString(timeStamp) {
	var time = new Date(timeStamp);
	var timeAsString = time.getHours() +
		":" +
		time.getMinutes() +
		":" +
		time.getSeconds() +
		" " +
		time.getFullYear() +
		"-" +
		time.getMonth() +
		"-" +
		time.getDate();
	return timeAsString;
}