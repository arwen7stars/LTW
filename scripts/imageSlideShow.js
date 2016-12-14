/******************
* GLOBAL VARIABLES
******************/

/** Index of image to display */
var imgToDisplay = 0;

/** Interval between each image switch (in milliseconds) */
var intervalSwitchImg = 2500;

/*********
* METHODS
*********/

/**
 * Event handler to change displayed image by img-gallery
 * @param event Event
 */
var switchImg = function(event) {

	// get index of pressed button
	imgToDisplay = event.data.index(event.target);

	// display chosen image
	displayImg(imgToDisplay);
};

/**
 * Displays only the given image
 */
var displayImg = function() {

	// fetch all images in the img-gallery
	var imgs = $(".img-wrap");

	// hide all images
	imgs.css("display", "none");

	// display only the chosen image
	imgs.eq(imgToDisplay).css("display", "block");
};

/**
* Moves displayed image to the next image
*/
var nextImg = function() {

  // get how many dots there are
  var nDots = $(".dot").length;

  // move to next img
  imgToDisplay++;

  if (imgToDisplay >= nDots) {
    imgToDisplay = 0;
  }
};

/** TODO stop timer when user clicks manually
* Automatically switchs displayed images
*/
var autoSlideShow = function() {

  // move to next img
  nextImg();

  displayImg();
};

/*************
* Main Script
*************/

$(document).ready(function() {

	// get all dots
	var dots = $(".dot");

	// bind event handler
	dots.click(dots, switchImg);

	// display first img
	displayImg();

  // auto switch displayed image
  window.setInterval(autoSlideShow, intervalSwitchImg);

});
