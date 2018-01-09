$(document).ready(function () {

    $(".btnRequestView").on('click', function () {
       
        var RequestId = $(this).attr('RequestId');
        window.location.href = "ViewRequest.aspx?Rid=" + RequestId + "&mode=view";
    });

    $(".btnView").on('click', function () {
        var ReviewerId = $(this).attr('ReviewerId');
        window.location.href = "ArticleReviewer.aspx?Rid=" + ReviewerId + "&mode=view";
    });

    $(".btnEditorView").on('click', function () {
        var EditorId = $(this).attr('EditorId');
        window.location.href = "ArticleEditor.aspx?Eid=" + EditorId + "&mode=view";
    });


    $(".btnViewArticle").on('click', function () {
        var ArticleId = $(this).attr('ArticleId');
        window.location.href = "Login.aspx?Aid=" + ArticleId + "&mode=view";
    });


    $(".btnUpdate").on('click', function () {
        var ReviewerId = $(this).attr('ReviewerId');
        window.location.href = "ArticleReviewer.aspx?Rid=" + ReviewerId + "&mode=update";
    });

    $(".btnEditorUpdate").on('click', function () {
        var EditorId = $(this).attr('EditorId');
        window.location.href = "ArticleEditor.aspx?Eid=" + EditorId + "&mode=update";
    });

    //$(".btnAddReviewer").on('click', function () {
    //   // var ReviewerId = $(this).attr('ReviewerId');
    //    window.location.href = "ArticleReviewer.aspx?mode=add";
    //});
    $(".btnDelete").on('click', function () {
        var ReviewerId = $(this).attr('ReviewerId');

        $(function () {
            $.ajax({
                type: "POST",
                url: "ReviewerList.aspx/DeleteReviewer",
                data: '{ReviewerId: ' + ReviewerId + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: alert("Record is deleted."),
                error: alert("There is an error.")
            });
        });
    });












});
