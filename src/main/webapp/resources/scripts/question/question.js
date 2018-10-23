(function () {
    var contextRoot = "/" + window.location.pathname.split('/')[1];

    function addAnswer(questionId) {
        // var dataToSend = JSON.stringify(serializeObject($('#add_answer_form')));
        $.ajax({
            url: contextRoot + "/answer/add",
            data: {
                questionId: questionId,
                details: $("add_answer_form").find("#answer_detail").val(),
                dataType: "json",
                contentType: 'application/json',
                success: function(data){
                    console.log(data);
                }
            }

        })
    }
})();