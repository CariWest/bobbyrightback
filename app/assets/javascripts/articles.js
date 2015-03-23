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

var addArticleToPage = function(articleData) {
  var context = { article: articleData }
  var html = $('#article_template').html();
  var articleTemplate = Handlebars.compile(html);
  $('.all-blog-posts').prepend(articleTemplate(context));
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

    request = $.ajax({
      url: '/articles',
      type: 'post',
      data: formData
    });

    request.done(function(response){
      console.log('winning');
      addArticleToPage(response.article);
      debugger
    });

    request.fail(function(){
      console.log('fail');
    })
  });
});