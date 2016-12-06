.read database.sql

-- read https://www.sqlite.org/lang_datefunc.html for info on how to store DATE and TIME

INSERT INTO PriceRange values(7, 'Free');
INSERT INTO PriceRange values(8, 'Cheap');
INSERT INTO PriceRange values(9, 'Average');
INSERT INTO PriceRange values(10, 'Expensive');

/* Restaurant(id, name, description, address, priceRange -> PriceRange) */
INSERT INTO Restaurant values(11, 'McDonalds', NULL, 'Rua das Flores, No666', 8);
INSERT INTO Restaurant values(12, 'Casa Do Pipo', NULL, 'Rot Boavista', 9);
INSERT INTO Restaurant values(13, 'Pizza Hut', NULL, 'Rua Bela Vista, No97', 10);
INSERT INTO Restaurant values(14, 'Sushi Time', NULL, 'Rua Da Paz, No111', 10);
INSERT INTO Restaurant values(15, 'KFC', NULL, 'Rua de Sao Bras, No452', 8);
INSERT INTO Restaurant values(16, 'Coffee Grill', NULL, 'Rua Primeiro de Maio, No23', 8);
INSERT INTO Restaurant values(17, 'Zero Zero Pizzeria', NULL, 'Rua Vinte e Tres, No300', 8);
INSERT INTO Restaurant values(18, 'Huang He', NULL, 'Rua Augusta, No35', 10);
INSERT INTO Restaurant values(19, 'wok to walk', NULL, 'Rua de Santa Maria, No643', 9);
INSERT INTO Restaurant values(20, 'Aron Sushi', NULL, 'Rua dos Pescadores, No127', 8);
INSERT INTO Restaurant values(21, 'Tsubaki', NULL, 'Rua da Liberdade, No156', 10);
INSERT INTO Restaurant values(22, 'Solar dos Presuntos', NULL, 'Av Joao da Cruz', 9);
INSERT INTO Restaurant values(23, 'Restaurante Eleven', NULL, 'Rua Quinze, No15', 8);
INSERT INTO Restaurant values(24, 'Restaurante Gambrinus', NULL, 'Rua Tiradentes, No146', 9);
INSERT INTO Restaurant values(25, 'Darwins Cafe', NULL, 'Rua Parana, No55', 7);
INSERT INTO Restaurant values(26, 'Churrasqueira da Paz', NULL, 'Rua Rui Barbosa, No8', 9);
INSERT INTO Restaurant values(27, 'Bread4You', NULL, 'Rua Santos Dumont, No10', 7);
INSERT INTO Restaurant values(28, 'Jardim das Cerejas', NULL, 'Rua Das Perolas, No544', 8);
INSERT INTO Restaurant values(29, 'Floresta Das Escadinhas', NULL, 'Rua Pernambuco, No322', 10);
INSERT INTO Restaurant values(30, 'El Rei De frango', NULL, 'Rua Sta Catarina, No300', 8);
INSERT INTO Restaurant values(31, 'Casa da Comida', NULL, 'Rua Sao Luiz, No34', 9);
INSERT INTO Restaurant values(32, 'Sommelier Lisbon', NULL, 'Rua Dom Pedro II, No12', 10);
INSERT INTO Restaurant values(33, 'Comida & Volta', NULL, 'Rua Alagoas, No99', 10);
INSERT INTO Restaurant values(34, 'Vitaminas', NULL, 'Rua Minas Gerais, No41', 9);
INSERT INTO Restaurant values(35, 'Restaurante Momento', NULL, 'Rua Sao Sebastiao, No76', 9);
INSERT INTO Restaurant values(36, 'Restaurante Figus', NULL, 'Rua Quinze De Novembro, No95', 8);
INSERT INTO Restaurant values(37, 'Coimbra Taberna', NULL, 'Rua Principal, No100', 8);
INSERT INTO Restaurant values(38, 'O Paparico', NULL, 'Segunda Circular, No199', 9);
INSERT INTO Restaurant values(39, 'A Sandeira', NULL, 'Rua Cidade de Bolama, No180', 10);
INSERT INTO Restaurant values(40, 'Restaurante Celta Endovelico', NULL, 'Rua Vicente Borga, No266', 8);
INSERT INTO Restaurant values(41, 'Papavinhos', NULL, 'Rua da Prata, No245', 8);
INSERT INTO Restaurant values(42, 'Wish Restaurante & Sushi', NULL, 'Rua do Salitre, No454', 8);
INSERT INTO Restaurant values(43, 'Restaurante Astória', NULL, 'Rua da Betesga, No686', 9);
INSERT INTO Restaurant values(44, 'Portucale', NULL, 'Av Ressano Garcia', 9);
INSERT INTO Restaurant values(45, 'Tentações no Prato', NULL, 'Rua da Oliveira ao Carmo, No414', 8);
INSERT INTO Restaurant values(46, 'Santa Francesinha', NULL, 'Rua dos Olhos, No818', 10);
INSERT INTO Restaurant values(47, 'Cafe Piolho Douro', NULL, 'Rua das Asas, No163', 9);
INSERT INTO Restaurant values(48, 'Português de Gema', NULL, 'Rua dos Mares, No146', 9);
INSERT INTO Restaurant values(49, 'Restaurante Braganca', NULL, 'Rua Bela Vista, No361', 10);
INSERT INTO Restaurant values(50, 'O Forno do Leitão do Zé', NULL, 'Rua Boa Cidade, No3', 10);
INSERT INTO Restaurant values(51, 'Restaurante Roma', NULL, 'Rua do Adeus, No702', 8);
INSERT INTO Restaurant values(52, 'Porto Antigo', NULL, 'Rua dos Ceus, No441', 7);
INSERT INTO Restaurant values(53, 'O Bom Talher', NULL, 'Av das Cegonhas', 8);
INSERT INTO Restaurant values(54, 'Churrasqueira São Francisco', NULL, 'Rot da Trofa', 8);
INSERT INTO Restaurant values(55, 'Pedro dos Frangos', NULL, 'Calcada de Cristal, No773', 9);
INSERT INTO Restaurant values(56, 'Tasquinha Douro', NULL, 'Trav do Porto, No111', 9);
INSERT INTO Restaurant values(57, 'Restaurante Silva Bar', NULL, 'Rua Julio Cesar, No535', 7);
INSERT INTO Restaurant values(58, 'Restaurante Kool', NULL, 'Rua do Sol a Santana, No81', 10);
INSERT INTO Restaurant values(59, 'Sushi Place Foz', NULL, 'Rua de Sao Mamede, No69', 10);
INSERT INTO Restaurant values(60, 'Restaurante Medit', NULL, 'Rua dos Fanqueiros, No99', 9);

