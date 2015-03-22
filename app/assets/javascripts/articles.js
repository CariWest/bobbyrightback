var setEventListenerForArticleForm = function() {
  $('.new_article_button').on('click', function(event) {
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

  $('.new_article').on('submit', function(event) {
    event.preventDefault();

    var formData = $(this).find(':input').serialize();
    var myUrl = $(this).attr('action');
    var myMethod = $(this).attr('method');

    debugger

    $.ajax({
      url: myUrl,
      type: myMethod,
      data: { article: formData }
    });
  });
});