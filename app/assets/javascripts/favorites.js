$(document).ready(function(){

  $("#empty-heart").on("click", function(event){
    event.preventDefault();
    $.ajax({
      url: "/images/" + imageId + "/favorites",
      type: "post",
      success: function() {
        $("#empty-heart").html("")
        $("#empty-heart").addClass("glyphicon glyphicon-heart")
        $("#fav-count").html(favCount + 1)
      }
    });
  });
});
