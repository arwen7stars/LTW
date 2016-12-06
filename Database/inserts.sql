.read database.sql

-- read https://www.sqlite.org/lang_datefunc.html for info on how to store DATE and TIME

INSERT INTO PriceRange values(7, 'Free');
INSERT INTO PriceRange values(8, 'Cheap');
INSERT INTO PriceRange values(9, 'Average');
INSERT INTO PriceRange values(10, 'Expensive');

/* Restaurant(id, name, description, address, priceRange -> PriceRange) */
INSERT INTO Restaurant values(11, 'McDonalds', 'Nullam condimentum lectus sit amet dapibus sollicitudin. Phasellus ultrices orci metus, ac efficitur diam consectetur semper. In justo orci, scelerisque in augue in, scelerisque tincidunt mauris.', 'Rua das Flores, No666', 8);
INSERT INTO Restaurant values(12, 'Casa Do Pipo', 'Proin placerat tortor ut enim malesuada, at ullamcorper tellus ultrices', 'Rot Boavista', 9);
INSERT INTO Restaurant values(13, 'Pizza Hut', 'Here at Pizza Hut, you can taste the best pizza in the world! Not a lie, really.', 'Rua Bela Vista, No97', 10);
INSERT INTO Restaurant values(14, 'Sushi Time', 'Nam lacus mauris, feugiat non turpis vitae, lacinia suscipit nulla. Nullam vehicula diam elementum orci molestie, quis imperdiet mauris feugiat.', 'Rua Da Paz, No111', 10);
INSERT INTO Restaurant values(15, 'KFC', 'Chicken for me, chicken for you, chicken for everyone.', 'Rua de Sao Bras, No452', 8);
INSERT INTO Restaurant values(16, 'Coffee Grill', 'Nam quis ex id ipsum vulputate scelerisque vitae ultricies eros.', 'Rua Primeiro de Maio, No23', 8);
INSERT INTO Restaurant values(17, 'Zero Zero Pizzeria', 'In molestie dictum ante, laoreet egestas neque maximus ac. Curabitur blandit rutrum diam, eget gravida augue egestas eu. Quisque ullamcorper odio vitae augue egestas faucibus.', 'Rua Vinte e Tres, No300', 8);
INSERT INTO Restaurant values(18, 'Huang He', 'Curabitur iaculis pretium urna maximus hendrerit.', 'Rua Augusta, No35', 10);
INSERT INTO Restaurant values(19, 'wok to walk', 'Who in the world dislikes pasta?!?', 'Rua de Santa Maria, No643', 9);
INSERT INTO Restaurant values(20, 'Aron Sushi', 'Cras justo massa, semper in tincidunt cursus, dapibus ac risus. Quisque sit amet pretium tortor. Etiam a sapien vehicula, volutpat nisl eget, egestas dolor.', 'Rua dos Pescadores, No127', 8);
INSERT INTO Restaurant values(21, 'Tsubaki', 'Duis vehicula facilisis lacus eget porta.', 'Rua da Liberdade, No156', 10);
INSERT INTO Restaurant values(22, 'Solar dos Presuntos', 'Aliquam diam dui, bibendum ut mollis eget, mattis at lacus.', 'Av Joao da Cruz', 9);
INSERT INTO Restaurant values(23, 'Restaurante Eleven', 'Aliquam vehicula sollicitudin tempor.', 'Rua Quinze, No15', 8);
INSERT INTO Restaurant values(24, 'Restaurante Gambrinus', 'Etiam dapibus diam urna. Proin tempor purus vitae risus consequat, vitae mattis elit volutpat. Nullam eu lacus elementum arcu tincidunt vulputate.', 'Rua Tiradentes, No146', 9);
INSERT INTO Restaurant values(25, 'Darwins Cafe', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 'Rua Parana, No55', 7);
INSERT INTO Restaurant values(26, 'Churrasqueira da Paz', 'Vestibulum euismod nec lectus at elementum. Suspendisse quis augue commodo, iaculis ante sit amet, vestibulum ante. Phasellus non gravida magna.', 'Rua Rui Barbosa, No8', 9);
INSERT INTO Restaurant values(27, 'Bread4You', 'Fusce at elit augue. Donec interdum nisl ac ullamcorper auctor. Nam suscipit enim nec justo feugiat aliquam nec vel tortor. Vestibulum non nisl venenatis, hendrerit erat nec, sollicitudin nisl. Praesent feugiat nisl et est varius, eu bibendum velit iaculis. Integer metus ex, congue sit amet dolor varius, posuere elementum velit. Nam convallis lorem sed enim viverra volutpat. Mauris augue tellus, lacinia id purus et, tincidunt congue metus.', 'Rua Santos Dumont, No10', 7);
INSERT INTO Restaurant values(28, 'Jardim das Cerejas', 'Morbi eget fermentum metus, nec ultricies ex.', 'Rua Das Perolas, No544', 8);
INSERT INTO Restaurant values(29, 'Floresta Das Escadinhas', 'Donec pellentesque facilisis felis cursus pulvinar. Aliquam bibendum placerat nunc. Aliquam erat volutpat.', 'Rua Pernambuco, No322', 10);
INSERT INTO Restaurant values(30, 'El Rei De frango', 'Morbi varius scelerisque nisl vitae dapibus.', 'Rua Sta Catarina, No300', 8);
INSERT INTO Restaurant values(31, 'Casa da Comida', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris non congue velit. Curabitur congue ante non leo ornare rhoncus.', 'Rua Sao Luiz, No34', 9);
INSERT INTO Restaurant values(32, 'Sommelier Lisbon', 'Donec vitae ex sit amet enim interdum ultrices in ut quam.', 'Rua Dom Pedro II, No12', 10);
INSERT INTO Restaurant values(33, 'Comida & Volta', 'Duis accumsan risus velit, sit amet faucibus mi elementum sit amet. Duis vel vehicula dui. Maecenas aliquet elementum risus, id rutrum enim lacinia id.', 'Rua Alagoas, No99', 10);
INSERT INTO Restaurant values(34, 'Vitaminas', 'Fusce commodo condimentum fringilla.', 'Rua Minas Gerais, No41', 9);
INSERT INTO Restaurant values(35, 'Restaurante Momento', 'Fusce mauris augue, faucibus eu imperdiet quis, laoreet a velit. Curabitur rutrum eget arcu at scelerisque. Vivamus nisl elit, consequat sed pharetra a, ultrices quis eros.', 'Rua Sao Sebastiao, No76', 9);
INSERT INTO Restaurant values(36, 'Restaurante Figus', 'Duis hendrerit nunc quis suscipit bibendum.', 'Rua Quinze De Novembro, No95', 8);
INSERT INTO Restaurant values(37, 'Coimbra Taberna', 'Suspendisse lobortis hendrerit sollicitudin.', 'Rua Principal, No100', 8);
INSERT INTO Restaurant values(38, 'O Paparico', 'Fusce consequat orci diam, et gravida magna blandit auctor. Nulla ultricies dolor dui, porttitor ullamcorper mi porta eu.', 'Segunda Circular, No199', 9);
INSERT INTO Restaurant values(39, 'A Sandeira', 'Aenean aliquam volutpat libero, a laoreet lectus posuere non.', 'Rua Cidade de Bolama, No180', 10);
INSERT INTO Restaurant values(40, 'Restaurante Celta Endovelico', 'Integer ut tortor pellentesque, laoreet mauris tincidunt, maximus elit. Phasellus ut malesuada elit.', 'Rua Vicente Borga, No266', 8);
INSERT INTO Restaurant values(41, 'Papavinhos', 'Morbi nisi dui, pharetra porta nulla ut, vehicula lobortis urna. Vivamus dapibus lacus a pharetra laoreet. Suspendisse tincidunt efficitur odio, vitae tempus lectus aliquam ac.', 'Rua da Prata, No245', 8);
INSERT INTO Restaurant values(42, 'Wish Restaurante & Sushi', 'Ut non consectetur ante. Proin efficitur vitae tellus in congue. Fusce non molestie eros. Mauris eget ultricies quam. Donec sit amet elit sed orci tincidunt ultrices in id sem.', 'Rua do Salitre, No454', 8);
INSERT INTO Restaurant values(43, 'Restaurante Astoria', 'Donec interdum nisl ac ullamcorper auctor.', 'Rua da Betesga, No686', 9);
INSERT INTO Restaurant values(44, 'Portucale', 'Ut cursus convallis iaculis.', 'Av Ressano Garcia', 9);
INSERT INTO Restaurant values(45, 'Tentacoes no Prato', 'Aliquam consectetur felis ut tellus dictum, a posuere massa vestibulum. Nulla et ligula molestie, aliquet lorem non, feugiat nisi.', 'Rua da Oliveira ao Carmo, No414', 8);
INSERT INTO Restaurant values(46, 'Santa Francesinha', 'Suspendisse ac metus justo.', 'Rua dos Olhos, No818', 10);
INSERT INTO Restaurant values(47, 'Cafe Piolho Douro', 'Aenean in turpis eget lacus lacinia varius id efficitur nibh. Ut fermentum nunc eget ligula tincidunt dapibus. Maecenas ut imperdiet libero.', 'Rua das Asas, No163', 9);
INSERT INTO Restaurant values(48, 'Portugues de Gema', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ornare, dolor quis vestibulum egestas, nisi ex condimentum mauris, sed aliquam tellus lacus in erat. Aliquam in tempus massa.', 'Rua dos Mares, No146', 9);
INSERT INTO Restaurant values(49, 'Restaurante Braganca', 'Suspendisse porttitor arcu mauris, sit amet venenatis odio pulvinar eu. Duis ac metus a arcu molestie mattis.', 'Rua Bela Vista, No361', 10);
INSERT INTO Restaurant values(50, 'O Forno do Leitao do Ze', 'Ut id nunc maximus, eleifend elit id, consequat urna.', 'Rua Boa Cidade, No3', 10);
INSERT INTO Restaurant values(51, 'Restaurante Roma', 'Aliquam imperdiet nunc ut lacus suscipit, sit amet bibendum neque ornare. Donec euismod orci id odio lobortis, eget sollicitudin nisl maximus.', 'Rua do Adeus, No702', 8);
INSERT INTO Restaurant values(52, 'Porto Antigo', 'Proin blandit congue odio, vitae condimentum libero fringilla eget.', 'Rua dos Ceus, No441', 7);
INSERT INTO Restaurant values(53, 'O Bom Talher', 'Maecenas ut elit sit amet turpis tincidunt rhoncus. Donec ornare sem elit, ut pulvinar eros rutrum quis. Pellentesque mattis elit neque, ac tempus turpis facilisis et.', 'Av das Cegonhas', 8);
INSERT INTO Restaurant values(54, 'Churrasqueira Sao Francisco', 'Nunc mattis commodo turpis, eu cursus lorem faucibus sit amet. Proin vehicula massa sed ligula elementum, rhoncus interdum velit rhoncus.', 'Rot da Trofa', 8);
INSERT INTO Restaurant values(55, 'Pedro dos Frangos', 'Sed blandit fermentum luctus. Donec tristique ante eros, et mattis ligula rhoncus vitae. Nunc maximus massa leo, vel vestibulum tortor viverra sit amet. Cras sagittis ultrices augue non auctor.', 'Calcada de Cristal, No773', 9);
INSERT INTO Restaurant values(56, 'Tasquinha Douro', 'Praesent dolor diam, porttitor a ultrices eget, bibendum a felis.', 'Trav do Porto, No111', 9);
INSERT INTO Restaurant values(57, 'Restaurante Silva Bar', 'Ut vel dolor non quam mattis placerat vel ut enim. Ut porttitor, lectus nec blandit accumsan, lorem ipsum laoreet neque, vitae varius ante dui ut turpis. Donec lacus ante, pulvinar ut ex et, bibendum fringilla nisl. Ut id nunc maximus, eleifend elit id, consequat urna. Duis et diam lorem.', 'Rua Julio Cesar, No535', 7);
INSERT INTO Restaurant values(58, 'Restaurante Kool', 'Nunc semper, ante a pretium congue, nisl nisi pulvinar elit, sagittis iaculis libero odio id augue. Sed dapibus tortor a mi hendrerit ultrices. Donec at erat posuere, semper ligula eu, pulvinar nisl. Nullam erat ipsum, iaculis vel elit a, mattis porta diam. Suspendisse finibus, nisl vitae facilisis interdum, nulla nibh ultricies nunc, eu lobortis lorem purus a eros. Nulla justo leo, hendrerit in metus in, lacinia dapibus arcu. Quisque a luctus nisl, ut ullamcorper nisl. Nam tincidunt est mi, sit amet hendrerit arcu lacinia quis. Nunc sed orci leo.', 'Rua do Sol a Santana, No81', 10);
INSERT INTO Restaurant values(59, 'Sushi Place Foz', 'Suspendisse lobortis hendrerit sollicitudin. Quisque vehicula egestas est, vel mattis justo efficitur a.', 'Rua de Sao Mamede, No69', 10);
INSERT INTO Restaurant values(60, 'Restaurante Medit', 'Vestibulum ac diam sit amet diam tempus ultrices. Fusce sit amet velit nec nisl condimentum pulvinar. Duis vitae mi tincidunt, placerat massa eget, euismod ante. Etiam sit amet tincidunt ligula, ut hendrerit mauris. Aenean efficitur aliquet aliquam.', 'Rua dos Fanqueiros, No99', 9);

INSERT INTO Event values(61, 'Free Food Fridays!', 'Come eat for free every friday night!', '2016-12-02 00:00', '2016-12-02 23:59', 15, 7);
INSERT INTO Event values(62, 'Rest from college at this restaurant!', 'Tired because of all the college work?! Come eat past to alleviate your stress!', '2016-12-12 00:00', '2016-12-12 23:59', 15, 19);
INSERT INTO Event values(63, 'Fine food & wine for a good price this week', 'Visit Papavinhos this week!', '2016-12-11 00:00', '2016-12-18 23:59', 41, 9);
INSERT INTO Event values(64, 'McFood!!', 'Eat a cheap and good meal for Christmas~~!', '2016-12-25 00:00', '2016-12-25 23:59', 11, 8);
INSERT INTO Event values(65, 'Merry Pizza!', 'Eat the best pizza this Christmas!', '2016-12-25 00:00', '2016-12-25 23:59', 11, 8);
INSERT INTO Event values(66, 'Merry Food~', 'What is Christmas without exquisite food?', '2016-12-25 00:00', '2016-12-25 23:59', 23, 10);
INSERT INTO Event values(67, 'Cozy Meal for New Year', 'Celebrate the new year with cheap food', '2016-12-31 20:00', '2017-01-01 06:00', 11, 7);
INSERT INTO Event values(68, 'New Years Banquet', 'Come eat a tasty & exquisite meal to celebrate the new year!', '2016-12-31 20:00', '2017-01-01 06:00', 14, 10);
INSERT INTO Event values(69, 'Satuday Exclusive Sale!', 'Come eat the best food ever for a good price!', '2017-01-06 00:00', '2017-01-06 23:59', 22, 8);
INSERT INTO Event values(70, 'Bread4Life', 'Eat lots of bread today', '2017-01-30 00:00', '2017-01-30 23:59:59', 27, 8);
INSERT INTO Event values(71, 'Birthday of Rin Tohsaka~', 'The best birthday celebration for the best mage!', '2016-02-03 20:00', '2016-02-03 23:59', 52, 10);
INSERT INTO Event values(72, 'Carnival', 'Celebrate carnival with us!', '2017-02-09 00:00', '2017-02-09 23:59', 53, 8);
INSERT INTO Event values(73, 'Valentines Day!', 'Celebrate this special day here!', '2017-02-14 00:00', '2017-02-14 23:59', 15, 8);
INSERT INTO Event values(74, 'Be cool', 'Eat and be cool today at Restaurante Kool!', '2017-03-02 00:00', '2017-03-02 23:59', 58, 10);
INSERT INTO Event values(75, 'White Day', 'Give the chocolates back or whatever', '2017-03-14 00:00', '2017-03-14 23:59', 25, 9);
INSERT INTO Event values(76, 'Our food is expensive', 'Ah!! We lied 8D', '2017-04-01 00:00', '2017-04-01 23:59', 28, 8);
INSERT INTO Event values(77, 'Star Wars Day', 'May the force be with you', '2017-05-04 00:00', '2017-05-04 23:59', 30, 8);
INSERT INTO Event values(78, 'Portucales 10th Birthday', 'We have been around for 10 year! Celebrate this special day with us', '2017-05-13 10:00', '2017-05-13 22:00', 44, 9);
INSERT INTO Event values(79, 'Paparicos 1st birthday', 'Celebrate our birthday with us', '2017-05-20 00:00', '2017-05-20 23:59', 38, 8);
INSERT INTO Event values(80, 'Star Wars Day', 'May the force be with you', '2017-05-04 00:00', '2017-05-04 23:59', 30, 8);
INSERT INTO Event values(81, 'Happy Birthday to Claudia', 'Celebrate her birthday today!', '2016-05-26 18:00', '2016-05-26 22:00', 11, 8);

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
