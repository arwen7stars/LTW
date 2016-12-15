/*********
 * METHODS
 *********/


/**
 * Handler for when the user hovers a restaurant list item
 */
var restaurantOnMouseEnter = function(event) {

  var restarauntLink = event.target.href;

	// fetch restaurant display divs
	var restaurantName = $(".restaurant-name");

	// update it with new info
	$.ajax({
		type: "get",
		url: "scripts/search_hover.php",
    data: {"link": restarauntLink}
	}).done(function(data) {
		console.log(data);
	});
};


/**
 * Handler for when the user hovers a restaurant list item
 */
var restaurantOnMouseLeave = function(event) {
	console.log("mouse left");
};



/*************
 * Main Script
 *************/


$(document).ready(function() {

	// fetch all restaurant list items
	var restaurantListItems = $(".restaurant-results li a");

	// bind event
	restaurantListItems.hover(restaurantOnMouseEnter, restaurantOnMouseLeave);


});
