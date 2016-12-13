/**
* Event handler to change displayed image by img-gallery
* @param event Event
*/
var nextImg = function(event) {

  // fetch all images in the img-gallery
  var imgs = $(".img-slide");

  // make said image display none
  imgs[event.data].css("display: none");
};

var debug = function(event) {
  console.log("Dot was pressed!");
};

/**
* Main Script
*/

// get all dots
var dots = $(".dot");

// bind event handler to all dots
for (var i = 0; i < dots.length; i++) {
  //dots[i].click(i, nextImg);
  dots[i].click(debug);
  console.log(dots[i].html);
}
