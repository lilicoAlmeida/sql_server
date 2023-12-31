
drop database cd_lincoln;
CREATE DATABASE cd_lincoln;

USE cd_lincoln;

CREATE TABLE musica(
	Codigo_musica INT NOT NULL PRIMARY KEY,
	Nome_musica VARCHAR(50) NULL,
	Duracao DECIMAL(4,2) NOT NULL
);

CREATE TABLE autor(
	Codigo_autor INT NOT NULL PRIMARY KEY,
	Nome_autor VARCHAR(50) NOT NULL
);

CREATE TABLE faixa(
	Codigo_cd INT NOT NULL,
	Codigo_musica INT NOT NULL,
	Numero_faixa INT NOT NULL PRIMARY KEY
);

CREATE TABLE musica_autor(
	Codigo_autor INT NOT NULL,
	Codigo_musica INT NOT NULL
);


CREATE TABLE item_cd(
	Codigo_cd INT NOT NULL,
	Numero_faixa INT NOT NULL,
	Codigo_musica INT NOT NULL
);

CREATE TABLE cd_categoria(
	Codigo_categoria INT NOT NULL PRIMARY KEY,
	Menor_preco INT NOT NULL,
	Maior_preco INT NOT NULL
);

CREATE TABLE cd(
	Codigo_cd INT NOT NULL PRIMARY KEY,
	Codigo_gravadora INT NOT NULL,
	Nome_cd VARCHAR(50) NOT NULL,
	Preco_venda INT NOT NULL,
	Data_lancamento varchar NOT NULL,
	Cd_indicado int 
);

CREATE TABLE gravadora(
	Codigo_gravadora INT NOT NULL PRIMARY KEY,
	Nome_gravadora VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NOT NULL,
	Telefone VARCHAR(50) NOT NULL,
	Contato VARCHAR(50) NOT NULL,
	URL VARCHAR(50) NOT NULL

);

ALTER TABLE item_cd ADD FOREIGN KEY(Codigo_cd) REFERENCES musica;
alter table item_cd add foreign key (Codigo_cd)references faixa ;
alter table item_cd add foreign key (Numero_faixa) references cd;
ALTER TABLE item_cd ADD FOREIGN KEY (Numero_faixa) REFERENCES cd;
alter table item_cd add foreign key (Numero_faixa) references faixa;



ALTER TABLE cd  ADD  FOREIgn KEY (Codigo_gravadora) REFERENCES gravadora ;
ALTER TABLE faixa  ADD FOREIGN KEY (Codigo_musica) REFERENCES  musica ;
ALTER TABLE faixa  ADD FOREIGN KEY (Codigo_cd) REFERENCES  cd ;
ALTER TABLE musica_autor  ADD  FOREIgn KEY (Codigo_musica) REFERENCES musica ;
ALTER TABLE musica_autor  ADD  FOREIgn KEY (Codigo_autor) REFERENCES autor ;

ALTER TABLE cd  ADD  FOREIgn KEY (Cd_indicado) REFERENCES cd ;



Insert into autor values (1,'sera',2.28);
Insert into autor values(2,'ainda e cedo',3.55);
Insert into autor values(3,'gera��o coca-cola',2.20);
Insert into autor values(4,'eduardo e monica',4.32);
Insert into autor values(5,'tempo perdido',5.00);
Insert into autor values(6,'indios',4.23);
Insert into autor values (7,'que pais e este',3.04);

Insert into musica values (8,'faroeste cabloco ',9.03);
Insert into musica values(9,'h� tempos',3.16);
Insert into musica values(10,'pais e filhos',5.06);
Insert into musica values(11,'meninos e meninas ',3.22);
Insert into musica values(12,'vento no litoral',06.05);
Insert into musica values(13,'perfei��o',4.35);
Insert into musica values (14,'giz',3.20);
Insert into musica values(15,'dezesseis',5.28);
Insert into musica values(16,'antes das seis',3.29);
Insert into musica values(17,'meninos ,eu vi',3.25);
Insert into musica values(18,'eu te amo',3.06);
Insert into musica values(19,'piano na mangeuira',2.23);
Insert into musica values (20,'a violeira',2.54);
Insert into musica values (21,'anos dourados',2.56);
Insert into musica values(22,'olha,maria',3.55);
Insert into musica values(23,'biscate',3.20);
Insert into musica values(24,'retrato em preto e branco',3.23);
Insert into musica values(25,'falando de amor',3.20);
Insert into musica values(26,'pois e',2.48);
Insert into musica values (27,'noite dos mascarados',2.42);
Insert into musica values(28,'sabia',3.20);
Insert into musica values(29,'imagina',2.52);
Insert into musica values(30,'bate-boca',4.41);



