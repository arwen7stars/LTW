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
INSERT INTO Event values(62, 'Rest from college at this restaurant!', 'Tired because of all the college work?! Come eat past to alleviate your stress!', '2016-12-12 00:00', '2016-12-12 23:59', 15, 9);
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

INSERT INTO Image values(82, 'http://www.localporto.com/wp-content/uploads/mcdonalds-imperial-porto.jpg', 'A picture of McDonalds', 11);
INSERT INTO Image values(83, 'https://media-cdn.tripadvisor.com/media/photo-w/02/56/d8/b5/ode-wine-house.jpg', 'A picture of Casa do Pipo', 12);
INSERT INTO Image values(84, 'http://s1.portugalio.com/u/77/5d/pizza-hut-portugal-3_xl.jpg', 'A picture of Pizza Hut', 13);
INSERT INTO Image values(85, 'https://media-cdn.tripadvisor.com/media/photo-o/07/6c/e7/71/getlstd-property-photo.jpg', 'A picture of Sushi Time', 14);
INSERT INTO Image values(86, 'http://www.revistahosteleria.com/es/img2/2015/12/kfc-lasrozas-13333.JPG', 'A picture of KFC', 15);
INSERT INTO Image values(87, 'https://media-cdn.tripadvisor.com/media/photo-w/05/c4/09/06/camafeu.jpg', 'A picture of Coffee Grill', 16);
INSERT INTO Image values(88, 'http://outravisao.com/outravisaocomunicacao/wp-content/uploads/2013/07/PerfettaPizzeria_FotoPauloCunha_005.jpg', 'A picture of Zero Zero Pizzeria', 17);
INSERT INTO Image values(89, 'https://media-cdn.tripadvisor.com/media/photo-o/02/d2/27/45/kaikou-sushi-bar.jpg', 'A picture of Huang He', 18);
INSERT INTO Image values(90, 'http://woktowalk.com/wp-content/uploads/2014/06/cardiff_wellfield_01.jpg', 'A picture of wok to walk', 19);
INSERT INTO Image values(91, 'https://media-cdn.tripadvisor.com/media/photo-o/07/33/ef/8e/bela-cruz.jpg', 'A picture of Aron Sushi', 20);
INSERT INTO Image values(92, 'https://media-cdn.tripadvisor.com/media/photo-o/0d/7b/a5/bf/20161028-190055-largejpg.jpg', 'A picture of Tsubaki', 21);
INSERT INTO Image values(93, 'http://2.bp.blogspot.com/-24BLEyZ5gAo/TmfJeuns9sI/AAAAAAAAByk/zMf_sn_TyOQ/s1600/74099_10150092521398745_327302768744_6969660_772717_n.jpg', 'A picture of Solar dos Presuntos', 22);
INSERT INTO Image values(94, 'http://www.restauranteleven.com/media/eleven-restaurante-imageLinkmedium2.jpg', 'A picture of Restaurante Eleven', 23);
INSERT INTO Image values(95, 'http://media.revistadevinhos.pt/artigos/imagens/3397.jpg', 'A picture of Restaurante Gambrinus', 24);
INSERT INTO Image values(96, 'http://www.nandos.com/sites/all/themes/nandos/images/restaurants/restaurant-carousel-1.jpg', 'A picture of Darwins Cafe', 25);
INSERT INTO Image values(97, 'https://media-cdn.tripadvisor.com/media/photo-w/08/f3/d0/bc/local-a-visitar.jpg', 'A picture of Churrasqueira da Paz', 26);
INSERT INTO Image values(98, 'https://media-cdn.tripadvisor.com/media/photo-s/0a/a7/03/b5/bread4you.jpg', 'A picture of Bread4You', 27);
INSERT INTO Image values(99, 'http://www.jardimdascerejas.com/extras/foto_galeria_7.jpg', 'A picture of Jardim das Cerejas', 28);
INSERT INTO Image values(100, 'https://media-cdn.tripadvisor.com/media/photo-w/08/69/99/38/elebe-baixa.jpg', 'A picture of Floresta Das Escadinhas', 29);
INSERT INTO Image values(101, 'https://media-cdn.tripadvisor.com/media/photo-o/07/f2/53/59/folias-de-baco.jpg', 'A picture of El Rei De frango', 30);
INSERT INTO Image values(102, 'https://media-cdn.tripadvisor.com/media/photo-w/0a/87/26/1d/sala-de-jantar.jpg', 'A picture of Casa da Comida', 31);
INSERT INTO Image values(103, 'http://pt.fundspeople.com/system/picture/file/29194/adaa78dc77b96347.png', 'A picture of Sommelier Lisbon', 32);
INSERT INTO Image values(104, 'https://media-cdn.tripadvisor.com/media/photo-w/06/60/6a/31/rui-paula-dop.jpg', 'A picture of Comida & Volta', 33);
INSERT INTO Image values(105, 'http://www.hipersuper.pt/wp-content/uploads/2012/07/Vitaminas.jpg', 'A picture of Vitaminas', 34);
INSERT INTO Image values(106, 'https://media-cdn.tripadvisor.com/media/photo-s/01/b8/15/08/pedro-lemos-restaurante.jpg', 'A picture of Restaurante Momento', 35);
INSERT INTO Image values(107, 'https://media-cdn.tripadvisor.com/media/photo-w/08/ae/1b/46/tasco.jpg', 'A picture of Restaurante Figus', 36);
INSERT INTO Image values(108, 'https://media-cdn.tripadvisor.com/media/photo-o/0b/a4/2e/b7/lado-b-interior-2016.jpg', 'A picture of Coimbra Taberna', 37);
INSERT INTO Image values(109, 'https://media-cdn.tripadvisor.com/media/photo-s/01/c4/73/09/privacy-and-atmosphere.jpg', 'A picture of O Paparico', 38);
INSERT INTO Image values(110, 'https://media-cdn.tripadvisor.com/media/photo-w/06/9e/c6/3a/ambiente-excelente-atendimento.jpg', 'A picture of A Sandeira', 39);
INSERT INTO Image values(111, 'https://media-cdn.tripadvisor.com/media/photo-o/02/d7/5f/0b/postigo-da-ribeira.jpg', 'A picture of Restaurante Celta Endovelico', 40);
INSERT INTO Image values(112, 'https://media-cdn.tripadvisor.com/media/photo-s/02/2e/92/16/papavinhos-decoracao.jpg', 'A picture of Papavinhos', 41);
INSERT INTO Image values(113, 'https://media-cdn.tripadvisor.com/media/photo-w/09/33/31/f5/getlstd-property-photo.jpg', 'A picture of Wish Restaurante & Sushi', 42);
INSERT INTO Image values(114, 'https://media-cdn.tripadvisor.com/media/photo-w/0c/5e/88/fa/sala-de-jantar-10-piso.jpg', 'A picture of Restaurante Astoria', 43);
INSERT INTO Image values(115, 'http://www.miradouro-portucale.com/slide/02.jpg', 'A picture of Portucale', 44);
INSERT INTO Image values(116, 'http://images-cdn.impresa.pt/visao/2016-04-20-lm-rest-tentacoes-np-prato-30-03-1708.jpg?v=w620h395', 'A picture of Tentacoes no Prato', 45);
INSERT INTO Image values(117, 'http://francesinhas.com/static/uploads/yplaces/photos/santa_francesinha3.jpg', 'A picture of Santa Francesinha', 46);
INSERT INTO Image values(118, 'http://www.zcafe.com.br/wp-content/uploads/2010/12/z_cafe2.jpg', 'A picture of Cafe Piolho Douro', 47);
INSERT INTO Image values(119, 'http://s3.amazonaws.com/stnd-narcissa-prod/graphics/assets/000/000/028/medium/narcissa_night_january_2014_cwmosier-1.jpg?1390860141', 'A picture of Portugues de Gema', 48);
INSERT INTO Image values(120, 'http://www.algarve-restaurants.com/wp-content/uploads/2016/01/restaurants.jpg', 'A picture of Restaurante Braganca', 49);
INSERT INTO Image values(121, 'https://s-media-cache-ak0.pinimg.com/originals/26/a2/cd/26a2cdc73f7f623e493ed72cfe4fadb7.jpg', 'A picture of O Forno do Leitao do Ze', 50);
INSERT INTO Image values(122, 'https://lh5.ggpht.com/o0rpZ91pkHESYvQEaOhhAjddX6nyBVvM8lqYuAJ_qkxvNI72lTOFoPvNpqFN3NBGjWUFEU3TAUjHiXygIewo3otpHBo2=s940', 'A picture of Restaurante Roma', 51);
INSERT INTO Image values(123, 'https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2016/01/napa-valley-restaurant-interior-at-night.jpg', 'A picture of Porto Antigo', 52);
INSERT INTO Image values(124, 'https://www.omnihotels.com/-/media/images/hotels/chidtn/restaurants/chidtn-omni-chicago-hotel-676-dining-chef.jpg', 'A picture of O Bom Talher', 53);
INSERT INTO Image values(125, 'http://img2.10bestmedia.com/Images/Photos/136146/Decor_54_990x660_201404221708.jpg', 'A picture of Churrasqueira Sao Francisco', 54);
INSERT INTO Image values(126, 'http://cafecampagne.com/wp-content/uploads/2014/05/OpenTable-900x581.jpg', 'A picture of Pedro dos Frangos', 55);
INSERT INTO Image values(127, 'http://www.fasano.com.br//upload/imagem/galeria/restaurantes/principal/72d261d5f16322740949a907d405f7e2.jpg', 'A picture of Tasquinha Douro', 56);
INSERT INTO Image values(128, 'http://hotel-avanta.ru/files/articles/15.jpg', 'A picture of Restaurante Silva Bar', 57);
INSERT INTO Image values(129, 'http://www.villa-arte.ru/images/slides/restaurant-02.jpg', 'A picture of Restaurante Kool', 58);
INSERT INTO Image values(130, 'http://www.kazanriviera.ru/upload/medialibrary/15b/008.jpg', 'A picture of Sushi Place Foz', 59);
INSERT INTO Image values(131, 'http://premierrest.ru/img/photos/50bfc66edf0cb.jpg', 'A picture of Restaurante Medit', 60);

