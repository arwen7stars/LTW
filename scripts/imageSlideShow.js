/**
 * Event handler to change displayed image by img-gallery
 * @param event Event
 */
var nextImg = function(event) {

  // get index of pressed button
  var index = event.data.index(event.target);

	// fetch all images in the img-gallery
	var imgs = $(".img-slide");

	// hide chosen image
	imgs.eq(index).css("display: none");
};

function test(event) {
	console.log("Dot was pressed!");
  console.log(event.data.index(event.target));
}

/**
 * Main Script
 */
$(document).ready(function() {

	// get all dots
	var dots = $(".dot");

  // bind event handler
  dots.click(dots, test);

});
