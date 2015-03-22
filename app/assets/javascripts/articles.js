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
});