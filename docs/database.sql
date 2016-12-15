.mode columns
.headers on
.nullvalue NULL
PRAGMA FOREIGN_KEYS = ON;

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

/* Owner(id -> User) */
CREATE TABLE Owner (
  id NUMBER NOT NULL PRIMARY KEY REFERENCES User(id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Reviewer(id -> User) */
CREATE TABLE Reviewer (
  id NUMBER NOT NULL PRIMARY KEY REFERENCES User(id) ON DELETE CASCADE ON UPDATE CASCADE
);

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

CREATE TABLE ReplyReviews (
  id NUMBER PRIMARY KEY NOT NULL,
  comment NVARCHAR2(20),
  review NUMBER NOT NULL REFERENCES Review(id) ON DELETE CASCADE ON UPDATE CASCADE,
  commenter NUMBER NOT NULL REFERENCES Owner(id) ON DELETE CASCADE ON UPDATE CASCADE
);