Insert into musica_autor values (1,1);
Insert into musica_autor values (1,4);
Insert into musica_autor values (1,5);
Insert into musica_autor values (2,1);
Insert into musica_autor values (2,4);
Insert into musica_autor values (2,5);
Insert into musica_autor values (2,6);
Insert into musica_autor values (3,1);
Insert into musica_autor values (4,1);
Insert into musica_autor values (5,1);
Insert into musica_autor values (6,1);
Insert into musica_autor values (7,1);
Insert into musica_autor values (8,1);
Insert into musica_autor values (9,1);
Insert into musica_autor values (9,4);
Insert into musica_autor values (10,1);
Insert into musica_autor values (10,4);
Insert into musica_autor values (10,5);
Insert into musica_autor values (11,1);
Insert into musica_autor values (11,4);
Insert into musica_autor values (11,5);
Insert into musica_autor values (12,1);
Insert into musica_autor values (12,4);
Insert into musica_autor values (12,5);
Insert into musica_autor values (13,1);
Insert into musica_autor values (13,4);
Insert into musica_autor values (13,5);
Insert into musica_autor values (14,1);
Insert into musica_autor values (14,4);
Insert into musica_autor values (14,5);
Insert into musica_autor values (15,1);
Insert into musica_autor values (15,4);
Insert into musica_autor values (15,5);
Insert into musica_autor values (16,1);
Insert into musica_autor values (16,4);
Insert into musica_autor values (16,5);
Insert into musica_autor values (17,2);
Insert into musica_autor values (17,3);
Insert into musica_autor values (18,3);
Insert into musica_autor values (19,2);
Insert into musica_autor values (19,3);
Insert into musica_autor values (20,2);
Insert into musica_autor values (20,3);
Insert into musica_autor values (21,2);
Insert into musica_autor values (21,3);
Insert into musica_autor values (22,2);
Insert into musica_autor values (22,3);
Insert into musica_autor values (22,7);
Insert into musica_autor values (23,3);
Insert into musica_autor values (24,3);
Insert into musica_autor values (24,2);
Insert into musica_autor values (25,2);
Insert into musica_autor values (26,2);
Insert into musica_autor values (26,2);
Insert into musica_autor values (26,3);
Insert into musica_autor values (27,3);
Insert into musica_autor values (28,2);
Insert into musica_autor values (28,3);
Insert into musica_autor values (29,2);
Insert into musica_autor values (29,3);
Insert into musica_autor values (30,3);


Insert into gravadora values (1,'emi','rod.dutra,km29.5','55659856','8965-7894','emi@emi-music.com.br');
Insert into gravadora values(2,'polygram','rod.imigrantes,km 29.8','99659856','7595-7894',	'polygram@music.com.br');
Insert into gravadora values(3,'bmg','rod.anchieta,km 289.8','99654456','7595-7004',	'bmg@music.com.br');
Insert into gravadora values(4,'som livre','av sao jose,km 2889.8','99657806','7895-7004',	'somlivre@music.com.br');
Insert into gravadora values(5,'epic','avalda,n89','58793321','8965-4789',	'epic@music.com.br');


Insert into cd values (1,1,'mais do mesmo',-5.00,'1985-02-03.00:00:00',1);
Insert into cd values(2,3,'bate boca',-15.00,'1999-08-07.00:00:00',2);
Insert into cd values(3,4,'elis -regina-essa -mulher',-18.00,'1986-05-25.00:00:00',3);
Insert into cd values(4,3,'a forca que nunca seca',5.25,'1981-07-15.00:00:00',4);
Insert into cd values(5,4,'perfil',20.99,'1987-01-02.00:00:00',5);
Insert into cd values(6,2,'barry manilown greastest hits',25.00,'1958-12-18.00:00:00',1);
Insert into cd values (7,5,'listem whihout prejudice',28.00,'1975-06-11.00:00:00',7);


Insert into faixa values (1,1,1);
Insert into faixa values (1,2,2);
Insert into faixa values (1,3,3);
Insert into faixa values (1,4,4);
Insert into faixa values (1,5,5);
Insert into faixa values (1,6,6);
Insert into faixa values (1,7,7);
Insert into faixa values (1,8,8);
Insert into faixa values (1,9,9);
Insert into faixa values (1,10,10);
Insert into faixa values (1,11,11);
Insert into faixa values (1,12,12);
Insert into faixa values (1,13,13);
Insert into faixa values (1,14,14);
Insert into faixa values (1,15,15);
Insert into faixa values (1,16,16);
Insert into faixa values (2,1,17);
Insert into faixa values (2,2,18);
Insert into faixa values (2,3,19);
Insert into faixa values (2,4,20);
Insert into faixa values (2,5,21);
Insert into faixa values (2,6,22);
Insert into faixa values (2,7,23);
Insert into faixa values (2,8,24);
Insert into faixa values (2,9,25);
Insert into faixa values (2,10,26);
Insert into faixa values (2,11,27);
Insert into faixa values (2,12,28);
Insert into faixa values (2,13,29);
Insert into faixa values (2,14,30);


Insert into cd_categoria values (1,10,20);
Insert into cd_categoria values (2,20,40);
Insert into cd_categoria values (3,30,60);
Insert into cd_categoria values (4,11,22);
Insert into cd_categoria values (5,15,30);
Insert into cd_categoria values (6,25,50);
Insert into cd_categoria values (7,21,42);
Insert into cd_categoria values (8,22,44);
Insert into cd_categoria values (9,9,18);
Insert into cd_categoria values (10,5,10);