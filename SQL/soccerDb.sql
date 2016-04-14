-- データベース作成
drop database if exists soccerDb;
create database soccerDb;
use soccerDb;

/* カートの一時テーブル */
drop table if exists cart_temp;
create table cart_temp(
	cart_temp_id int not null primary key auto_increment,
	id int not null,
	ticket_id int not null,
	lot int,
	match_name varchar(50),
	hotel varchar(50),
	airport enum('ファーストクラス','ビジネスクラス','エコノミークラス') 	
	);

/* カートのテーブル */
drop table if exists cart;
create table cart(
	cart_id int primary key auto_increment,
	cart_temp_id int,
	id int,
	ticket_id int not null,
	lot int,
	match_name varchar(50),
	hotel varchar(50),
	airport enum('ファーストクラス','ビジネスクラス','エコノミークラス'),
	price int,
	today varchar(50)
);

insert into cart
(ticket_id,lot,match_name,hotel,airport, price)
values
(1,20,'レアルマドリードVSバルセロナ','Hotel The Serras','ファーストクラス',750000),
(2,30,'レアルマドリードVSバルセロナ','Hotel The Serras','ビジネスクラス',650000),
(18,40,'バルセロナVSレアルマドリード','ホテル1989','エコノミークラス',250000),
(19,35,'ドルトムントVSリバプール','ロッコ フォルテ ザ チャールズ ホテル','ファーストクラス',600000);



-- チケット名
drop table if exists ticket;
create table ticket(
	ticket_id int  primary key auto_increment,
	match_name varchar(100) not null,
	hotel varchar(50),
	airport enum('ファーストクラス','ビジネスクラス','エコノミークラス') not null,
	price int,
	bought_limit int,
	match_img varchar(100),
	hotel_img varchar(100)
);

