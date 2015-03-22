var setEventListenerForArticleForm = function() {
  $('.new_article').on('click', function(event) {
    event.preventDefault();

    var request = $.ajax({
      url: '/articles/new',
      type: 'get',
    });

    request.done(function(response) {
      $('.articles_form').show();
    });

    request.fail(function() {
      console.log("adding the form fails");
    });
  });
}

// var setListenerForNewArticle = function() {
//   $('.articles_form').on('submit')
// }

$(document).ready(function() {
  setEventListenerForArticleForm();

  $('.articles_form').on('submit', function(event) {
    event.preventDefault();

    var formData = {
      title: $("input[name='Title']").val(),
      content: $("input[name='Content']").val()
    }

    $.ajax({
      url: '/articles',
      type: 'post',
      data: formData,
    });
  });
});