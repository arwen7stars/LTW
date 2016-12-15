/*********
 * METHODS
 *********/


/**
 * Handler for when the user hovers a restaurant list item
 */
var restaurantOnMouseEnter = function(event) {

  // get url
  var restaurantLink = new URL(event.target.href);

  // get search params and get id
  var restaurantId = restaurantLink.searchParams.get('id');

	// fetch restaurant display divs
	var restaurantName = $(".restaurant-name");
  var restaurantDesc = $(".restaurant-desc");
  var restaurantImg = $(".restaurant-img");

	// update it with new info
	$.ajax({
		type: "get",
		url: "scripts/search_hover.php",
    dataType: 'json',
    data: {"id": restaurantId}
	}).done(function(data) {
    if (data[1].score != null) {
      restaurantName.html(data[0].name + '<br />Score: ' + Math.round(data[1].score*100)/100 + '/10');
    } else {
      restaurantName.html(data[0].name + '<br />No score available yet!');
    }
    if (data[2].url != null) {
      restaurantImg.html('<img src="' + data[2].url + '">');
    }
	});
};


/**
 * Handler for when the user hovers a restaurant list item
 */
var restaurantOnMouseLeave = function(event) {
  // fetch restaurant display divs
	var restaurantName = $(".restaurant-name");
  var restaurantDesc = $(".restaurant-desc");
  var restaurantImg = $(".restaurant-img");

  restaurantName.html("");
  restaurantDesc.html("");
  restaurantImg.html("");
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
