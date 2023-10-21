CREATE DATABASE imoveis

USE imoveis

CREATE TABLE estado(
	sg_estado VARCHAR(50) PRIMARY KEY NOT NULL,
	nm_estado VARCHAR(50) NOT NULL
)

CREATE TABLE cidade(
	cd_cidade INT PRIMARY KEY NOT NULL,
	nm_cidade VARCHAR(50) NOT NULL,
	sg_estado VARCHAR(50) NOT NULL
)

CREATE TABLE bairro(
	cd_bairro INT PRIMARY KEY NOT NULL,
	nm_bairro VARCHAR(50) NOT NULL,
	cd_cidade INT NOT NULL,
	sg_estado VARCHAR(50) NOT NULL
)
CREATE TABLE compradores(
	cd_comprador INT PRIMARY KEY NOT NULL,
	nm_comprador VARCHAR(50) NOT NULL,
	nm_enderecocomprador VARCHAR(50) NOT NULL,
	nr_cpfcomprador VARCHAR(50) NOT NULL,
	cd_cidade INT NOT NULL,
	cd_bairro INT NOT NULL,
	sg_estado VARCHAR(50) NOT NULL,
	tel_comprador VARCHAR(255) NOT NULL
)

CREATE TABLE vendedor(
	cd_vendedor INT PRIMARY KEY NOT NULL,
	nm_vendedor VARCHAR(50) NOT NULL,
	nm_endereco VARCHAR(50) NOT NULL,
	nr_cpf VARCHAR(255) NOT NULL,
	cd_cidade INT NOT NULL,
	cd_bairro INT NOT NULL,
	sg_estado VARCHAR(50) NOT NULL, 
	telefone VARCHAR(255) NOT NULL,
	data_nasc DATETIME NOT NULL
)

CREATE TABLE oferta(
	cd_oferta VARCHAR(50) PRIMARY KEY NOT NULL,
	cd_imovel INT NOT NULL,
	cd_comprador INT NOT NULL,
	vl_oferta VARCHAR(255) NOT NULL,
	dt_oferta DATETIME NOT NULL
)

CREATE TABLE faixa_imovel(
	cd_faixa INT PRIMARY KEY NOT NULL,
	nm_faixa VARCHAR(50) NOT NULL,
	vl_minimo VARCHAR(50) NOT NULL,
	vl_maximo VARCHAR(50) NOT NULL
)

CREATE TABLE imovel(
	cd_imovel INT PRIMARY KEY NOT NULL,
	cd_vendedor INT NOT NULL,
	cd_bairro INT NOT NULL,
	cd_cidade INT NOT NULL,
	sg_estado VARCHAR(50) NOT NULL,
	nm_endereco VARCHAR(255) NOT NULL,
	nr_areautil VARCHAR(255) NOT NULL,
	nr_areatotal VARCHAR(255) NOT NULL,
	vl_preco VARCHAR(50) NOT NULL,
	cd_oferta VARCHAR(50) NOT NULL,
	st_vendido VARCHAR(50) NOT NULL,
	data_lancto DATETIME NOT NULL
)

ALTER TABLE compradores ADD FOREIGN KEY(cd_cidade) REFERENCES cidade
ALTER TABLE compradores ADD FOREIGN KEY(cd_bairro) REFERENCES bairro
ALTER TABLE compradores ADD FOREIGN KEY(sg_estado) REFERENCES estado

ALTER TABLE vendedor ADD FOREIGN KEY(cd_cidade) REFERENCES cidade
ALTER TABLE vendedor ADD FOREIGN KEY(cd_bairro) REFERENCES bairro
ALTER TABLE vendedor ADD FOREIGN KEY(sg_estado) REFERENCES estado

ALTER TABLE cidade ADD FOREIGN KEY(sg_estado) REFERENCES estado

ALTER TABLE oferta ADD FOREIGN KEY(cd_imovel) REFERENCES imovel
ALTER TABLE oferta ADD FOREIGN KEY(cd_comprador) REFERENCES compradores

