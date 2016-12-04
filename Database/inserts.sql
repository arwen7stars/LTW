.read database.sql

-- read https://www.sqlite.org/lang_datefunc.html for info on how to store DATE and TIME

INSERT INTO PriceRange values(7, 'Free');
INSERT INTO PriceRange values(8, 'Cheap');
INSERT INTO PriceRange values(9, 'Average');
INSERT INTO PriceRange values(10, 'Expensive');

INSERT INTO Restaurant values(5, 'McDonalds', NULL, 'Rua das Flores, No666', 8);
INSERT INTO Restaurant values(12, 'CasaDoPipo', NULL, 'Rot Boavista', 9);

INSERT INTO Event values(11, 'Free Food Fridays!', 'Come eat for free every friday night!', '2016-12-02 00:00', '2016-12-02 23:59:59', 5, 7);

INSERT INTO Image values(1, 'http://imgur.com/a/YOsIQ', 'A picture of Senjougahara Hitagi', NULL);
INSERT INTO Image values(2, 'http://imgur.com/a/mjyDp', NULL, 5);

INSERT INTO ResidenceArea values(5, 'Porto');

INSERT INTO User values(3, 'Tiago Rafael', '1996-05-14', '2016-12-04', 1, 5);
INSERT INTO User values(4, 'Joao Carneiro', NULL, '2016-12-03', 2, 5);

INSERT INTO Owner values(3);
INSERT INTO Owner values(4);

INSERT INTO Reviewer values(4);

INSERT INTO Login values(3, 'tirafesi', '123456');
INSERT INTO Login values(4, 'ola', '1234567890');

INSERT INTO Review values(6, 10, 'My First Review', 'McDonalds is the best restaurant out there!', 'I went to McDonalds yesterday and it was amazing. 11/10 would go again!!', 4, 5);

INSERT INTO RestaurantOwners values(5, 3);
INSERT INTO RestaurantOwners values(5, 4);
INSERT INTO RestaurantOwners values(12, 3);
