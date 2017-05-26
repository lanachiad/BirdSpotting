$(document).ready(function() {
  $("#bird-id-form").on("submit", function(event){
  	$(".submit-button").val("Birdwatching for you...")
  });

  $(".bird-link").on("click", function(event) {
  	event.preventDefault();
  	var id = $(this).attr("id");
  	var target = $(event.currentTarget).find(".bird-card");
  	$.ajax({
  		url: '/birds/' + id,
  		method: 'get'
  	}).done(function(response) {
  		target.html(response);
  		$(".bird-common, .bird-scientific, .bird-habitat, .bird-description, .bird-nesting").find("p").css("text-align", "left");
  		$("#map").css({"width": "300px", "height": "300px"})
  	});
  });
});