INSERT INTO Image values(132, 'https://s30.postimg.org/h5y4mwb41/ecd73c9cd58e56c2d4ab401a92a4b6d9.jpg', 'Default Profile Photo', NULL);
INSERT INTO Image values(133, 'https://myanimelist.net/images/characters/8/272601.webp', 'Profile Picture of Rin Tohsaka', NULL);
INSERT INTO Image values(134, 'https://myanimelist.net/images/characters/13/91136.webp', 'Profile Picture of Arturia Pendragon', NULL);
INSERT INTO Image values(135, 'https://myanimelist.net/images/characters/7/248401.webp', 'Profile Picture of Alisha Diphda', NULL);
INSERT INTO Image values(136, 'https://myanimelist.net/images/characters/16/80867.webp', 'Profile Picture of Orihara Izaya', NULL);
INSERT INTO Image values(137, 'https://myanimelist.net/images/characters/2/129821.webp', 'Profile Picture of Milla Maxwell', NULL);
INSERT INTO Image values(138, 'https://myanimelist.net/images/characters/6/304163.webp', 'Profile Picture of Alice Baskerville', NULL);
INSERT INTO Image values(139, 'https://myanimelist.net/images/characters/10/37621.webp', 'Profile Picture of Rita Mordio', NULL);
INSERT INTO Image values(140, 'https://myanimelist.net/images/characters/11/128641.jpg', 'Profile Picture of Ren Kougyoku', NULL);
INSERT INTO Image values(141, 'https://myanimelist.net/images/characters/8/310077.webp', 'Profile Picture of Ange Ushiromiya', NULL);
INSERT INTO Image values(142, 'https://myanimelist.net/images/characters/9/215563.webp', 'Profile Picture of Mikasa Ackerman', NULL);
INSERT INTO Image values(143, 'https://myanimelist.net/images/characters/15/307042.webp', 'Profile Picture of Erika Furudo', NULL);
INSERT INTO Image values(144, 'https://myanimelist.net/images/characters/3/83433.webp', 'Profile Picture of Euphemia li Britannia', NULL);
INSERT INTO Image values(145, 'https://myanimelist.net/images/characters/14/279910.webp', 'Profile Picture of Taiga Aisaka', NULL);
INSERT INTO Image values(146, 'https://myanimelist.net/images/characters/13/314094.webp', 'Profile Picture of Ilya Einzbern', NULL);
INSERT INTO Image values(147, 'https://myanimelist.net/images/characters/5/258163.webp', 'Profile Picture of Shinoa Hiragi', NULL);

INSERT INTO ResidenceArea values(148, 'Porto');
INSERT INTO ResidenceArea values(149, 'Lisboa');
INSERT INTO ResidenceArea values(150, 'Aveiro');
INSERT INTO ResidenceArea values(151, 'Paris');
INSERT INTO ResidenceArea values(152, 'Tokyo');
INSERT INTO ResidenceArea values(153, 'Coimbra');
INSERT INTO ResidenceArea values(154, 'Faro');
INSERT INTO ResidenceArea values(155, 'New York');
INSERT INTO ResidenceArea values(156, 'Setubal');
INSERT INTO ResidenceArea values(157, 'Viana do Castelo');
INSERT INTO ResidenceArea values(158, 'Viseu');
INSERT INTO ResidenceArea values(159, 'Vila Real');
INSERT INTO ResidenceArea values(160, 'Leiria');
INSERT INTO ResidenceArea values(161, 'Guarda');
INSERT INTO ResidenceArea values(162, 'Beja');
INSERT INTO ResidenceArea values(163, 'Portalegre');
INSERT INTO ResidenceArea values(164, 'Santarem');
INSERT INTO ResidenceArea values(165, 'Arizona');
INSERT INTO ResidenceArea values(166, 'Guarda');
INSERT INTO ResidenceArea values(167, 'Ikebukuro');
INSERT INTO ResidenceArea values(168, 'Kyoto');

INSERT INTO User values(169, 'Tiago Rafael', '1996-05-14', '2016-12-04', 132, 148);
INSERT INTO User values(170, 'Joao Carneiro', NULL, '2016-12-02', 132, 149);
INSERT INTO User values(171, 'Claudia Marinho', '1996-05-26', '2016-11-29', 132, 148);
INSERT INTO User values(172, 'Daniela Sa', '1996-02-04', '2016-10-01', 132, 148);
INSERT INTO User values(173, 'Rin Tohsaka', '1970-11-25', '2016-11-20', 133, 150);
INSERT INTO User values(174, 'Pedro Silva', NULL, '2016-09-03', 132, 151);
INSERT INTO User values(175, 'Ana Lima', NULL, '2016-10-23', 132, 150);
INSERT INTO User values(176, 'Isabela Cunha', '1971-03-03', '2017-01-13', 132, 152);
INSERT INTO User values(177, 'Margarida Ribeiro', NULL, '2016-08-14', 132, 153);
INSERT INTO User values(178, 'Arturia Pendragon', '1975-11-11', '2016-09-23', 134, 155);
INSERT INTO User values(179, 'Hugo Silveira', '1972-11-15', '2016-10-07', 132, 168);
INSERT INTO User values(180, 'Arwen Maxwell', NULL, '2016-12-01', 132, 160);
INSERT INTO User values(181, 'Lili Moreira', '1973-05-28', '2016-12-25', 132, 154);
INSERT INTO User values(182, 'Alisha Diphda', NULL, '2016-06-04', 135, 156);
INSERT INTO User values(183, 'Floor Jansen', NULL, '2016-06-12', 132, 164);
INSERT INTO User values(184, 'Orihara Izaya', '1976-01-30', '2016-10-20', 136, 158);
INSERT INTO User values(185, 'Maria Rocha', '1976-03-24', '2016-06-03', 132, 157);
INSERT INTO User values(186, 'Milla Maxwell', NULL, '2016-07-08', 137, 159);
INSERT INTO User values(187, 'Alice Baskerville', '1976-03-31', '2016-07-23', 138, 153);
INSERT INTO User values(188, 'Ren Hakuryuu', '1977-05-06', '2016-10-27', 132, 160);
INSERT INTO User values(189, 'Rita Mordio', NULL, '2017-01-03', 139, 160);
INSERT INTO User values(190, 'Matilde Rocha', '1978-01-24', '2017-01-01', 132, 164);
INSERT INTO User values(191, 'Ren Kougyoku', NULL, '2017-01-02', 140, 161);
INSERT INTO User values(192, 'Nami Kool', '1980-07-31', '2016-12-30', 132, 162);
INSERT INTO User values(193, 'Booker DeWitt', NULL, '2016-01-01', 132, 163);
INSERT INTO User values(194, 'Ange Ushiromiya', '1982-06-04', '2016-01-29', 141, 168);
INSERT INTO User values(195, 'Mikasa Ackerman', '1983-01-26', '2016-02-14', 142, 168);
INSERT INTO User values(196, 'Erika Furudo', '1984-06-28', '2016-03-17', 143, 165);
INSERT INTO User values(197, 'Euphemia li Britannia', NULL, '2016-05-24', 144, 164);
INSERT INTO User values(198, 'Pedro Silva', '1986-03-11', '2016-12-23', 132, 148);
INSERT INTO User values(199, 'Taiga Aisaka', '1987-02-20', '2016-06-04', 145, 167);
INSERT INTO User values(200, 'Roxanne Mendez', NULL, '2016-01-06', 132, 166);
INSERT INTO User values(201, 'Hugh Cunningham', NULL, '2016-01-13', 132, 165);
INSERT INTO User values(202, 'Ilya Einzbern', '1987-09-23', '2016-01-27', 146, 148);
INSERT INTO User values(203, 'Leticia Hernandez', '1988-06-30', '2016-03-01', 132, 149);
INSERT INTO User values(204, 'Leo Holmes', '1990-09-27', '2016-03-15', 132, 149);
INSERT INTO User values(205, 'Diane Jefferson', '1990-11-30', '2016-03-23', 132, 168);
INSERT INTO User values(206, 'Dorothy Hernandez', NULL, '2016-03-28', 132, 167);
INSERT INTO User values(207, 'Patrick Henderson', '1990-12-24', '2016-03-30', 132, 165);
INSERT INTO User values(208, 'Rachael Jennings', '1991-01-17', '2016-04-12', 132, 160);
INSERT INTO User values(209, 'Daenerys Targaryen', '1992-10-28', '2016-04-22', 132, 150);
INSERT INTO User values(210, 'Shinoa Hiragi', NULL, '2016-04-29', 147, 152);
INSERT INTO User values(211, 'Jon Snow', '1994-04-04', '2016-05-26', 132, 165);
INSERT INTO User values(212, 'Amber Pierce', '1994-09-06', '2016-06-23', 132, 168);
INSERT INTO User values(213, 'Scott Gibbs', '1993-03-23', '2016-06-27', 132, 167);
INSERT INTO User values(214, 'Robin Jackson', NULL, '2016-08-01', 132, 151);
INSERT INTO User values(215, 'Kim Clayton', '1994-04-12', '2016-09-09', 132, 151);
INSERT INTO User values(216, 'Rosemarie Kelly', '1994-04-25', '2016-09-16', 132, 164);
INSERT INTO User values(217, 'Stephanie Maxwell', '1994-07-25', '2016-10-04', 132, 168);
INSERT INTO User values(218, 'Judy Woods', NULL, '2017-01-10', 132, 164);
INSERT INTO User values(219, 'Adam Holloway', NULL, '2017-01-12', 132, 165);

