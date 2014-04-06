$(document).ready(function(){
  $(".reply-trigger").on('click', function(event){
      // event.preventDefault();
  $(this).parents().siblings().contents("#reply_comment").hide();
  $(this).parents().siblings().contents(".reply-trigger").show();
  $(this).parent().contents("#reply_comment").show();
  $(this).hide();
  })
})