ALTER TABLE bairro ADD FOREIGN KEY(cd_cidade) REFERENCES cidade
ALTER TABLE bairro ADD FOREIGN KEY(sg_estado) REFERENCES estado

ALTER TABLE imovel ADD FOREIGN KEY(cd_vendedor) REFERENCES vendedor
ALTER TABLE imovel ADD FOREIGN KEY(cd_bairro) REFERENCES bairro
ALTER TABLE imovel ADD FOREIGN KEY(cd_cidade) REFERENCES cidade
ALTER TABLE imovel ADD FOREIGN KEY(sg_estado) REFERENCES estado
ALTER TABLE imovel ADD FOREIGN KEY(cd_oferta) REFERENCES oferta


---------------------------------------------------------------------------
Insert into estado values('AC','ACRE');
Insert into estado values('AL','ALAGOAS');
Insert into estado values('AP','AMAPA');
Insert into estado values('AM','AMAZONAS');
Insert into estado values('BA','BAHIA');
Insert into estado values('CE','CEARA');
Insert into estado values('DF','DISTRITO FEDERAL');
Insert into estado values('ES','ESPITITO SANTOS');
Insert into estado values('GO','goias');
Insert into estado values('MA','MARANHAO');
Insert into estado values('MT','MATO GROSSO');
Insert into estado values('MS','MATO GROSSO DO SUL');
Insert into estado values('PA','PARA');
Insert into estado values('PB','PARAIBA');
Insert into estado values('PR','PARANA');
Insert into estado values('PE','PERNANBUCO');
Insert into estado values('PI','PIAUI');
Insert into estado values('RN','RIO GRANDE DO NORTE');
Insert into estado values('RS','RIO GRANDE DO SUL');
Insert into estado values('RJ','RIO DE JANEIRO');
Insert into estado values('RO','RONDONIA');
Insert into estado values('RR','RORAIMA');
Insert into estado values('SC','SANTA CATARINA');
Insert into estado values('SP','SAO PAULO');
Insert into estado values('SE','SERGIPE');
Insert into estado values('TO','TOCANTINS');
---------------------------------------------------------------------------

Insert into cidade values(1,'ALQUEIRES','AC');
Insert into cidade values(2,'LAGOA VERDE','AC');
insert into cidade values(3,'RIO LARGO','AL');
insert into cidade values(4,'ARAPIRACA','AL');
insert into cidade values(5,'MAZAGAO','AM');
insert into cidade values(6,'UAIRI','AM');
insert into cidade values(7,'VITORIA DA CONQUISTA','BA');
insert into cidade values(8,'SANTANA','BA');
insert into cidade values(9,'MESSEJANA','CE');
insert into cidade values(10,'JOASEIRO','CE');
insert into cidade values(11,'CRISTALINA','DF');
insert into cidade values(12,'FORMOSA','DF');
insert into cidade values(13,'VILA VELHA','ES');
insert into cidade values(14,'ARACRUS','ES');
insert into cidade values(15,'AGREUNA','GO');
insert into cidade values(16,'ADELANDIA','GO');
insert into cidade values(17,'SAO LUIZ','MA');
insert into cidade values(18,'IMPERATRIZ','MA');
insert into cidade values(19,'VARZEA GRANDE','MT');
insert into cidade values(20,'RONDONOPOLIS','MT');
insert into cidade values(21,'BRAUNAS','MS');
insert into cidade values(22,'3 CORAÇOES','MS');
insert into cidade values(23,'ACARA','PA');
insert into cidade values(24,'AFUA','PA');
insert into cidade values(25,'POMBAL','PB');
insert into cidade values(26,'PATOS','PB');
insert into cidade values(27,'OLINDA','PE');
insert into cidade values(28,'CARUARU','PE');
insert into cidade values(29,'OEIRAS','PI');
insert into cidade values(30,'PICOS','PI');
insert into cidade values(31,'MACAE','RN');
insert into cidade values(32,'MOSSORO','RN');
insert into cidade values(33,'CRUZ ALTA','RS');
insert into cidade values(34,'GRAMADOS','RS');
insert into cidade values(35,'IPANEMA','RJ');
insert into cidade values(36,'ROSINHA','RJ');
insert into cidade values(37,'VINHENA','RO');
insert into cidade values(38,'CACOAL','RO');
insert into cidade values(39,'CARACAI','RR');
insert into cidade values(40,'PACARAIMA','RR');
insert into cidade values(41,'FLORIPA','SC');
insert into cidade values(42,'TUBARAO','SC');
insert into cidade values(43,'CAPAO','SP');
insert into cidade values(44,'CAMPO LIMPO','SP');
insert into cidade values(45,'CAPUXO','SE');
insert into cidade values(46,'BUGIO','SE');
insert into cidade values(47,'ARAQUARA','PR');
insert into cidade values(48,'MACAPA','AP');
insert into cidade values(49,'OIAPORQUE','AP');
insert into cidade values(50,'UIRIARA','PR');
insert into cidade values(51,'TABUARA','TO');
insert into cidade values(52,'ZOOLANDIA','TO');
---------------------------------------------------------------------------