INSERT INTO Owner values(169);
INSERT INTO Owner values(170);
INSERT INTO Owner values(172);
INSERT INTO Owner values(175);
INSERT INTO Owner values(176);
INSERT INTO Owner values(178);
INSERT INTO Owner values(180);
INSERT INTO Owner values(182);
INSERT INTO Owner values(183);
INSERT INTO Owner values(184);
INSERT INTO Owner values(186);
INSERT INTO Owner values(188);
INSERT INTO Owner values(192);
INSERT INTO Owner values(195);
INSERT INTO Owner values(197);
INSERT INTO Owner values(198);
INSERT INTO Owner values(200);
INSERT INTO Owner values(201);
INSERT INTO Owner values(203);
INSERT INTO Owner values(204);
INSERT INTO Owner values(205);
INSERT INTO Owner values(206);
INSERT INTO Owner values(207);
INSERT INTO Owner values(211);
INSERT INTO Owner values(215);
INSERT INTO Owner values(219);

INSERT INTO Reviewer values(169);
INSERT INTO Reviewer values(170);
INSERT INTO Reviewer values(173);
INSERT INTO Reviewer values(174);
INSERT INTO Reviewer values(176);
INSERT INTO Reviewer values(179);
INSERT INTO Reviewer values(181);
INSERT INTO Reviewer values(182);
INSERT INTO Reviewer values(184);
INSERT INTO Reviewer values(185);
INSERT INTO Reviewer values(187);
INSERT INTO Reviewer values(188);
INSERT INTO Reviewer values(189);
INSERT INTO Reviewer values(190);
INSERT INTO Reviewer values(191);
INSERT INTO Reviewer values(194);
INSERT INTO Reviewer values(196);
INSERT INTO Reviewer values(198);
INSERT INTO Reviewer values(202);
INSERT INTO Reviewer values(203);
INSERT INTO Reviewer values(204);
INSERT INTO Reviewer values(205);
INSERT INTO Reviewer values(206);
INSERT INTO Reviewer values(207);
INSERT INTO Reviewer values(208);
INSERT INTO Reviewer values(210);
INSERT INTO Reviewer values(211);
INSERT INTO Reviewer values(213);
INSERT INTO Reviewer values(215);
INSERT INTO Reviewer values(217);
INSERT INTO Reviewer values(219);

INSERT INTO Login values(169, 'tirafesi', '123456');
INSERT INTO Login values(170, 'linegolden', 'abcd');
INSERT INTO Login values(171, 'arwen7stars', 'aminhapasse');
INSERT INTO Login values(172, 'blesspharoah', 'a1b2c3d4');
INSERT INTO Login values(173, 'radianstorm', 'stormynight');
INSERT INTO Login values(174, 'spideralkene', 'spidershere');
INSERT INTO Login values(175, 'peerjowl', 'iamnothere');
INSERT INTO Login values(176, 'tiltrobust', 'lalelilolu');
INSERT INTO Login values(177, 'dominanceconcat', 'domino192');
INSERT INTO Login values(178, 'saber_the_king', 'respecthonor');
INSERT INTO Login values(179, 'plotstride', 'iamsorry');
INSERT INTO Login values(180, 'musicmongrel', 'music4ever');
INSERT INTO Login values(181, 'lili1973', 'aaabbbccc');
INSERT INTO Login values(182, 'chinahit', 'chinese4ever');
INSERT INTO Login values(183, 'skifable', 'fafablesss');
INSERT INTO Login values(184, 'fungalcalcite', 'fungus123');
INSERT INTO Login values(185, 'floggingbarlow', 'idontknow194');
INSERT INTO Login values(186, 'snowballsorry', 'snowballingforever');
INSERT INTO Login values(187, 'infobobbly', '12131415');
INSERT INTO Login values(188, 'bentored', 'goodbye1995');
INSERT INTO Login values(189, 'reportingflannel', 'dunno12345');
INSERT INTO Login values(190, 'simercury', 'apassword');
INSERT INTO Login values(191, 'johnmars', 'iwenttomars');
INSERT INTO Login values(192, 'stalemast', 'umacoisaqualquer');
INSERT INTO Login values(193, 'nerobow', 'portugues1949');
INSERT INTO Login values(194, 'kiwijackstay', 'hmph3214');
INSERT INTO Login values(195, 'knitcry', 'kittensanddogs');
INSERT INTO Login values(196, 'spoiledmagic', 'magicdragons');
INSERT INTO Login values(197, 'euphy', 'ididnothingwrong');
INSERT INTO Login values(198, 'sparklefabulous', '2fab4you');
INSERT INTO Login values(199, 'lonesomeemacs', 'foreveralone');
INSERT INTO Login values(200, 'modtelephone', 'morrighan666');
INSERT INTO Login values(201, 'editmove', 'persephone555');
INSERT INTO Login values(202, 'saladrho', 'saladacomqueijo');
INSERT INTO Login values(203, 'infamousgoody', 'goodytwoshoes');
INSERT INTO Login values(204, 'againstsock', 'semideias');
INSERT INTO Login values(205, 'orpheanmagic', '1234567890');
INSERT INTO Login values(206, 'deafeningblink', 'numbers98765');
INSERT INTO Login values(207, 'timesdividers', 'loremipsum');
INSERT INTO Login values(208, 'ageshepherd', 'soreyandmikleo');
INSERT INTO Login values(209, 'geoffreypissed', 'gameofthrones');
INSERT INTO Login values(210, 'halftimefearful', 'lordoftherings');
INSERT INTO Login values(211, 'resonantgiraffe', 'talesofzestiria');
INSERT INTO Login values(212, 'bobgloomy', 'fatezero');
INSERT INTO Login values(213, 'examinerbella', 'umineko');
INSERT INTO Login values(214, 'artseli', 'bonniepink');
INSERT INTO Login values(215, 'formulajumpy', 'hailclaudia');
INSERT INTO Login values(216, 'veneratedgaliath', 'iamtired');
INSERT INTO Login values(217, 'laggingnavajo', 'wannasleep');
INSERT INTO Login values(218, 'ola', 'plshelp');
INSERT INTO Login values(219, 'adeus', 'idontwant');

