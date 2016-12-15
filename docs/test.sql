SELECT name, description, address, type AS priceRange, AVG(Review.score) AS restScore
FROM Restaurant, Review, PriceRange
WHERE Restaurant.id = 56
AND Review.restaurant = 56
AND Restaurant.priceRange = PriceRange.id
GROUP BY name;