insert into bairro values (1,'ALQUEIRES',1,'AC'); 
insert into bairro values (2,'JACINTINHO',2,'AL');
insert into bairro values (3,'cabralsinho',3,'AP');
insert into bairro values (4,'tancredo neves',4,'AM');
insert into bairro values (5,'bairro da paz',5,'BA');
insert into bairro values (6,'jardim uniao',6,'CE');
insert into bairro values (7,'asa norte',7,'DF');
insert into bairro values (8,'distrito',8,'ES');
insert into bairro values (9,'bairro feliz',9,'GO');
insert into bairro values (10,'alto do coxipo',10,'MA');
insert into bairro values (11,'aero rancho',11,'MT');
insert into bairro values(12,'BATISTA',12,'PA');
insert into bairro values(13,'aero clube',13,'PB');
insert into bairro values(14,'BAIRRO NOVO',14,'PR');
insert into bairro values(15,'CAJOEIRO',15,'PE');
insert into bairro values(16,'CABRAL',16,'PI');
insert into bairro values(17,'AREIA PRETA',17,'RN');
insert into bairro values(18,'CAIXIAS DO SUL',18,'RS');
insert into bairro values(19,'GAVEIA',19,'RJ');
insert into bairro values(20,'ALVORADA',20,'RO');
insert into bairro values(21,'NOVA FLORESTA ',21,'RR');
insert into bairro values(22,'BALNEARIO',22,'SC');
insert into bairro values(23,'SP',23,'CAPAO REDONDO');
insert into bairro values(24,'BUGIO',24,'SE');
insert into bairro values(25,'LAGOINHA',25,'TO');
insert into bairro values(26,'AERO PORTO VELHO',26,'AC');
insert into bairro values(27,'TABULEIRO DO MARTINS',27,'AL');
insert into bairro values(28,'BURITIZAL',28,'AP');
insert into bairro values(29,'LAGO AZUL',29,'AM');
insert into bairro values(30,'BAIRRO DAS QUINTAS',30,'BA');
insert into bairro values(31,'JOAZEIRO',31,'CE');
insert into bairro values(32,'AGUAS CLARAS',32,'DF');
insert into bairro values(33,'GOIABEIRA',33,'ES');
insert into bairro values(34,'CIDADE JARDIM',34,'GO');
insert into bairro values(35,'COPHEMA',35,'MA');
insert into bairro values(36,'CACHOEIRINHA',36,'MT');
insert into bairro values(37,'COLUMBIA',37,'MS');
insert into bairro values(38,'CAMPINAS',38,'PA');
insert into bairro values(39,'ALTO DO CEU',39,'PB');
insert into bairro values(40,'BOA VISTA',40,'PR');
insert into bairro values(41,'CAÇOTE',41,'PE');
insert into bairro values(42,'CENTRO',42,'PI');
insert into bairro values(43,'ALECRIM',43,'NR');
insert into bairro values(44,'ELDORADO DO SUL',44,'RS');
insert into bairro values(45,'COPACABANA',45,'RJ');
insert into bairro values(46,'CAIMBE',46,'RO');
insert into bairro values(47,'CALADINHO',47,'RR');
insert into bairro values(48,'BRUSQUE',48,'SC');
insert into bairro values(49,'JACIRA',49,'SP');
insert into bairro values(50,'AMERICA ',50,'SE');
insert into bairro values(51,'PEDRA SANTA',51,'TO');
insert into bairro values(52,'CAMPO BELO',52,'MS');
----------------------------------------------------------------------------------------------------------------------------------------
insert into compradores values (1,'Carlos henrique de miranda','rua jao auusto teixeira n 130','CPF 2343215436',1,1,'AC',' 2583-2086');
insert into compradores values (2,'antonio rafael de menezes','rua jao auusto teixeira n 130','CPF 11123445678',2,2,'BA',' 2543-2686');
insert into compradores values (3,'maria luiza oswald','rua jaoquim osorio dutra n 1023','CPF 22373530775 ',3,3,'MS','99953-2176');
insert into compradores values (4,'Augusto Miranda','rua maria das dores n 324','CPF 84151327274',4,4,'RN',' 3784-2386');
insert into compradores values (5,'Renato Góes','rua francisco de almeida n 34','CPF 73625563142',5,5,'RN',' 99941-6785');
insert into compradores values (6,'Renato ANTONIO PEREIRA','rua mateus master guineer n 567','CPF 38980757700',6,6,'DF','98499-8091');
insert into compradores values (7,'Satanael da Silva','rodrigo de queiroz n 620','CPF 32663885509',7,7,'DF','3793-5070');
insert into compradores values (8,'Husan Satanael Daniel','rua osvaldo de andrade n 878','CPF 14226564111',8,8,'MA','99178-8876');
insert into compradores values (9,'Robson Lima','rua lucas dos santos moura n 231 ','CPF 41857277635',9,9,'ES',' 2938-8774');
insert into compradores values (10,'Shirley Santana','rua adrinana calvalcante n 56','CPF 22590480644',10,10,'SE','2654-0759');
insert into compradores values (11,'Lucas Matheus','rua niteroi n 9899','CPF 80666625301',11,11,'CE','98145-8736');
--------------------------------------------------------------------------------------------------------------------------------