/* Review(id, score, title, tldr, body, reviewer -> Reviewer, restaurant -> Restaurant) */
INSERT INTO Review values(220, 10, 'My First Review', 'McDonalds is the best restaurant out there!', 'I went to McDonalds yesterday and it was amazing. 11/10 would go again!! \n
Fast food for the win forever and ever!!', 170, 11);
INSERT INTO Review values(221, 3, 'Shoddy food', 'This is not a meal worthy of me. Rant ahead.', 'Fusce ut sem nec sem gravida pretium. Nam et convallis mi. Praesent condimentum molestie magna. Nam facilisis libero in consectetur aliquam. Mauris a lobortis sapien.\n
Etiam orci leo, pretium sit amet euismod sit amet, pellentesque vel justo. Aenean at lorem vehicula libero luctus scelerisque. In faucibus sapien quis lectus tempus volutpat. Sed ornare odio nec purus auctor accumsan. Nullam dictum felis commodo tortor vestibulum fermentum.\n
Fusce rutrum lectus id est condimentum, id accumsan libero iaculis. Quisque eros sem, pharetra nec tempor gravida, varius ac ante. Sed ut lectus ut nibh mollis gravida.', 173, 11);
INSERT INTO Review values(222, 6, 'It was good I guess...', 'The food had a good taste but it was not really remarkable.', 'Cras vitae nibh consequat, imperdiet libero eget, rhoncus mauris. In aliquam ligula massa, vel vestibulum mi luctus at.\n
Donec eget lacus cursus, vehicula neque ut, tincidunt nibh. Quisque rhoncus congue convallis. Nullam pulvinar sit amet leo sed egestas. Quisque felis nunc, sodales viverra lorem quis, posuere tincidunt magna.', 190, 11);
INSERT INTO Review values(223, 8, 'Cheap, fast and with a good taste to boot!', 'There are better meals out there but this one is not bad at all', 'Praesent auctor at augue eu lobortis. Fusce convallis rhoncus massa, at vulputate nibh auctor sed.\n
Nullam molestie risus quam, quis tempor eros sagittis non. Nulla facilisi.', 210, 11);

INSERT INTO Review values(224, 7, 'Homely made food', 'It was good and cheap', 'Duis mollis ipsum volutpat odio auctor volutpat. Nam in vehicula nunc, aliquam tincidunt metus.', 202, 12);

INSERT INTO Review values(225, 9, 'Tastiest pizza I have ever tasted', 'It was indeed delicious but a bit expensive.', 'Mauris molestie, arcu ac varius ullamcorper, risus metus elementum ipsum, eget dignissim libero dolor vel ex. Ut eu hendrerit elit, vel ullamcorper ex.\n
Sed consequat metus id dictum mollis. Ut nunc nisi, pulvinar in elit et, placerat rhoncus est. Nam vitae orci eu sapien lacinia sodales. Nullam quam lectus, rhoncus ut mauris sed, euismod tempus ligula.', 211, 13);
INSERT INTO Review values(226, 10, 'BEST PIZZA EVER!!', 'There is no better pizza out there, I assure you!', 'Fusce tempor posuere est vitae commodo. Aenean tempor feugiat interdum. Pellentesque nec nunc sapien. Duis auctor commodo lorem at lacinia.\n
Phasellus a maximus libero. Duis urna orci, fermentum sit amet risus ut, tempus rutrum justo. Maecenas quis justo diam. Etiam quis auctor magna. In non velit ante. Nulla purus neque, interdum sed enim nec, fermentum ultrices sem.', 189, 13);
INSERT INTO Review values(227, 7, 'Very good... but too expensive', 'Why is it so expensive?!?', 'In vel nulla nibh. Praesent eu lorem eu est pharetra fringilla. Proin tempor tincidunt risus, a tincidunt nisi luctus commodo.\n
Vestibulum lacinia, tortor sed semper laoreet, turpis lacus consequat urna, sit amet efficitur nibh sapien non nisi. Aenean mi lorem, aliquam at mi hendrerit, iaculis iaculis tellus.', 174, 13);

INSERT INTO Review values(228, 9, 'I love this sushi!', 'It was tasty and not that expensive!', 'Maecenas tellus mi, bibendum imperdiet sodales ac, accumsan nec odio. In cursus quam sit amet magna mattis, vel lobortis arcu scelerisque.\n
Ut vel tincidunt dui. Morbi fringilla quis quam sit amet mollis. Curabitur id fringilla enim, eget ultrices velit. Maecenas consectetur ullamcorper elit, nec pulvinar augue sodales ut. Donec et sagittis massa, ac porttitor mi. Mauris massa ligula, porttitor vitae molestie in, bibendum nec tortor.', 170, 14);
INSERT INTO Review values(229, 7, 'Good sushi', 'It was good but not remarkable.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nisl quam, molestie a odio vitae, tincidunt lacinia leo. Mauris eget scelerisque metus. Praesent varius cursus nisi, in porttitor mi accumsan nec. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n
Cras fringilla eros vel rutrum dapibus. Morbi auctor lorem augue. Suspendisse viverra auctor nisl, vel accumsan elit cursus nec. Vestibulum a tortor venenatis, vehicula nisi ac, tristique erat. Duis ac posuere mi, scelerisque maximus turpis. Duis ut tempor eros. Sed cursus vel lacus vel gravida.\n
Nam vitae felis mi. Mauris et elit non justo varius facilisis id nec magna. Fusce interdum lacus vitae leo porttitor, scelerisque rhoncus diam rutrum. Curabitur a lacinia elit, sed sodales urna.', 176, 14);

INSERT INTO Review values(230, 1, 'Absolutely terrible', 'KFC pisses me of. Chicken piss me off.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis consectetur libero in turpis placerat luctus. Vestibulum bibendum lectus mauris, vitae sollicitudin leo gravida vel. Sed ac enim et erat congue efficitur. Nam tortor mauris, tincidunt vel mi id, vestibulum pellentesque ODIO.\n
Duis lectus felis, faucibus sit amet tortor sed, consequat pharetra diam. Ut non pharetra enim. Aliquam at neque sodales justo suscipit vehicula a eu velit. Vestibulum nec ultrices est. Duis viverra nulla eget risus faucibus, at varius neque mattis. Donec pretium magna non augue porta pellentesque. Ut ultrices ex quis eros sollicitudin varius. Vivamus a ex dignissim, congue justo ut, viverra magna.\n
Sed et ligula volutpat, blandit tortor eget, commodo elit. Suspendisse euismod magna at nibh tempor, nec efficitur nibh vulputate. Donec ultrices risus tortor, quis aliquam leo porttitor sit amet.', 181, 15);
INSERT INTO Review values(231, 5, 'Edible', 'It was not that good but it was edible', 'Nulla sit amet pulvinar dui. Aenean fringilla dui et lorem interdum aliquam. Phasellus eros ipsum, consequat ac ante eu, tempus maximus orci. Vivamus feugiat elit eu mi suscipit, faucibus sagittis felis tempus.', 206, 15);

INSERT INTO Review values(232, 2, 'Very bad', 'The food left a bad taste in my mouth.', 'Sed porttitor pellentesque nibh, sit amet fermentum diam ullamcorper ac. Fusce placerat, erat sed volutpat euismod, lectus felis fringilla quam, quis fermentum nulla orci vitae felis.\n
Phasellus interdum metus vel sapien tempus, et placerat sapien sodales. Vestibulum a semper ligula, quis aliquam eros. Ut id nunc lorem. Nullam vel mauris vel ante tincidunt efficitur. Curabitur tempus libero ut ullamcorper congue. Aenean nec diam quis tellus lacinia efficitur in eget felis. In hendrerit purus id tortor placerat tempus.', 169, 16);

INSERT INTO Review values(233, 6, 'Slightly above average', 'It was good for its price I guess.', 'Suspendisse viverra, mi non vulputate dignissim, elit erat pellentesque sem, semper lobortis ante ante id sapien. Proin vestibulum turpis ut magna sagittis laoreet. Sed consectetur non quam a porta. Etiam id ipsum at justo ultricies lacinia. Sed id lobortis dui, efficitur gravida orci.\n
Phasellus rhoncus placerat ex, egestas cursus urna feugiat in. Praesent et odio euismod eros rhoncus finibus eu sed sem. Sed iaculis congue purus, a dignissim enim vehicula in. Aenean tempor odio non nunc consectetur, a finibus lectus consectetur. Pellentesque rhoncus eget nisl ut mollis. Sed dolor eros, pretium in eros eu, congue condimentum metus.\n
Etiam elementum libero eu dignissim accumsan. Suspendisse finibus euismod libero sit amet laoreet. Proin ex ante, pellentesque eget diam at, tempus vestibulum nisi.', 179, 17);

INSERT INTO Review values(234, 8, 'Outstanding', 'Not perfect score only because of price.', 'In hac habitasse platea dictumst. Nam justo neque, mollis non augue non, consequat commodo sem. Ut vulputate interdum ante ac condimentum. Duis egestas vulputate auctor. In dictum tempus orci ac vestibulum. Maecenas rutrum ex justo. Etiam justo mauris, suscipit quis eros a, viverra ullamcorper erat.\n
Aliquam pharetra sed lectus eu gravida. In vel ligula lorem. Cras auctor vehicula vestibulum. Donec vitae hendrerit magna. Nullam pellentesque varius sollicitudin. Nunc nec erat pretium, porta tellus blandit, interdum nulla. Mauris in ligula pellentesque, lacinia leo at, dapibus diam. Ut eget facilisis est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n
Sed id mattis odio. Curabitur eleifend finibus diam a aliquam. Vivamus volutpat tellus neque, eu ornare dolor interdum eget. Vivamus efficitur venenatis dolor. Phasellus sit amet tristique tortor, egestas posuere quam. Aliquam ut ante id ex blandit aliquet sed ac turpis. In malesuada nulla in enim vestibulum dapibus. In maximus orci dolor, ac elementum lorem laoreet a. Fusce ut tincidunt orci, sed imperdiet lectus. Vestibulum laoreet nulla vel sapien maximus, vitae posuere tortor suscipit. Nunc nec maximus lorem.', 182, 18);

INSERT INTO Review values(235, 8, 'Very good', 'It was very good but should be cheaper.', 'Fusce non tempus magna. Quisque finibus ultricies arcu sit amet malesuada. Mauris sagittis, mauris ut ultrices fermentum, odio odio fringilla purus, id aliquet augue nunc a risus.', 202, 19);
INSERT INTO Review values(236, 5, 'Very average', 'I do not recommend this restaurant.', ' Sed semper tellus at quam hendrerit, vitae mattis magna hendrerit. Proin malesuada posuere vulputate. Duis non aliquam felis. Vestibulum ut purus a mauris consequat vulputate. Fusce finibus tellus sed porttitor tristique.\n
Pellentesque non dui vel magna consequat aliquam. Nunc iaculis nec leo eget ornare. Aenean mattis ornare pharetra. Duis facilisis, purus eget lobortis faucibus, elit massa lacinia leo, et scelerisque diam lectus sed mauris. Suspendisse vestibulum magna felis, egestas rutrum nisi hendrerit vel. Aenean tincidunt elit vel ipsum placerat aliquet.\n
Donec pretium pulvinar lectus, at varius magna porta mattis. Suspendisse fringilla vestibulum placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 208, 19);

INSERT INTO Review values(237, 3, 'Bad. Just bad', 'There were flies in my food...', 'Quisque imperdiet, libero ut feugiat fermentum, ante lorem eleifend ex, sit amet placerat ipsum risus eget elit. In sed iaculis metus. Cras in ultrices purus, sed pretium mi. Aenean sit amet quam sit amet turpis facilisis gravida vitae a turpis.\n
Duis tempus, ligula ac lobortis dignissim, ipsum tortor euismod elit, id consequat tellus nulla in urna. Fusce vitae orci sed ex porta rhoncus id ut sapien. Donec congue mi ac urna varius mollis. Mauris nisi mauris, aliquet at scelerisque eu, sagittis pulvinar augue.', 173, 21);

INSERT INTO Review values(238, 5, 'Come here only if desperate for food', 'The food was the very definition of average.', 'Phasellus sem nisl, porta vitae tincidunt ut, luctus non enim. Aenean nec condimentum quam. Nam quis dapibus sapien. Proin posuere diam lectus, at pellentesque ligula sollicitudin rutrum. Sed nec turpis eros. Pellentesque ac placerat libero, egestas finibus sem.\n
Curabitur egestas neque a nunc fringilla posuere. Morbi pretium viverra sem a ultricies. Aliquam gravida semper odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent neque leo, pharetra vitae urna et, gravida finibus mauris. Donec dolor nunc, varius eget lectus quis, mollis fermentum felis.\n
Maecenas aliquam nulla quis ipsum fringilla pulvinar. Aliquam porta diam eu sapien ornare congue. Ut pulvinar, nibh venenatis porttitor bibendum, mauris leo pretium nulla, sed ultrices risus purus eget magna.', 196, 22);

INSERT INTO Review values(239, 7, 'Recommended', 'The food was tasty and the price was affordable!', 'Aenean consectetur ipsum lacus, at faucibus libero ultrices a. Vivamus et lorem nec nisi dignissim posuere. Aliquam facilisis malesuada libero eget malesuada. Nunc tincidunt consequat metus. Morbi dolor magna, fermentum sed erat a, imperdiet sodales arcu.\n
Aliquam auctor eros nec mauris cursus, nec dignissim libero fermentum. Maecenas posuere tincidunt arcu, et bibendum mi suscipit venenatis. Aenean convallis aliquam neque, vitae euismod ante rutrum a. Duis auctor convallis lorem in bibendum. Nulla congue, nisi a blandit dapibus, nunc tortor ornare orci, a congue elit purus a mauris. Morbi aliquam urna quis lorem molestie venenatis.\n
Vivamus massa felis, malesuada ut egestas at, bibendum ut sapien. Maecenas eu dui arcu. Aliquam accumsan tortor metus, vitae blandit sem rhoncus a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac risus lectus.', 206, 23);

INSERT INTO Review values(240, 8, 'I will come back soon for sure', 'I really liked everything in this restaurant', 'Phasellus ultrices quam sit amet lorem facilisis, eu convallis lacus elementum. Pellentesque quis ultricies elit. Donec ornare erat et lorem vulputate, ut cursus felis euismod.\n
Integer interdum id urna in fringilla. Nulla interdum lectus eros, quis placerat nibh pharetra accumsan. Suspendisse non ex magna. Nulla quis porta velit, sed efficitur velit. Nulla id faucibus neque, ut volutpat dolor. Sed tincidunt sed massa maximus placerat. Fusce quis est in sapien elementum blandit a a nulla.\n
Proin in metus et lacus iaculis molestie sed eget eros. Praesent tempus id lorem vel auctor. Nam in lacus sed orci eleifend ullamcorper. Mauris tempor augue eu massa rutrum tristique.', 198, 25);

INSERT INTO Review values(241, 9, 'Definitely outstanding!', 'Recommended for everyone!!', 'Duis ullamcorper sem metus. Vestibulum sollicitudin eros vitae quam mollis sagittis. Nam dapibus nibh quam, at ullamcorper est ornare eu. Praesent faucibus turpis et diam consectetur, a placerat est sodales.\n
Praesent lectus ipsum, iaculis at malesuada ac, consectetur in elit. Curabitur ultricies lacus vitae turpis pharetra consectetur. Phasellus maximus urna vitae sapien scelerisque porta. Morbi ut leo vitae nisi eleifend ullamcorper bibendum a justo. Maecenas in elit tortor.', 219, 27);

INSERT INTO Review values(242, 7, 'It was fine', 'Fine food for a good price. Recommended.', 'Curabitur metus est, suscipit vel neque vel, elementum rhoncus dolor. Donec dui lacus, commodo id sapien et, imperdiet hendrerit velit. Aenean auctor eros velit, quis molestie lectus accumsan a.\n
Cras faucibus ut erat id suscipit. Mauris interdum purus commodo justo ultricies, sit amet laoreet eros faucibus. Nunc semper nec augue ac consequat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 204, 28);

INSERT INTO Review values(243, 8, 'Pretty & Delicious', 'The only problem is the price!', 'Duis aliquet ex auctor, molestie nibh at, mollis est. Maecenas at rutrum elit, sed tempor elit. Nam dignissim ante massa. Sed ut ante velit. In hendrerit euismod orci, sit amet elementum enim tempor a.\n
Aliquam turpis sem, accumsan iaculis nisl ut, pretium pharetra nisl. Duis sollicitudin enim eget dapibus eleifend. Proin maximus libero vitae ipsum rutrum sollicitudin. Quisque ac luctus purus. Mauris faucibus eros augue. In porta orci leo, elementum tempor dolor finibus sit amet. Integer a orci eros. Aenean ultricies arcu vitae velit vulputate, at fringilla tellus tincidunt.', 187, 30);

INSERT INTO Review values(244, 9, 'Amazing!', 'The environment, the food... everything was great!', 'Maecenas vitae ligula vitae ante gravida convallis. Etiam elit metus, gravida at auctor a, euismod eget augue. Etiam fermentum sapien lectus. Donec ac nisi vitae turpis eleifend suscipit sit amet ut quam. Praesent vitae risus turpis. Suspendisse eget odio diam.\n
Suspendisse ut congue dui. Cras rutrum ipsum lorem, et aliquam urna commodo vitae. Donec ac vestibulum sem. Donec at ultricies leo. Praesent commodo porta nibh in fermentum. Cras sagittis ante vel elit aliquet iaculis. Integer egestas lobortis aliquam. Donec sem nisi, aliquam eu placerat et, sollicitudin vitae diam. Etiam laoreet orci a nisi ullamcorper, sit amet luctus odio feugiat.', 207, 31);

INSERT INTO Review values(245, 9, 'Great!!', 'Heaven on earth!! Highly recommended!!', 'Ut consectetur pulvinar volutpat. Nunc ultrices lorem id augue faucibus consequat. Fusce velit mauris, ornare et malesuada vitae, tincidunt vel ex. In porttitor urna lorem, nec venenatis massa lobortis ut.\n
Sed varius rhoncus metus, id mollis mi porta vitae. Praesent vel ornare velit. Ut ornare, ligula ut auctor dictum, justo est volutpat quam, sed dignissim ante libero fermentum risus. Ut tempor suscipit felis. Nulla id tellus a ligula feugiat tincidunt id a tellus. Donec consequat vitae leo sit amet dapibus. Morbi lacinia dui nec metus auctor, id ultrices lacus ultricies.\n
Duis efficitur, lectus a sagittis aliquet, neque mi tristique mauris, at iaculis quam mi eu nulla. Morbi at feugiat augue. Suspendisse lorem mauris, cursus at augue id, egestas pulvinar diam. Suspendisse consequat fermentum sapien, vitae condimentum neque pulvinar a. Vestibulum eu quam metus. Ut tellus felis, ultrices eget eros id, luctus consectetur lectus. Integer viverra accumsan euismod.', 203, 33);
INSERT INTO Review values(246, 7, 'It was good as expected', 'But I did not like the prices', 'Duis eu suscipit lectus. Vivamus a pharetra nunc. Quisque vestibulum libero nec viverra fermentum. Maecenas vestibulum erat at tincidunt ornare. Donec vulputate volutpat mattis. Integer tempor vitae dui euismod euismod. Proin ac placerat leo. Sed a aliquam metus. Quisque eget eros ut dolor mollis ultrices.\n
Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus ut rutrum metus. Praesent eget porta libero, quis rhoncus lorem. Pellentesque pretium arcu eu nisi accumsan, ornare semper justo convallis. Nullam commodo lacus quis scelerisque ornare.', 210, 33);

INSERT INTO Review values(247, 10, 'Fantastic!!', 'Best food out there!!', 'Ut quam turpis, semper a tortor lacinia, gravida volutpat magna. Suspendisse ligula eros, dictum elementum maximus eget, lobortis id nibh. Mauris sed hendrerit erat. Vestibulum lacinia eros ut ante posuere, et vestibulum sem varius. Sed nunc dui, facilisis ac metus in, condimentum pulvinar felis.\n
Sed diam nibh, vehicula quis maximus in, condimentum sit amet nibh. In sed nibh dictum, lacinia augue non, porttitor metus. Fusce maximus augue non est tincidunt malesuada id nec sem. Maecenas iaculis mi a commodo pulvinar. Curabitur semper bibendum posuere. Maecenas sit amet ipsum facilisis, faucibus justo ullamcorper, luctus mauris. Nunc efficitur venenatis risus, a laoreet tortor porta non.\n
In lacus lacus, pulvinar vitae cursus sit amet, venenatis eu sem. Vestibulum at vulputate eros. Suspendisse non nunc tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 184, 34);
INSERT INTO Review values(248, 9, 'Pretty delicious', 'It left me wanting for more!', 'Etiam a turpis quis erat vestibulum molestie. Vestibulum lobortis eros eu ante ultrices interdum. In a convallis tortor, nec volutpat odio. Integer vel molestie arcu. Maecenas molestie sem sed mauris imperdiet condimentum. Morbi varius urna non rhoncus pretium.\n
Curabitur pharetra, mauris viverra imperdiet molestie, libero dolor tincidunt odio, sed pulvinar massa elit sit amet arcu. Donec in elementum purus.', 185, 34);
INSERT INTO Review values(249, 8, 'Very good indeed', 'But I wish more food was served!', 'Suspendisse vel orci ac arcu volutpat tincidunt laoreet ac lectus. Proin vel lacinia nisl. Donec ornare erat metus, quis luctus urna varius a. Nam nec turpis mauris.\n
Suspendisse imperdiet urna id aliquam pretium. Nullam viverra arcu ut erat vehicula feugiat. Curabitur ac risus scelerisque, iaculis ligula id, dignissim elit. Ut eleifend dolor ut magna faucibus, eget maximus urna mollis. Pellentesque molestie ligula at eros cursus molestie.\n
Vestibulum dapibus, eros in tempus efficitur, ipsum leo viverra metus, vitae tincidunt nisi enim vitae orci. Sed pretium velit eu risus pellentesque, eget accumsan est mollis. Mauris sodales ultrices lectus quis ornare. Integer vehicula finibus lobortis. Donec tincidunt sit amet ante volutpat faucibus.\n
Fusce at elit ut diam suscipit egestas eget vitae velit. Mauris nec massa eu tellus blandit mattis sit amet vestibulum diam. Curabitur ipsum libero, blandit in ligula sit amet, mollis elementum lorem.', 207, 34);
INSERT INTO Review values(250, 9, 'Excellent food & attendance', 'And all of this for a reasonable price!', 'Praesent tincidunt risus nec sollicitudin condimentum. Aenean tempus, velit vel porta lobortis, nunc urna malesuada urna, a lacinia arcu elit quis sapien. Integer sollicitudin libero sit amet malesuada commodo.\n
Morbi scelerisque, nulla non finibus bibendum, leo dolor tincidunt nunc, quis vulputate ipsum nunc ut massa. Integer efficitur ullamcorper tellus id vestibulum. Proin consequat mauris eu bibendum tincidunt. Duis tempus fringilla diam. In sit amet nisl porttitor, pulvinar nibh nec, pellentesque nisl.\n
Suspendisse diam nulla, condimentum vel malesuada ac, facilisis in sapien.\nLorem ipsum dolor sit amet, consectetur adipiscing elit.', 219, 34);

INSERT INTO Review values(251, 1, 'Utterly terrible', 'Do not come here for your own safety.', 'Nunc rhoncus ac odio feugiat facilisis. Mauris mattis semper sollicitudin. Aenean dapibus arcu in purus venenatis, ut vehicula erat pellentesque. Phasellus eu orci vel sapien aliquet aliquet.\n
Vivamus felis augue, volutpat et enim quis, mollis convallis massa. Aenean placerat lectus non ultrices rhoncus. Proin placerat, ipsum sed efficitur sagittis, erat turpis malesuada diam, at ullamcorper elit turpis iaculis felis. Nullam at imperdiet metus. Mauris augue risus, cursus sodales lectus quis, malesuada elementum dui.\n
Sed porta, dolor sed elementum viverra, felis eros ornare arcu, ut iaculis sapien nisl ut augue. Pellentesque sit amet dui eget velit placerat egestas nec vitae lectus.\n
Suspendisse ligula erat, mattis vel tincidunt a, elementum vitae mauris. Suspendisse elementum ut purus vel interdum. Nam a facilisis velit. Ut sit amet ullamcorper sem. Pellentesque eleifend ligula eget consequat convallis.', 205, 35);

INSERT INTO Review values(252, 9, 'Fine indeed~', 'I recommend this to everyone who has some spare money!', 'Praesent et mi eget sapien consequat fermentum dictum sed quam. Proin dictum massa vitae est efficitur, ut lobortis libero iaculis. Vivamus tempor, erat quis lacinia lacinia, quam nisl mollis ligula, non finibus neque arcu vitae odio.\n
Vestibulum in faucibus ante, at pulvinar nisl. In ac molestie ligula, et imperdiet velit. Cras quis posuere augue. Nam fringilla, mauris non eleifend dignissim, urna diam rhoncus libero, nec sagittis enim lorem sed ex. Nam viverra, orci eu dictum egestas, sem erat scelerisque diam, non ultricies dolor orci ultricies odio.', 206, 36);

INSERT INTO Review values(253, 8, 'Cheap & Good', 'You will not find better food cheaper than this', 'Integer vitae tellus turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In vel tincidunt tortor. Nunc semper urna auctor lectus finibus mattis. Vestibulum eu ipsum mi. In porttitor in lectus scelerisque pellentesque.\n
Integer tincidunt, nulla ac blandit vulputate, arcu lorem vehicula sapien, sed placerat lorem odio at ligula. Duis vitae mollis dolor, ullamcorper euismod orci. Curabitur dignissim magna at pharetra hendrerit. Integer convallis finibus lectus, ac lobortis risus molestie et. Suspendisse eu pellentesque nisi, at fermentum orci.\n
Fusce ac odio sed arcu efficitur congue. Nulla eu magna mauris. Nullam tempor imperdiet magna eget molestie.', 194, 37);
INSERT INTO Review values(254, 7, 'Very cheap', 'The quality of the food is not as good as it could be though', 'Praesent volutpat sapien quis risus gravida, sed ultrices purus scelerisque. Curabitur aliquet commodo arcu, vitae facilisis mi varius eu. Proin malesuada, dolor maximus malesuada semper, est nisl placerat justo, sed volutpat risus arcu id felis.\n
Sed non egestas ante, eu bibendum est. Morbi aliquam id nulla sit amet auctor. Praesent sit amet justo nec arcu ultricies tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel aliquet mauris. Cras tortor lectus, pellentesque at libero eu, placerat molestie ipsum. Nulla placerat libero quis tortor ornare, a bibendum mi fermentum.\n
Donec eget ullamcorper dolor. Maecenas dictum nisi interdum mauris mattis pulvinar. Nunc est mauris, imperdiet non tempus in, condimentum vitae mi.', 213, 37);

INSERT INTO Review values(255, 8, 'Great', 'Next time will come here with all my family', 'Praesent at fringilla nunc. Phasellus vel posuere nunc. Sed porttitor tortor at tincidunt tincidunt. Suspendisse pretium, libero ut eleifend aliquet, odio sem congue massa, vitae lobortis velit turpis non lacus.\n
Ut at eros viverra, varius turpis eget, viverra dolor. In tempor, purus ut rhoncus maximus, leo ex tempus felis, a sodales urna urna tempus eros. Proin pellentesque neque non iaculis ultricies. In venenatis dui et quam imperdiet, id consequat ligula consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 174, 38);
INSERT INTO Review values(256, 10, 'Out of this world!!', 'Felt like I was in heaven after having a meal here', 'Sed euismod mi nibh, id mattis diam aliquam ac. Aenean non velit tempus, dignissim leo in, lobortis diam. Etiam libero diam, ornare sed laoreet eleifend, maximus non est.\n
Mauris tincidunt mi nec ornare elementum. Fusce iaculis nec lectus vel tristique. Ut vel pulvinar arcu, id mollis purus. In sodales, lacus ut porta scelerisque, ipsum dolor tempor magna, a porta sem felis sit amet eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas sit amet posuere massa. Curabitur et sollicitudin nisi, sed fermentum ex.', 191, 38);
INSERT INTO Review values(257, 9, 'Marvelous', 'Not enough words to describe how much I liked to have a meal here', 'Suspendisse placerat odio non sapien mollis maximus. Quisque sit amet mi tristique, volutpat elit a, posuere dolor. Nulla malesuada interdum sodales. In dapibus dignissim quam, in consectetur orci accumsan eget. Integer vestibulum nisi orci, bibendum dictum felis auctor vitae.\n
Aenean eu lorem tellus. Phasellus aliquet tincidunt maximus. In semper ligula augue, a blandit tellus congue a. Morbi pulvinar augue sed metus lacinia dapibus. Maecenas porttitor felis vitae felis imperdiet, eget vulputate dolor molestie. Nulla ut lacus massa.\n
Ut aliquam diam eget tellus lobortis, molestie blandit arcu accumsan. Nunc hendrerit consectetur eros ut feugiat. Mauris aliquam sem ut elit pulvinar pulvinar.', 215, 38);

INSERT INTO Review values(258, 8, 'Splendid food', 'The price was a little too much though', 'Etiam feugiat lectus erat, quis elementum nibh tincidunt nec. Maecenas non felis aliquet, imperdiet nisl a, tempus augue. Vivamus a auctor nisl, at commodo felis. Cras tincidunt et neque id tempus.\n
Sed ullamcorper id eros vel feugiat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut vestibulum, orci id malesuada pretium, nisi risus pellentesque est, in blandit odio elit id ante. Phasellus varius ligula vestibulum fringilla aliquet. Phasellus ut urna molestie, ultricies sem sollicitudin, consectetur erat.\n
Pellentesque non tortor et nulla sagittis semper. Cras congue hendrerit ipsum, in tempus metus vulputate sit amet. Integer vulputate lacus vitae tellus pellentesque, id aliquam libero porttitor.', 169, 39);

INSERT INTO Review values(259, 9, 'Highly satisfied', 'Highly suggested for everyone else', 'Sed dictum bibendum sapien, nec varius quam accumsan et. In elit diam, consequat ut varius auctor, tempor id quam. Morbi metus elit, pellentesque vitae ullamcorper eu, luctus a elit. Nulla elit lectus, malesuada sed nibh vitae, porta faucibus neque.\n
In quis convallis ligula. Donec vel diam blandit, sollicitudin enim et, faucibus enim. Donec tincidunt blandit cursus. Mauris aliquam vehicula sem, eu cursus lorem auctor eget. Fusce venenatis mi non elementum laoreet. Mauris tincidunt dolor risus, ac elementum elit porta nec. Sed ut purus venenatis nunc volutpat congue a vitae ligula.', 176, 40);

INSERT INTO Review values(260, 8, 'Satisfying', 'I am glad I came here', 'Proin pretium orci sit amet suscipit ultrices. Maecenas ultrices sodales nulla eget consectetur. Phasellus odio erat, placerat consequat massa pulvinar, convallis gravida mauris. Cras venenatis lectus semper diam finibus, eu auctor nisl vehicula.\n
Aliquam non auctor mi. Duis at ipsum sodales, pellentesque lorem eu, pulvinar est. Donec molestie ligula eu ex pellentesque dignissim. Donec pharetra tincidunt quam, eget auctor velit pellentesque consectetur.', 181, 41);
INSERT INTO Review values(261, 10, 'Wonderful', 'Pleasing place and superb food!', 'Suspendisse molestie urna eget euismod pulvinar. Nullam sed arcu dictum, posuere est in, dictum mauris. Maecenas imperdiet vel lacus nec vulputate. Praesent est turpis, condimentum vel hendrerit in, condimentum quis nisi.\n
Ut maximus augue id rhoncus pharetra. Nam finibus velit quis vestibulum finibus. Vivamus auctor suscipit velit, id porttitor arcu pellentesque at. Nunc facilisis ultrices arcu, id iaculis lacus facilisis id. Phasellus id lacus consequat, pulvinar ipsum non, dapibus elit. Etiam odio augue, tempus quis ullamcorper non, eleifend id lorem.', 215, 41);

INSERT INTO Review values(262, 10, 'Exceptional!', 'The presentation, the food, everything was marvelous!', 'Vestibulum quis sollicitudin orci. Proin volutpat sem nisi, sit amet consectetur ligula bibendum sed. Ut hendrerit iaculis tellus vitae condimentum. Quisque sed eleifend massa, sed aliquet nibh.\n
Donec tincidunt aliquet metus quis maximus. Vivamus ultricies facilisis nisl, non faucibus nisl tincidunt at. Maecenas at eros volutpat, ultrices velit sed, efficitur dolor. Etiam molestie finibus neque, at mollis felis congue quis. Nulla facilisis risus lobortis, tincidunt ipsum et, varius ipsum.', 170, 42);
INSERT INTO Review values(263, 9, 'Highly Satisfied!!', 'I will definitely come back for this sushi!', 'Duis dapibus, arcu ut lacinia lobortis, sapien est volutpat orci, id porta neque erat quis felis. Phasellus commodo venenatis venenatis.\n
Quisque blandit, nulla vel cursus posuere, est urna hendrerit elit, sit amet luctus elit massa ut dolor. Sed eget magna euismod, malesuada velit et, efficitur arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec eget enim nibh.\n
Vivamus vel elit elementum, consequat nunc nec, tempor dui. Integer suscipit velit eu dolor viverra porta. Fusce at dui sit amet elit congue viverra eu et elit. Aenean ac enim tincidunt, laoreet risus eget, ultrices quam. Aliquam quis eleifend libero.', 176, 42);
INSERT INTO Review values(264, 8, 'Great', 'Best sushi I have ever tasted', 'Mauris feugiat commodo ipsum. In mi libero, commodo tristique malesuada finibus, volutpat a magna. Curabitur aliquet finibus dapibus. Nulla erat nisl, tincidunt at ligula vel, tempor dapibus ex. Aenean tincidunt cursus odio, ac mollis lectus suscipit at. Nullam eros purus, tempus a metus id, lobortis sodales eros. Etiam sit amet purus eu elit interdum vehicula nec ut nisi. Quisque commodo, magna non tristique finibus, nisl urna imperdiet nibh, ut auctor nunc tellus sit amet sapien.\n
Quisque pretium venenatis augue ut lacinia. Nulla sagittis, odio in malesuada facilisis, nunc leo cursus augue, sit amet feugiat ligula elit et risus. In ut felis ut nibh blandit imperdiet ac nec felis. Vivamus nunc felis, ullamcorper eget libero eget, mattis bibendum erat. Vestibulum ultrices nibh nec iaculis porta. Suspendisse elit arcu, rutrum vel placerat non, vestibulum sit amet augue. Donec euismod iaculis quam nec egestas. In sed nulla velit.', 179, 42);
INSERT INTO Review values(265, 7, 'Valuable experience', 'But the price was a little too high', 'Fusce nec elementum sapien. Donec at leo porttitor, elementum elit at, commodo sapien. Donec id magna diam. Phasellus scelerisque commodo turpis non mattis. Aliquam mattis est ut diam egestas, vel sollicitudin magna pellentesque. Nullam eget tempus tellus. Fusce neque est, ullamcorper eget nisi at, viverra ullamcorper nisi. Vestibulum vulputate lacus at euismod pharetra. Pellentesque facilisis porttitor libero, et cursus tortor hendrerit nec. Ut aliquam eu nisi non viverra. Morbi quis sem ultrices, eleifend neque hendrerit, accumsan purus. Nullam neque eros, tempor nec magna vitae, sodales accumsan tellus. Aliquam non euismod nulla. Curabitur et ligula condimentum, rutrum nunc nec, gravida quam. Suspendisse potenti.', 204, 42);
INSERT INTO Review values(266, 9, 'Worthy of praise', 'Marvelous food and environment!', 'Aenean semper malesuada ligula non convallis. Proin non elit sollicitudin, laoreet ante at, tristique ligula. Duis varius arcu quam, semper semper tortor faucibus a. Pellentesque scelerisque turpis vitae felis rhoncus, a tristique erat venenatis. Vestibulum tincidunt non leo ac scelerisque. Proin rutrum semper mi tincidunt ultrices. Nullam sed risus augue. Nunc scelerisque, dolor id auctor varius, nisi ante aliquet libero, quis dictum metus magna pretium sapien. Nunc vitae pellentesque nibh. Donec ornare, enim vel finibus elementum, mi quam egestas eros, ac consectetur ligula tellus ut lacus. Cras sed viverra ex.\n
In in sodales diam, sit amet congue eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean pulvinar magna in aliquet semper. Ut scelerisque nisl ut neque commodo, in convallis libero mollis.\n
Nullam ut dui ut libero elementum consectetur in consectetur elit. Nam et dolor a nibh dapibus ullamcorper vitae et leo. Praesent quis mauris sit amet sapien aliquam ornare non elementum ex. Aliquam vitae laoreet ex, vel congue sem. Proin volutpat viverra mi a euismod. Nam venenatis velit non felis tincidunt maximus. Mauris eu dolor nibh.', 206, 42);
INSERT INTO Review values(267, 8, 'Very very good', 'Recommended to all of my friends already', 'Nunc sed libero eu sem egestas ultricies. Duis vel eros id ipsum aliquam sagittis in et neque. Etiam diam libero, maximus id tellus eu, porta euismod urna. In in neque nisi. Cras sed enim id turpis rhoncus faucibus. Phasellus in placerat leo. Nulla at vulputate quam. Pellentesque in gravida lectus. Cras non mauris eu ligula vulputate scelerisque eu et tellus. Cras sit amet lectus molestie, ultricies odio a, semper diam.', 210, 42);
INSERT INTO Review values(268, 10, 'Best sushi ever', 'I am not lying.', 'Ut euismod dolor sed auctor rhoncus. Etiam porttitor, metus a facilisis tristique, ante sem rutrum eros, eu viverra arcu ex sed lacus. Curabitur fringilla ante quis est elementum gravida. Nullam volutpat nisl quam. Nullam eleifend dictum elit nec facilisis. In vitae leo vel nisl sodales varius a lobortis purus. Nullam enim justo, mollis in ligula et, eleifend euismod odio.\n
Sed porttitor vulputate porttitor. Curabitur non porta felis. Aliquam dui elit, facilisis nec ipsum pulvinar, lobortis venenatis quam. Etiam eget tristique elit, a ultricies erat. Sed accumsan sapien id mi vestibulum consectetur. Etiam tempor sagittis lobortis. Integer eros arcu, porttitor non est sit amet, ullamcorper semper lacus. Nunc varius, eros eget tincidunt ullamcorper, tortor urna mattis dolor, feugiat dictum mauris nulla ut velit. Maecenas interdum mauris et felis consectetur, ac efficitur est auctor.', 217, 42);

INSERT INTO Review values(269, 4, 'Poor & cheap food', 'Not recommended.', 'Curabitur elementum vitae diam sit amet semper. Aliquam vitae bibendum est. Integer vel ullamcorper mauris. Praesent et ligula dictum, accumsan ligula tempor, imperdiet arcu. Nullam non dictum leo, sed ornare purus. Proin accumsan odio turpis, eu laoreet nunc aliquam et.\n
Quisque pharetra, lectus ac tincidunt vulputate, est tortor aliquet metus, sit amet congue mauris nulla vel augue. Etiam sit amet consequat quam. Aliquam elementum egestas eros sed consectetur.', 182, 44);

INSERT INTO Review values(270, 7, 'Good', 'Will come back tomorrow!', 'Ut in feugiat tortor. Curabitur dignissim massa sapien, ut tempus ligula facilisis non. Etiam interdum nisi ex, vel luctus nisi molestie ac. Etiam ullamcorper mi ut lectus ullamcorper, vel tempus nibh sollicitudin. Proin gravida felis diam, eu pretium risus iaculis ut. Etiam rutrum risus id feugiat euismod.\n
Aliquam commodo massa pellentesque, interdum ex quis, eleifend velit. Sed ullamcorper, lorem ac tristique facilisis, dolor nunc porta est, pretium placerat magna ligula sed metus. Proin quis sapien ac mi fermentum viverra vitae nec mi. In tincidunt rhoncus dolor. Etiam porta mi et mauris viverra, ac luctus tellus accumsan. Phasellus id nulla odio. In vestibulum, sapien at malesuada fermentum, eros nisi consectetur sem, venenatis tincidunt purus risus consectetur orci. Fusce varius, lorem sed volutpat tincidunt, nisi elit pharetra eros, eget aliquet odio erat vel ex. Curabitur fringilla, turpis ac maximus ultricies, nisi quam accumsan arcu, nec consequat purus enim eu purus.', 185, 46);
INSERT INTO Review values(271, 8, 'Pleasing', 'My everyday choice!', 'Aenean aliquet auctor maximus. Morbi laoreet nunc quis aliquam posuere. In ac lorem elementum, gravida ipsum a, rutrum nisl. Mauris ut quam eget ligula ornare venenatis auctor at metus. In vehicula lacus id est lobortis ultricies non quis nisi.\n
Vivamus eleifend quis orci eu vehicula. Nulla ultricies at leo ut efficitur. Nulla a interdum nibh. Sed luctus ante vel bibendum dictum. Pellentesque ut erat at tellus semper aliquet at convallis sapien.', 205, 46);

INSERT INTO Review values(272, 6, 'Good but average', 'There was nothing that standed out', 'Fusce aliquet lectus sit amet dui accumsan egestas. Vivamus suscipit cursus velit vitae facilisis. Nullam eu rutrum ex, in dapibus magna.\n
Aenean ullamcorper augue vel ligula rutrum, at rutrum augue efficitur. In hac habitasse platea dictumst. Curabitur eu hendrerit massa, non vestibulum velit. Donec pulvinar vitae tortor eu mattis. Sed iaculis lacus purus, id finibus enim dictum eget.\n
Fusce vel fringilla lectus. Pellentesque facilisis, lorem at consectetur vulputate, enim tortor tempor dolor, vel auctor ligula est tristique enim. Morbi aliquam, leo aliquet sodales fringilla, justo odio pulvinar magna, id mollis odio turpis at justo. Nunc ut porta nibh.\n
Vivamus aliquam nunc vel velit interdum, vitae ullamcorper leo tincidunt. Curabitur nulla eros, dictum quis sollicitudin sit amet, scelerisque a odio. Nullam interdum sapien ut bibendum placerat. Mauris dictum vitae eros in hendrerit.', 196, 47);

INSERT INTO Review values(273, 8, 'Will come back', 'Memorable place.', 'Sed faucibus ut purus non volutpat. Sed lacinia mauris at hendrerit tincidunt. Fusce bibendum rutrum venenatis. Integer eget odio ut ex ullamcorper pharetra. Aliquam leo arcu, venenatis eget mattis a, pretium eget nulla.\n
Aliquam tempor vitae tellus id blandit. Nullam ac felis vehicula tellus dignissim egestas. Aliquam sed dolor vitae lacus aliquet malesuada. Vivamus sed accumsan justo. Cras vestibulum ligula vel convallis porttitor. Proin venenatis non dui nec elementum. Fusce facilisis arcu vitae euismod porttitor. Sed iaculis risus in venenatis ullamcorper.', 184, 48);

INSERT INTO Review values(274, 6, 'Nothing out of the ordinary', 'The food was good but very unoriginal.', 'Suspendisse sed velit orci. Quisque aliquam interdum nulla, eu condimentum eros euismod in. Duis molestie convallis porta. Vivamus sem leo, tempor nec suscipit quis, aliquet id ipsum. Aenean dui purus, condimentum sit amet tellus sodales, feugiat condimentum magna.\n
Integer non tristique risus. Nunc pretium semper leo, ut pellentesque elit varius vel. Ut tortor ligula, bibendum et augue ac, consectetur vehicula est. Donec cursus, nibh a euismod viverra, mauris felis pulvinar enim, nec condimentum risus leo vitae nisl. Praesent placerat odio ac ex cursus cursus. Proin scelerisque tincidunt bibendum. Curabitur eu elit eros.\n
Aliquam sodales, dui id laoreet luctus, mauris mi finibus nisl, eu luctus ligula lorem vel arcu. Vestibulum rhoncus tristique metus ut convallis.', 198, 50);

INSERT INTO Review values(275, 9, 'Wonderful', 'Remarkable restaurant!', 'Proin condimentum semper interdum. Aliquam erat volutpat. Vivamus laoreet ipsum pharetra sem gravida euismod. Nunc tempus cursus arcu, vitae viverra eros ultrices in. Aliquam ultrices ornare accumsan.\n
Ut nec nulla finibus, facilisis lacus semper, congue purus. Nulla vehicula imperdiet auctor. Nam iaculis libero eget augue tristique imperdiet. Aliquam eleifend orci laoreet eros aliquam euismod. Ut vel ligula elit. Morbi a leo hendrerit, auctor nisi nec, efficitur ex.', 187, 51);
INSERT INTO Review values(276, 10, 'Exceptional food!', 'Already planning my next visit!', 'Suspendisse sagittis velit ac eleifend pretium. Ut at libero quis mi elementum luctus non sed leo. Nullam rhoncus porta odio, vel viverra tortor lobortis id.\n
Proin sit amet fermentum risus. Vestibulum vitae scelerisque orci, vitae bibendum arcu. Donec neque est, accumsan in nisl nec, feugiat cursus dolor. Maecenas neque dolor, vestibulum non purus sit amet, porttitor maximus lorem.', 215, 51);

INSERT INTO Review values(277, 8, 'Really liked it', 'The food was tasty. Want more.', 'Ut convallis vitae orci at convallis. Mauris non risus ut mauris eleifend placerat. Donec condimentum mauris neque, a suscipit justo condimentum ut. Nulla facilisi. Sed lobortis a arcu id tempor. Sed accumsan aliquam purus, id rhoncus mi. Praesent suscipit sollicitudin risus ut eleifend. In fringilla, justo eu luctus laoreet, dui justo vulputate odio, eget venenatis tortor lorem in felis. Mauris sed ornare neque, non molestie nisi. Sed dapibus nisl feugiat, elementum ex vel, facilisis odio. Morbi id ornare lectus, vitae commodo ipsum. Ut ornare diam id suscipit semper. Etiam ornare ex ac purus rhoncus bibendum. Fusce bibendum massa odio, eget finibus libero placerat eu. Duis ac ex vel est facilisis sollicitudin. Nulla facilisi.', 213, 52);

INSERT INTO Review values(278, 2, 'Atrocious', 'Poor hygiene.', 'Nulla bibendum nisi nec pellentesque feugiat. In ac vulputate dolor, euismod pharetra enim. Nullam congue bibendum mattis. Phasellus semper justo et dolor imperdiet, vitae viverra justo mattis. Donec in justo ac lectus varius rutrum sed quis ipsum. Nulla facilisi. Aliquam iaculis accumsan ullamcorper. Curabitur aliquet lectus in erat sollicitudin, non faucibus ex consectetur. Nunc dignissim hendrerit quam et pulvinar. Phasellus molestie tincidunt nibh sed semper. Nulla sodales massa non nisl lobortis finibus. Nullam bibendum eros quis nibh consectetur congue.\n
Nulla eu pulvinar justo. Nunc fermentum sem quam, nec cursus sem feugiat at. Nullam vel ex suscipit neque bibendum suscipit vitae in lacus. Curabitur sit amet diam quam. Ut vel mi facilisis massa molestie elementum eget sit amet tortor. Aliquam erat volutpat. Aliquam arcu odio, semper vel est in, condimentum cursus libero. Duis varius porttitor euismod.', 211, 53);

INSERT INTO Review values(279, 7, 'Pretty good price & food', 'Pretty unoriginal though.', 'Nullam non tellus condimentum, tempus sem sit amet, luctus felis. Morbi pharetra posuere nisl a blandit. Sed rhoncus malesuada vulputate. Sed in vestibulum elit. Ut bibendum scelerisque felis, vel imperdiet est ultricies vitae.\n
Proin non tortor nisi. Nunc in bibendum nisi. Proin luctus arcu nulla, tristique interdum turpis volutpat id. In vitae nunc a elit egestas venenatis sit amet luctus libero.', 188, 55);

INSERT INTO Review values(280, 1, 'Mediocre', 'Worst food I have ever eaten', 'Fusce vitae purus tristique, efficitur dolor et, tristique ante. Aliquam sapien nisl, sagittis id justo eget, placerat ultrices nisl. In tempus sollicitudin mauris ut feugiat. Pellentesque imperdiet risus at ex dictum, sed tempus est pulvinar. Nunc nec leo fringilla diam sodales euismod sed sed odio.\n
Cras mollis, quam at iaculis semper, justo dui maximus tellus, quis dictum urna velit sit amet justo. Curabitur consectetur fringilla arcu, sit amet ultrices est dignissim eget. Etiam non dapibus justo, et semper quam. Suspendisse tristique augue sit amet gravida euismod. Ut tempus metus quis nisl sagittis volutpat. Nam rhoncus diam luctus dictum tristique.', 217, 57);

/* Owners: 169(3) 170(3) 172(3) 175(3) 176 178 180 182 183(3) 184(4) 186 188 192 195 197 198 200(3) 201 { 203 204 205 206 207 } 211 215 219 */
/* Restaurants: 11 - 60 */
/* entre { e } estao os owners com so 1 restaurante */

INSERT INTO RestaurantOwners values(11, 169);
INSERT INTO RestaurantOwners values(11, 175);
INSERT INTO RestaurantOwners values(12, 188);
INSERT INTO RestaurantOwners values(13, 215);
INSERT INTO RestaurantOwners values(14, 169);
INSERT INTO RestaurantOwners values(15, 170);
INSERT INTO RestaurantOwners values(15, 184);
INSERT INTO RestaurantOwners values(16, 178);
INSERT INTO RestaurantOwners values(17, 192);
INSERT INTO RestaurantOwners values(18, 205);
INSERT INTO RestaurantOwners values(19, 180);
INSERT INTO RestaurantOwners values(19, 201);
INSERT INTO RestaurantOwners values(20, 172);
INSERT INTO RestaurantOwners values(21, 195);
INSERT INTO RestaurantOwners values(22, 219);
INSERT INTO RestaurantOwners values(23, 182);
INSERT INTO RestaurantOwners values(24, 170);
INSERT INTO RestaurantOwners values(25, 197);
INSERT INTO RestaurantOwners values(26, 206);
INSERT INTO RestaurantOwners values(27, 175);
INSERT INTO RestaurantOwners values(28, 170);
INSERT INTO RestaurantOwners values(29, 192);
INSERT INTO RestaurantOwners values(30, 183);
INSERT INTO RestaurantOwners values(31, 176);
INSERT INTO RestaurantOwners values(32, 198);
INSERT INTO RestaurantOwners values(33, 172);
INSERT INTO RestaurantOwners values(34, 178);
INSERT INTO RestaurantOwners values(35, 207);
INSERT INTO RestaurantOwners values(36, 184);
INSERT INTO RestaurantOwners values(37, 180);
INSERT INTO RestaurantOwners values(38, 186);
INSERT INTO RestaurantOwners values(39, 200);
INSERT INTO RestaurantOwners values(40, 184);
INSERT INTO RestaurantOwners values(41, 188);
INSERT INTO RestaurantOwners values(42, 201);
INSERT INTO RestaurantOwners values(43, 195);
INSERT INTO RestaurantOwners values(44, 183);
INSERT INTO RestaurantOwners values(45, 197);
INSERT INTO RestaurantOwners values(45, 200);
INSERT INTO RestaurantOwners values(46, 169);
INSERT INTO RestaurantOwners values(47, 184);
INSERT INTO RestaurantOwners values(48, 198);
INSERT INTO RestaurantOwners values(49, 200);
INSERT INTO RestaurantOwners values(50, 203);
INSERT INTO RestaurantOwners values(51, 172);
INSERT INTO RestaurantOwners values(52, 204);
INSERT INTO RestaurantOwners values(53, 175);
INSERT INTO RestaurantOwners values(54, 186);
INSERT INTO RestaurantOwners values(55, 176);
INSERT INTO RestaurantOwners values(56, 219);
INSERT INTO RestaurantOwners values(57, 211);
INSERT INTO RestaurantOwners values(58, 215);
INSERT INTO RestaurantOwners values(59, 183);
INSERT INTO RestaurantOwners values(60, 211);
