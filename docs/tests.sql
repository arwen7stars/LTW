.read inserts.sql

.print "-> Select all Images\n"
SELECT * FROM Image;

.print "\n"

.print "-> Select all Users\n"
SELECT * FROM User;

.print "\n"

.print "-> Select all Owners\n"
SELECT * FROM Owner;

.print "\n"

.print "-> Select all Reviewers\n"
SELECT * FROM Reviewer;

.print "\n"

.print "-> Select all Logins\n"
SELECT * FROM Login;

.print "\n"

.print "-> Select all Residence Areas\n"
SELECT * FROM ResidenceArea;

.print "\n"

.print "-> Select all Restaurants\n"
SELECT * FROM Restaurant;

.print "\n"

.print "-> Select all Reviews\n"
SELECT * FROM Review;

.print "\n"

.print "-> Select all Events\n"
SELECT * FROM Event;

.print "\n"

.print "-> Select all Price Ranges\n"
SELECT * FROM PriceRange;

.print "\n"

.print "-> Select all Restaurant Owners\n"
SELECT * FROM RestaurantOwners;

.print "\n"

.print "-> Select the name, username, password and residence area of all users\n"
SELECT User.name, username, password, ResidenceArea.name
FROM User, Login, ResidenceArea
WHERE User.id = Login.id
AND User.residenceArea = ResidenceArea.id;

.print "\n"

.print "-> Select the name, description, address, price range and image of all restaurants\n"
SELECT Restaurant.name, Restaurant.description, Restaurant.address, PriceRange.type, Image.url
FROM Restaurant, PriceRange, Image
WHERE Restaurant.id = Image.restaurant
AND Restaurant.priceRange = PriceRange.id;

.print "\n"

.print "-> Select title, tldr, body, restaurant's name and reviewer's name for all reviews\n"
SELECT Review.title, Review.tldr, Review.body, Restaurant.name, User.name
FROM Review, Restaurant, Reviewer, User
WHERE Review.restaurant = Restaurant.id
AND Review.reviewer = Reviewer.id
AND Reviewer.id = User.id;

.print "\n"

.print "-> Select event's title, description, duration, restaurant's name and price range\n"
SELECT Event.title, Event.description, (julianday(Event.dateFinish) - julianday(Event.dateStart)) * 24 AS 'duration (hours)', Restaurant.name, PriceRange.type
FROM Event, Restaurant, PriceRange
WHERE Event.restaurant = Restaurant.id
AND Event.priceRange = PriceRange.id;

.print "\n"

.print "-> Select owner's name and restaurant's name of all restaurants\n"
SELECT Restaurant.name, User.name
FROM RestaurantOwners, Owner, User, Restaurant
WHERE RestaurantOwners.restaurant = Restaurant.id
AND RestaurantOwners.owner = Owner.id
AND User.id = Owner.id;

.print "\n"

.print "-> Select info from restaurant id = 51\n"
SELECT name, description, address, type AS priceRange, AVG(Review.score) AS restScore
FROM Restaurant, Review, PriceRange
WHERE Restaurant.id = 51
AND Review.restaurant = Restaurant.id
AND Restaurant.priceRange = PriceRange.id
GROUP BY name
ORDER BY restScore DESC LIMIT 10;