insert into vendedor values(1,'CARLOS','RUA JAOQUIM FERREIRA N334','CPF_45656787645',1,1,'AC','46612834','20/01/97');
insert into vendedor values(2,'RODRIGO','RUA NOVE DE ABRIL Nº 233','CPF_34565412334',2,2,'AC','46614343','21/01/97');
insert into vendedor values(3,'JOAO','RUA 25 DE MARÇO Nº18 ','CPF_7658476534',3,3,'AL','46613535','22/01/97');
insert into vendedor values(4,'MATEUS','RUA PADRE RODOLFO Nº 23','CPF_23454637898',4,4,'AL','46613645','23/01/97');
insert into vendedor values(5,'CARLOS','RUA NOVE DE JUHO Nº 444','CPF_12346578909',5,5,'AP','46612834','24/01/97');
insert into vendedor values(6,'FERNANDO','RUA MATEUS ABRIDO N 24','CPF_34756409876',6,6,'AP','46611111','25/01/97');
insert into vendedor values(7,'FELIPE','RUA PROF HERCULANO N 72','CPF_98765789872',7,7,'SC','46612222','26/01/97');
insert into vendedor values(8,'BRUNO','RUA JOSE RUI BARBOSA N 67','CPF_23443212375',8,8,'SC','46613212','27/01/97');
insert into vendedor values(9,'FELICIANO','RUA FERNANDO GOTINHA','CPF_3746587648',9,9,'BA','46619999','28/01/97');
insert into vendedor values(10,'ELDER','RUA N','CPF_45565731233',10,10,'BA','46618877','29/01/97');
insert into vendedor values(11,'JUCA','RUA A','CPF_36455432354',11,11,'RJ','46615678','10/01/97');
insert into vendedor values(12,'GUSTAVO','RUA B Nº 25533','CPF_2343257698',12,12,'RJ','53456798','11/01/97');
insert into vendedor values(13,'HELLEN','RUA CNº 23653','CPF_485786909810',13,13,'RS','119875653','12/01/97');
insert into vendedor values(14,'REGINA','D Nº 2353','CPF_2837465896874',14,14,'RS','46345789','13/01/97');
insert into vendedor values(15,'CRIS','OLIVATO Nº 33','CPF_456567870009',15,15,'BA','46623456','14/01/97');
--------------------------------------------------------------------------------------------------------------------------------
insert into imovel values (1,1,1,1,'AC','RUA NOVE DE ABRIL','200','50','34 MIL','1','VENDIDO','16/03/2018');
insert into imovel values (2,2,2,2,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','2','NAO VENDIDO','16/03/2018');
insert into imovel values (3,3,3,3,'AC','RUA NOVE DE ABRIL','200','50','34 MIL','3','VENDIDO','16/03/2018');
insert into imovel values (4,4,4,4,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','4','NAO VENDIDO','16/03/2018');
insert into imovel values (5,5,5,5,'AC','RUA NOVE DE ABRIL','200','50','34 MIL','5','VENDIDO','16/03/2018');
insert into imovel values (6,6,6,6,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','6','NAO VENDIDO','16/03/2018');
insert into imovel values (7,7,7,7,'AC','RUA NOVE DE ABRIL','200','50','34 MIL','7','VENDIDO','16/03/2018');
insert into imovel values (8,8,8,8,'AC','RUA NOVE DE ABRIL','200','50','34 MIL','8','NAO VENDIDO','16/03/2018');
insert into imovel values (9,9,9,9,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','9','VENDIDO','16/03/2018');
insert into imovel values (10,10,10,10,'AC','RUA NOVE DE JUHLO','200','50','34 MIL','10','NAO VENDIDO','16/03/2018');
insert into imovel values (11,11,11,11,'AL','RUA NOVE DE JUHLO','200','50','50 MIL','11','VENDIDO','16/03/2018');
insert into imovel values (12,12,12,12,'AL','RUA NOVE DE JUHLO','200','50','39 MIL','12','NAO VENDIDO','16/03/2018');
insert into imovel values (13,13,13,13,'AL','RUA NOVE DE JUHLO','200','50','50 MIL','13','VENDIDO','16/03/2018');
insert into imovel values (14,14,14,14,'AL','RUA NOVE DE JUHLO','200','50','39 MIL','14','NAO VENDIDO','16/03/2018');
insert into imovel values (15,15,15,15,'AL','RUA NOVE DE JUHLO','200','50','50 MIL','15','NAO VENDIDO','16/03/2018');
insert into imovel values (16,16,16,16,'AL','RUA NOVE DE JUHLO','200','50','39 MIL','16','NAO VENDIDO','16/03/2018');
insert into imovel values (17,17,17,17,'AL','RUA NOVE DE JUHLO','200','50','50 MIL','17','NAO VENDIDO','16/03/2018');
insert into imovel values (18,18,18,18,'AL','RUA NOVE DE JUHLO','200','50','39 MIL','18','NAO VENDIDO','16/03/2018');
insert into imovel values (19,19,19,19,'AL','RUA NOVE DE JUHLO','200','50','50 MIL','19','NAO VENDIDO','16/03/2018');
insert into imovel values (20,20,20,20,'AL','RUA NOVE DE JUHLO','200','50','90 MIL','20','NAO VENDIDO','16/03/2018');
insert into imovel values (21,21,21,21,'AL','RUA NOVE DE JUHLO','200','50','50 MIL','21','NAO VENDIDO','16/03/2018');
insert into imovel values (22,22,22,22,'BA','RUA 25 DE MARÇO','200','50','90 MIL','22','NAO VENDIDO','16/03/2018');
insert into imovel values (23,23,23,23,'BA','RUA 25 DE MARÇO','200','50','50 MIL','23','NAO VENDIDO','16/03/2018');
insert into imovel values (24,24,24,24,'BA','RUA 25 DE MARÇO','200','50','90 MIL','24','NAO VENDIDO','16/03/2018');
insert into imovel values (25,25,25,25,'BA','RUA 25 DE MARÇO','200','50','50 MIL','25','NAO VENDIDO','16/03/2018');
insert into imovel values (26,26,26,26,'BA','RUA 25 DE MARÇO','200','50','90 MIL','26','VENDIDO','16/03/2018');
insert into imovel values (27,27,27,27,'BA','RUA 25 DE MARÇO','200','50','50 MIL','27','NAO VENDIDO','16/03/2018');
insert into imovel values (28,28,28,28,'BA','RUA 25 DE MARÇO','200','50','90 MIL','28','VENDIDO','16/03/2018');
insert into imovel values (29,29,29,29,'BA','RUA 25 DE MARÇO','200','50','50 MIL','29','NAO VENDIDO','16/03/2018');
insert into imovel values (30,30,30,30,'BA','RUA 25 DE MARÇO','200','50','90 MIL','30','VENDIDO','16/03/2018');
insert into imovel values (31,31,31,31,'AC','RUA 25 DE MARÇO','200','50','50 MIL','31','NAO VENDIDO','16/03/2018');
insert into imovel values (32,32,32,32,'AC','RUA 25 DE MARÇO','300','50','90 MIL','32','VENDIDO','16/03/2018');
insert into imovel values (33,33,33,33,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','33','NAO VENDIDO','16/03/2018');
insert into imovel values (34,34,34,34,'AC','RUA NOVE DE ABRIL','300','50','70 MIL','34','VENDIDO','16/03/2018');
insert into imovel values (35,35,35,35,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','35','NAO VENDIDO','16/03/2018');
insert into imovel values (36,36,36,36,'AC','RUA NOVE DE ABRIL','300','50','70 MIL','36','NAO VENDIDO','16/03/2018');
insert into imovel values (37,37,37,37,'AC','RUA NOVE DE ABRIL','200','50','50 MIL','37','NAO NAO VENDIDO','16/03/2018');
insert into imovel values (38,38,38,38,'AC','RUA NOVE DE ABRIL','300','50','70 MIL','38','NAO VENDIDO','16/03/2018');
insert into imovel values (39,39,39,39,'AC','RUA NOVE DE ABRIL','200','50','70 MIL','39','NAO VENDIDO','16/03/2018');
insert into imovel values (40,40,40,40,'AC','RUA NOVE DE ABRIL','300','50','70 MIL','40','NAO VENDIDO','16/03/2018');
insert into imovel values (41,41,41,41,'AC','RUA NOVE DE ABRIL','200','50','70 MIL','41','NAO VENDIDO','16/03/2018');
insert into imovel values (42,42,42,42,'AC','RUA NOVE DE ABRIL','300','50','70 MIL','42','NAO VENDIDO','16/03/2018');
insert into imovel values (43,43,43,43,'AC','RUA NOVE DE ABRIL','200','50','70 MIL','43','NAO VENDIDO','16/03/2018');
insert into imovel values (44,44,44,44,'AC','RUA NOVE DE ABRIL','300','50','70 MIL','44','NAO VENDIDO','16/03/2018');
insert into imovel values (45,45,45,45,'AC','RUA NOVE DE ABRIL','400','50','70 MIL','45','NAO VENDIDO','16/03/2018');
insert into imovel values (46,46,46,46,'AC','RUA NOVE DE ABRIL','200','50','70 MIL','46','NAO VENDIDO','16/03/2018');
insert into imovel values (47,47,47,47,'AC','RUA NOVE DE ABRIL','400','50','70 MIL','47','NAO VENDIDO','16/03/2018');
insert into imovel values (48,48,48,48,'AC','RUA NOVE DE ABRIL','200','50','70 MIL','48','NAO VENDIDO','16/03/2018');
insert into imovel values (49,49,49,49,'AC','RUA NOVE DE ABRIL','400','50','45 MIL','49','VENDIDO','16/03/2018');
insert into imovel values (50,50,50,50,'AC','RUA NOVE DE ABRIL','200','50','45 MIL','50','NAO VENDIDO','16/03/2018');
insert into imovel values (51,51,51,51,'AC','RUA NOVE DE ABRIL','400','50','45 MIL','51','VENDIDO','16/03/2018');
insert into imovel values (52,52,52,52,'AC','RUA NOVE DE ABRIL','200','50','45 MIL','52','NAO VENDIDO','16/03/2018');
--------------------------------------------------------------------------------------------------------------------------------
insert into oferta values(1,1,1,'10000','20/10/97');
insert into oferta values (2,2,2,'500','20/10/97');
insert into oferta values (3,3,3,'230000','20/10/97');
insert into oferta values (4,4,4,'230000','20/10/97');
insert into oferta values (5,5,5,'230000','20/10/97');
insert into oferta values (6,6,6,'70000','20/10/97');
insert into oferta values (7,7,7,'354000','20/10/97');
insert into oferta values (8,8,8,'675432','20/10/97');
insert into oferta values (9,9,9,'70000','20/10/97');
insert into oferta values (10,10,10,'5000000','20/10/97');
insert into oferta values (11,11,11,'675432','20/10/97');
insert into oferta values (12,12,12,'30000','20/10/97');
insert into oferta values (13,13,13,'500','20/10/97');
insert into oferta values (15,15,15,'30000','20/10/97');
insert into oferta values (16,16,16,'5000000','20/10/97');
insert into oferta values (17,17,17,'354000','20/10/97');
insert into oferta values (18,18,18,'30000','20/10/97');
insert into oferta values (19,19,19,'675432','20/10/97');
insert into oferta values (20,20,20,'5000000','20/10/97');
insert into oferta values (21,21,21,'70000','20/10/97');
insert into oferta values (22,22,22,'354000','20/10/97');
insert into oferta values (23,23,23,'230000','20/10/97');
insert into oferta values (24,24,24,'500','20/10/97');
insert into oferta values (25,25,25,'354000','20/10/97');
insert into oferta values (26,26,26,'098765','20/10/97');
insert into oferta values (27,27,27,'453167','20/10/97');
insert into oferta values (28,28,28,'500765','20/10/97');
insert into oferta values (29,29,29,'130000','20/10/97');
insert into oferta values (30,30,30,'675432','20/10/97');
insert into oferta values (31,31,31,'130000','20/10/97');
insert into oferta values (32,32,32,'500','20/10/97');
insert into oferta values (33,33,33,'70000','20/10/97');
insert into oferta values (34,34,34,'70000','20/10/97');
insert into oferta values (35,35,35,'5000000','20/10/97');
insert into oferta values (36,36,36,'675432','20/10/97');
insert into oferta values (37,37,37,'70000','20/10/97');
insert into oferta values (38,38,38,'500','20/10/97');
insert into oferta values (39,39,39,'64000','20/10/97');
insert into oferta values (40,40,40,'5000000','20/10/97');
insert into oferta values (41,41,41,'675432','20/10/97');
insert into oferta values (42,42,42,'130000','20/10/97');
insert into oferta values (43,43,43,'500','20/10/97');
insert into oferta values (44,44,44,'130000','20/10/97');
insert into oferta values (45,45,45,'70000','20/10/97');
insert into oferta values (45,45,45,'70000','20/10/97');
insert into oferta values (46,46,46,'500','20/10/97');
insert into oferta values (47,47,47,'5000000','20/10/97');
insert into oferta values (48,48,48,'30000','20/10/97');
insert into oferta values (49,49,49,'130000','20/10/97');
insert into oferta values (50,50,50,'5000000','20/10/97');
insert into oferta values (51,51,51,'70000','20/10/97');


---------------------------------------------------------------------------
---INSRINDO VALORES NA TABELA FIXA IMOVEL
insert into faixa_imovel values (1,'BAIXO','80000','900000');
insert into faixa_imovel values (2,'MEDIO','105001','180000');
insert into faixa_imovel values (3,'ALTO','180001','999999');
