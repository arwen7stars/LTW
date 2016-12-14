/******************
* GLOBAL VARIABLES
******************/

/** Index of image to display */
var imgToDisplay = 0;

/** Interval between each image switch (in milliseconds) */
var intervalSwitchImg = 2500;

/** Timer ID returned by setInterval() */
var timer = null;


/*********
* METHODS
*********/


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

	// fetch all dots
	var dots = $(".dot");

	// make all dots gray
	dots.css("background-color", "gray");

	// make current image dot lighter
	dots.eq(imgToDisplay).css("background-color", "silver");
};


/**
 * Event handler to change displayed image by img-gallery
 * @param event Event
 */
var switchImg = function(event) {

	// get index of pressed button
	imgToDisplay = event.data.index(event.target);

	// display chosen image
	displayImg(imgToDisplay);

	// restart timer
	restartTimer();
};


/**
* Handler for next arrow
* Displays next image
* @event Event
*/
var nextImg = function(event) {

  // get how many dots there are
  var nDots = $(".dot").length;

  // move to next img
  imgToDisplay++;

  if (imgToDisplay >= nDots) {
    imgToDisplay = 0;
  }

	displayImg();

	restartTimer();
};


/**
* Handler for prev arrow
* Displays previous image
* @event Event
*/
var prevImg = function(event) {

  // get how many dots there are
  var nDots = $(".dot").length;

  // move to prev img
  imgToDisplay--;

  if (imgToDisplay < 0) {
    imgToDisplay = nDots - 1;
  }

	displayImg();

	restartTimer();
};


/**
* Automatically switchs displayed images
*/
var autoSlideShow = function() {

	// get how many dots there are
  var nDots = $(".dot").length;

  // move to next img
  imgToDisplay++;

  if (imgToDisplay >= nDots) {
    imgToDisplay = 0;
  }

	displayImg();
};


/**
* Restarts the timer from 0
*/
var restartTimer = function() {

	// clear timer
	clearInterval(timer);

	// re-set timer
	timer = setInterval(autoSlideShow, intervalSwitchImg);
};


/*************
* Main Script
*************/


$(document).ready(function() {

	// get all dots
	var dots = $(".dot");

	// get next and prev buttons
	var prev = $(".prev");
	var next = $(".next");

	// bind event handler
	dots.click(dots, switchImg);
	next.click(nextImg);
	prev.click(prevImg);


	// display first img
	displayImg();

  // auto switch displayed image
  timer = setInterval(autoSlideShow, intervalSwitchImg);

});