-- ticket table insert
insert into ticket
(ticket_id,match_name,hotel,airport, price,bought_limit,match_img,hotel_img)
values
(1,'レアルマドリードVSバルセロナ','Hotel The Serras','ファーストクラス',750000,150,'img/real6.jpg','img/the_serras_hotel.jpg'),
(2,'レアルマドリードVSバルセロナ','Hotel The Serras','ビジネスクラス',650000,150,'img/real02.jpeg','img/the_serras_hotel.jpg'),
(3,'レアルマドリードVSバルセロナ','Hotel The Serras','エコノミークラス',550000,150,'img/real03.jpeg','img/the_serras_hotel.jpg'),
(4,'レアルマドリードVSバルセロナ','カサ キャンパー','ファーストクラス',500000,150,'img/real6.jpg','img/ka-sakanpe-ru.jpg'),
(5,'レアルマドリードVSバルセロナ','カサ キャンパー','ビジネスクラス',400000,150,'img/real02.jpeg','img/ka-sakanpe-ru.jpg'),
(6,'レアルマドリードVSバルセロナ','カサ キャンパー','エコノミークラス',300000,150,'img/real03.jpg','img/ka-sakanpe-ru.jpg'),
(7,'レアルマドリードVSバルセロナ','ホテル1989','ファーストクラス',450000,150,'img/real6.jpg','img/Hotel1989.jpg'),
(8,'レアルマドリードVSバルセロナ','ホテル1989','ビジネスクラス',350000,150,'img/real02.jpeg','img/Hotel1989.jpg'),
(9,'レアルマドリードVSバルセロナ','ホテル1989','エコノミークラス',250000,150,'img/real03.jpeg','img/Hotel1989.jpg'),
(10,'バルセロナVSレアルマドリード','Hotel The Serras','ファーストクラス',550000,150,'img/barusa03.jpeg','img/the_serras_hotel.jpg'),
(11,'バルセロナVSレアルマドリード','Hotel The Serras','ビジネスクラス',650000,150,'img/baruserona02.jpg','img/the_serras_hotel.jpg'),
(12,'バルセロナVSレアルマドリード','Hotel The Serras','エコノミークラス',550000,150,'img/baruserona01.jpg','img/the_serras_hotel.jpg'),
(13,'バルセロナVSレアルマドリード','カサ キャンパー','ファーストクラス',500000,150,'img/barusa03.jpeg','img/ka-sakanpe-ru.jpg'),
(14,'バルセロナVSレアルマドリード','カサ キャンパー','ビジネスクラス',400000,150,'img/baruserona02.jpg','img/ka-sakanpe-ru.jpg'),
(15,'バルセロナVSレアルマドリード','カサ キャンパー','エコノミークラス',300000,150,'img/baruserona01.jpg','img/ka-sakanpe-ru.jpg'),
(16,'バルセロナVSレアルマドリード','ホテル1989','ファーストクラス',450000,150,'img/barusa03.jpeg','img/Hotel1989.jpg'),
(17,'バルセロナVSレアルマドリード','ホテル1989','ビジネスクラス',350000,150,'img/baruserona02.jpg','img/Hotel1989.jpg'),
(18,'バルセロナVSレアルマドリード','ホテル1989','エコノミークラス',250000,150,'img/baruserona01.jpg','img/Hotel1989.jpg'),
(19,'ドルトムントVSリバプール','ロッコ フォルテ ザ チャールズ ホテル','ファーストクラス',600000,150,'img/dorutomunto04.jpg','img/rokko_forute_cya-ruzu.jpeg'),
(20,'ドルトムントVSリバプール','ロッコ フォルテ ザ チャールズ ホテル','ビジネスクラス',550000,150,'imgdorutomunto05.jpg','img/rokko_forute_cya-ruzu.jpeg'),
(21,'ドルトムントVSリバプール','ロッコ フォルテ ザ チャールズ ホテル','エコノミークラス',500000,150,'img/dorutomunto06.jpg','img/rokko_forute_cya-ruzu.jpeg'),
(22,'ドルトムントVSリバプール','プラッツル ホテル ミュンヘン','ファーストクラス',550000,150,'img/dorutomunto04.jpg','img/platzl-hotel.jpg'),
(23,'ドルトムントVSリバプール','プラッツル ホテル ミュンヘン','ビジネスクラス',500000,150,'imgdorutomunto05.jpg','img/platzl-hotel.jpg'),
(24,'ドルトムントVSリバプール','プラッツル ホテル ミュンヘン','エコノミークラス',450000,150,'img/dorutomunto06.jpg','img/platzl-hotel.jpg'),
(25,'ドルトムントVSリバプール','カプリ バイ フレーザー フランクフルト','ファーストクラス',500000,150,'img/capri-by-fraser-frankfurt01.jpg','img/maininngar.jpg'),
(26,'ドルトムントVSリバプール','カプリ バイ フレーザー フランクフルト','ビジネスクラス',450000,150,'img/dorutomunto05.jpg','img/capri-by-fraser-frankfurt01.jpg'),
(27,'ドルトムントVSリバプール','カプリ バイ フレーザー フランクフルト','エコノミークラス',400000,150,'img/dorutomunto06.jpg','img/capri-by-fraser-frankfurt01.jpg'),
(28,'ドルトムントVSバイエルン','ロッコ フォルテ ザ チャールズ ホテル','ファーストクラス',600000,150,'img/dorutomunto04.jpg','img/rokko_forute_cya-ruzu.jpeg'),
(29,'ドルトムントVSバイエルン','ロッコ フォルテ ザ チャールズ ホテル','ビジネスクラス',550000,150,'img/dorutomunto05.jpg','img/rokko_forute_cya-ruzu.jpeg'),
(30,'ドルトムントVSバイエルン','ロッコ フォルテ ザ チャールズ ホテル','エコノミークラス',500000,150,'img/dorutomunto06.jpg','img/rokko_forute_cya-ruzu.jpeg'),
(31,'ドルトムントVSバイエルン','プラッツル ホテル ミュンヘン','ファーストクラス',550000,150,'img/dorutomunto04.jpg','img/platzl-hotel.jpg'),
(32,'ドルトムントVSバイエルン','プラッツル ホテル ミュンヘン','ビジネスクラス',500000,150,'imgdorutomunto05.jpg','img/platzl-hotel.jpg'),
(33,'ドルトムントVSバイエルン','プラッツル ホテル ミュンヘン','エコノミークラス',450000,150,'img/dorutomunto06.jpg','img/platzl-hotel.jpg'),
(34,'ドルトムントVSバイエルン','カプリ バイ フレーザー フランクフルト','ファーストクラス',500000,150,'img/capri-by-fraser-frankfurt01.jpg','img/maininngar.jpg'),
(35,'ドルトムントVSバイエルン','カプリ バイ フレーザー フランクフルト','ビジネスクラス',450000,150,'img/dorutomunto05.jpg','img/capri-by-fraser-frankfurt01.jpg'),
(36,'ドルトムントVSバイエルン','カプリ バイ フレーザー フランクフルト','エコノミークラス',400000,150,'img/dorutomunto06.jpg','img/capri-by-fraser-frankfurt01.jpg'
);
