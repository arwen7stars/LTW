.read database.sql

.print "-> Select all users\n"
SELECT * FROM User;

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
