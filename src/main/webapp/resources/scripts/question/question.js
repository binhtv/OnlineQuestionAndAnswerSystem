(function() {
	var socket = new SockJS("/OnlineQuestionAndAnswerSystem/ws");
	var stompClient = Stomp.over(socket);

	// Callback function to be called when stomp client is connected to server
	var connectCallback = function() {
		stompClient.subscribe('/topic/question/add', function(frame) {
			console.log(frame);
		});
	};

	// Callback function to be called when stomp client could not connect to
	// server
	var errorCallback = function(error) {
		alert(error.headers.message);
	};

	stompClient.connect("guest", "guest", connectCallback, errorCallback);
})();