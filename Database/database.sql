.mode columns
.headers on
.nullvalue NULL
PRAGMA FOREIGN_KEYS = ON;

-- read https://www.sqlite.org/lang_datefunc.html for info on how to store DATE and TIME

/* Image(id, url, description, restaurant -> Restaurant) */
CREATE TABLE Image (
  id NUMBER PRIMARY KEY NOT NULL,
  url NVARCHAR2(20) NOT NULL,
  description NVARCHAR2(20),
  restaurant NUMBER REFERENCES Restaurant(id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* User(id, name, dateOfBirth, dateJoined, image -> Image, residenceArea -> ResidenceArea) */
CREATE TABLE User (
  id NUMBER PRIMARY KEY NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  dataOfBirth DATE,
  dateJoined DATE NOT NULL,
  image NUMBER REFERENCES Image(id) ON DELETE SET NULL ON UPDATE CASCADE,
  residenceArea NUMBER REFERENCES ResidenceArea(id) ON DELETE SET NULL ON UPDATE CASCADE
);

-- TODO change .png, .doc e .pdf to match deletion of meanScore
/* Owner(id -> User) */
CREATE TABLE Owner (
  id NUMBER NOT NULL PRIMARY KEY REFERENCES User(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- TODO change .png, .doc e .pdf to match deletion of meanScore
/* Reviewer(id -> User) */
CREATE TABLE Reviewer (
  id NUMBER NOT NULL PRIMARY KEY REFERENCES User(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- TODO change .png, .doc e .pdf to match id -> User(id)
/* Login(id -> User, username, password) */
CREATE TABLE Login (
  id NUMBER NOT NULL PRIMARY KEY REFERENCES User(id) ON DELETE CASCADE ON UPDATE CASCADE,
  username NVARCHAR2(20) NOT NULL,
  password NVARCHAR2(20) NOT NULL
);

/* ResidenceArea(id, name) */
CREATE TABLE ResidenceArea (
  id NUMBER PRIMARY KEY NOT NULL,
  name NVARCHAR2(20) NOT NULL
);

-- TODO change .png, .doc e .pdf to match deletion of score
/* Restaurant(id, name, description, address, priceRange -> PriceRange) */
CREATE TABLE Restaurant (
  id NUMBER PRIMARY KEY NOT NULL,
  name NVARCHAR2(20) NOT NULL,
  description NVARCHAR2(20),
  address NVARCHAR2(20) NOT NULL,
  priceRange NUMBER NOT NULL REFERENCES PriceRange(id) ON DELETE SET NULL ON UPDATE CASCADE
);

/* Review(id, score, title, tldr, body, reviewer -> Reviewer, restaurant -> Restaurant) */
CREATE TABLE Review (
  id NUMBER PRIMARY KEY NOT NULL,
  score NUMBER NOT NULL,
  title NVARCHAR2(20),
  tldr NVARCHAR2(20),
  body NVARCHAR2(20),
  reviewer NUMBER NOT NULL REFERENCES Reviewer(id) ON DELETE CASCADE ON UPDATE CASCADE,
  restaurant NUMBER NOT NULL REFERENCES Restaurant(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- TODO change .png, .doc e .pdf to match deletion of duration
/* Event(id, title, description, dateStart, dateFinish, restaurant -> Restaurant, priceRange -> PriceRange) */
CREATE TABLE Event (
  id NUMBER PRIMARY KEY NOT NULL,
  title NVARCHAR2(20) NOT NULL,
  description NVARCHAR2(20) NOT NULL,
  dateStart DATE NOT NULL,
  dateFinish DATE NOT NULL,
  restaurant NUMBER NOT NULL REFERENCES Restaurant(id) ON DELETE CASCADE ON UPDATE CASCADE,
  priceRange NUMBER NOT NULL REFERENCES PriceRange(id) ON DELETE SET NULL ON UPDATE CASCADE
);

/* PriceRange(id, type) */
CREATE TABLE PriceRange (
  id NUMBER PRIMARY KEY NOT NULL,
  type NVARCHAR2(20) NOT NULL
);

/* RestaurantOwners(restaurant -> Restaurant, owner -> Owner) */
CREATE TABLE RestaurantOwners (
  restaurant NUMBER NOT NULL REFERENCES Restaurant(id) ON DELETE CASCADE ON UPDATE CASCADE,
  owner NUMBER NOT NULL REFERENCES Owner(id) ON DELETE CASCADE ON UPDATE CASCADE,
  PRIMARY KEY (restaurant, owner)
);

/* INSERTS */
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
