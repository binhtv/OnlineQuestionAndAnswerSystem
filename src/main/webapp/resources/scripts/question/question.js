(function () {
    var socket = new SockJS("/OnlineQuestionAndAnswerSystem/ws");
    var stompClient = Stomp.over(socket);

    // Callback function to be called when stomp client is connected to server
    var connectCallback = function () {
        stompClient.subscribe('/topic/question/add', function (frame) {
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
            console.log(frame);
        });
    };

    // Callback function to be called when stomp client could not connect to
    // server
    var errorCallback = function (error) {
        alert(error.headers.message);
    };

    stompClient.connect("guest", "guest", connectCallback, errorCallback);

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
            $("#answer_panel").prepend("<fieldset>" + answer.details +"</fieldset>")

        },
		error: function(errorObject ){
            console.log(errorObject);
        }	
    })
}