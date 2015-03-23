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

    var formData = $(this).serialize(); // find(':input') ???
    var myUrl = $(this).attr('action');
    var myMethod = $(this).attr('method');

    debugger

    request = $.ajax({
      url: '/articles',
      type: 'post',
      // dataType: 'JSON',
      data: formData
    });

    request.done(function(){
      console.log('winning');
    });

    request.fail(function(){
      console.log('fail');
    })
  });
});