INSERT INTO Event values(61, 'Free Food Fridays!', 'Come eat for free every friday night!', '2016-12-02 00:00', '2016-12-02 23:59', 15, 7);
INSERT INTO Event values(62, 'McFood!!', 'Eat a cheap and good meal for Christmas~~!', '2016-12-25 00:00', '2016-12-25 23:59', 11, 8);
INSERT INTO Event values(63, 'Merry Pizza!', 'Eat the best pizza this Christmas!', '2016-12-25 00:00', '2016-12-25 23:59', 11, 8);
INSERT INTO Event values(64, 'Merry Food~', 'What is Christmas without exquisite food?', '2016-12-25 00:00', '2016-12-25 23:59', 23, 10);
INSERT INTO Event values(65, 'Cozy Meal for New Year', 'Celebrate the new year with cheap food', '2016-12-31 20:00', '2017-01-01 06:00', 11, 7);
INSERT INTO Event values(66, 'New Years Banquet', 'Come eat a tasty & exquisite meal to celebrate the new year!', '2016-12-31 20:00', '2017-01-01 06:00', 14, 10);
INSERT INTO Event values(67, 'Satuday Exclusive Sale!', 'Come eat the best food ever for a good price!', '2017-01-06 00:00', '2017-01-06 23:59', 22, 8);
INSERT INTO Event values(68, 'Bread4Life', 'Eat lots of bread today', '2017-01-30 00:00', '2017-01-30 23:59:59', 27, 8);
INSERT INTO Event values(69, 'Carnival', 'Celebrate carnival with us!', '2017-02-09 00:00', '2017-02-09 23:59:59', 53, 8);
INSERT INTO Event values(70, 'Valentines Day!', 'Celebrate this special day here!', '2017-02-14 00:00', '2017-02-14 23:59:59', 15, 8);
INSERT INTO Event values(71, 'Be cool', 'Eat and be cool today at Restaurante Kool!', '2017-03-02 00:00', '2017-03-02 23:59:59', 58, 10);

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
