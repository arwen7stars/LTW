.read database.sql

-- read https://www.sqlite.org/lang_datefunc.html for info on how to store DATE and TIME

INSERT INTO PriceRange values(7, 'Free');
INSERT INTO PriceRange values(8, 'Cheap');
INSERT INTO PriceRange values(9, 'Average');
INSERT INTO PriceRange values(10, 'Expensive');

/* Restaurant(id, name, description, address, priceRange -> PriceRange) */
INSERT INTO Restaurant values(1, 'McDonalds', NULL, 'Rua das Flores, No666', 8);
INSERT INTO Restaurant values(2, 'Casa Do Pipo', NULL, 'Rot Boavista', 9);
INSERT INTO Restaurant values(3, 'Pizza Hut', NULL, 'Rua Bela Vista, No97', 10);
INSERT INTO Restaurant values(4, 'Sushi Time', NULL, 'Rua Da Paz, No111', 10);
INSERT INTO Restaurant values(5, 'KFC', NULL, 'Rua de Sao Bras, No452', 8);
INSERT INTO Restaurant values(6, 'Coffee Grill', NULL, 'Rua Primeiro de Maio, No23', 8);
INSERT INTO Restaurant values(7, 'Zero Zero Pizzeria', NULL, 'Rua Vinte e Tres, No300', 8);
INSERT INTO Restaurant values(8, 'Huang He', NULL, 'Rua Augusta, No35', 10);
INSERT INTO Restaurant values(9, 'wok to walk', NULL, 'Rua de Santa Maria, No643', 9);
INSERT INTO Restaurant values(10, 'Aron Sushi', NULL, 'Rua dos Pescadores, No127', 8);
INSERT INTO Restaurant values(11, 'Tsubaki', NULL, 'Rua da Liberdade, No156', 10);
INSERT INTO Restaurant values(12, 'Solar dos Presuntos', NULL, 'Av Joao da Cruz', 9);
INSERT INTO Restaurant values(13, 'Restaurante Eleven', NULL, 'Rua Quinze, No15', 8);
INSERT INTO Restaurant values(14, 'Restaurante Gambrinus', NULL, 'Rua Tiradentes, No146', 9);
INSERT INTO Restaurant values(15, 'Darwins Cafe', NULL, 'Rua Parana, No55', 7);
INSERT INTO Restaurant values(16, 'Churrasqueira da Paz', NULL, 'Rua Rui Barbosa, No8', 9);
INSERT INTO Restaurant values(17, 'Bread4You', NULL, 'Rua Santos Dumont, No10', 7);
INSERT INTO Restaurant values(18, 'Jardim das Cerejas', NULL, 'Rua Das Perolas, No544', 8);
INSERT INTO Restaurant values(19, 'Floresta Das Escadinhas', NULL, 'Rua Pernambuco, No322', 10);
INSERT INTO Restaurant values(20, 'El Rei De frango', NULL, 'Rua Sta Catarina, No300', 8);
INSERT INTO Restaurant values(21, 'Casa da Comida', NULL, 'Rua Sao Luiz, No34', 9);
INSERT INTO Restaurant values(22, 'Sommelier Lisbon', NULL, 'Rua Dom Pedro II, No12', 10);
INSERT INTO Restaurant values(23, 'Comida & Volta', NULL, 'Rua Alagoas, No99', 10);
INSERT INTO Restaurant values(24, 'Vitaminas', NULL, 'Rua Minas Gerais, No41', 9);
INSERT INTO Restaurant values(25, 'Restaurante Momento', NULL, 'Rua Sao Sebastiao, No76', 9);
INSERT INTO Restaurant values(26, 'Restaurante Figus', NULL, 'Rua Quinze De Novembro, No95', 8);
INSERT INTO Restaurant values(27, 'Coimbra Taberna', NULL, 'Rua Principal, No100', 8);
INSERT INTO Restaurant values(28, 'O Paparico', NULL, 'Segunda Circular, No199', 9);
INSERT INTO Restaurant values(29, 'A Sandeira', NULL, 'Rua Cidade de Bolama, No180', 10);
INSERT INTO Restaurant values(30, 'Restaurante Celta Endovelico', NULL, 'Rua Vicente Borga, No266', 8);
INSERT INTO Restaurant values(31, 'Papavinhos', NULL, 'Rua da Prata, No245', 8);
INSERT INTO Restaurant values(32, 'Wish Restaurante & Sushi', NULL, 'Rua do Salitre, No454', 8);
INSERT INTO Restaurant values(33, 'Restaurante Astória', NULL, 'Rua da Betesga, No686', 9);
INSERT INTO Restaurant values(34, 'Portucale', NULL, 'Av Ressano Garcia', 9);
INSERT INTO Restaurant values(35, 'Tentações no Prato', NULL, 'Rua da Oliveira ao Carmo, No414', 8);
INSERT INTO Restaurant values(36, 'Santa Francesinha', NULL, 'Rua dos Olhos, No818', 10);
INSERT INTO Restaurant values(37, 'Cafe Piolho D'Ouro', NULL, 'Rua das Asas, No163', 9);
INSERT INTO Restaurant values(38, 'Português de Gema', NULL, 'Rua dos Mares, No146', 9);
INSERT INTO Restaurant values(39, 'Restaurante Braganca', NULL, 'Rua Bela Vista, No361', 10);
INSERT INTO Restaurant values(40, 'O Forno do Leitão do Zé', NULL, 'Rua Boa Cidade, No3', 10);
INSERT INTO Restaurant values(41, 'Restaurante Roma', NULL, 'Rua do Adeus, No702', 8);
INSERT INTO Restaurant values(42, 'Porto Antigo', NULL, 'Rua dos Ceus, No441', 7);
INSERT INTO Restaurant values(43, 'O Bom Talher', NULL, 'Av das Cegonhas', 8);
INSERT INTO Restaurant values(44, 'Churrasqueira São Francisco', NULL, 'Rot da Trofa', 8);
INSERT INTO Restaurant values(45, 'Pedro dos Frangos', NULL, 'Calcada de Cristal, No773', 9);
INSERT INTO Restaurant values(46, 'Tasquinha D'ouro', NULL, 'Trav do Porto, No111', 9);
INSERT INTO Restaurant values(47, 'Restaurante Silva Bar', NULL, 'Rua Julio Cesar, No535', 7);
INSERT INTO Restaurant values(48, 'Restaurante Kool', NULL, 'Rua do Sol a Santana, No81', 8);
INSERT INTO Restaurant values(49, 'Sushi Place Foz', NULL, 'Rua de Sao Mamede, No69', 10);
INSERT INTO Restaurant values(50, 'Restaurante Medit', NULL, 'Rua dos Fanqueiros, No99', 10);

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
