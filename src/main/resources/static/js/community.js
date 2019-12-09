function post() {
    var questionid = $("#question_id").val();
    var content = $("#comment_content").val();
    $.ajax({
        type: "POST",
        url: "/comment",
        contentType: 'application/json',
        data: JSON.stringify({
            "parentId": questionid,
            "content": content,
            "type": 0
        }),
        success: function (response) {
            if (response.code == 200) {
                $("#comment_section").hide();
            } else {
                alert(response.message);
            }
            console.log(response);
        },
        dataType: "json"
    })
    // console.log(questionid);
    // console.log(content);

}