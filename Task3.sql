use games;

create table game_details(SLNO int not null unique,game_name varchar(35) not null unique,size_of_the_game int not null check (size_of_the_game>=10),game_developer varchar(30) not null default 'UBIOFT',game_prize int not null unique);
alter  table game_details
 
add constraint game_details primary key (SLNO,game_namee);
 
insert into game_details values(1,'Assassin creed',55,'UBISOFT',1750);
insert into game_details values(2,'The crew 2',75,'UBISOFT',3550);
insert into game_details values(3,'The God of War ',115,'Unreal Engine',4500);
insert into game_details values(4,'Need For Speed',25,'EA',2560);
insert into game_details values(5,'Call Of Duty',45,'Activation',5000);
insert into game_details values(6,'Prince Of Percia',15,'UBISOFT',1550);
insert into game_details values(7,'Little Nightmares 2',35,'Activation',564);
insert into game_details values(8,'AssassinCreed4BlackFlag',75,'UBISOFT',1350);
insert into game_details values(9,'The Cops',25,'Unreal Engine',500);
insert into game_details values(10,'Watch Dog London',15,'UBISOFT',7550);
insert into game_details values(11,'Far Cry',65,'UBISOFT',950);
insert into game_details values(12,'The matirx Awakens',45,'Unreal Engine',2550);
insert into game_details values(13,'Vector',2,'Unity',2550);
insert into game_details values(14,'PUBG',75,'Tencent Game',550);
insert into game_details values(15,'Ninja girl',75,'Krafton',2350);

create table olympic(id int,game_type varchar(40),player_name varchar(40),country varchar(20),no_of_players bigint,no_of_teams bigint,no_of_medals int,medal_type varchar(20),jersey_no int,winning_prize_amount bigint);

select * from olympic;

insert into olympic values(1,'Archery','Tarundeep Rai','India',2,4,6,'Gold',88,7500000);
insert into olympic values(2,'BatMinton','PV Sindhu','India',3,5,8,'Gold',45,7500000);
insert into olympic values(3,'Javlin','Neeraj Chopra','India',42,5,9,'Gold',89,7500000);
insert into olympic values(4,'Boxing','Mary Kom','India',22,7,3,'Silver',19,4000000);
insert into olympic values(5,'BasketBall','Avinash Rao','India',12,4,12,'Bronze',79,2500000);
insert into olympic values(6,'Equestrain','Fouaad Mizra','India',22,8,97,'Silver',99,2500000);
insert into olympic values(7,'Fencing','Bhavani Devi','India',2,3,7,'Bronze',55,7500000);
insert into olympic values(8,'Golf','Udyan Mane','India',32,0,2,'Gold',44,1200000);
insert into olympic values(9,'Javlin','Neeraj Chopra','India',42,5,9,'Gold',89,7500000);
insert into olympic values(10,'Javlin','Neeraj Chopra','India',42,5,9,'Gold',89,7500000);
insert into olympic values(11,'Gymnatics','Manpreet SIngh','India',12,6,78,'Bronze',109,2500000);
insert into olympic values(12,'Judo','Sushila Devi','India',2,4,9,'Gold',189,7500000);
insert into olympic values(13,'Rowing','Arjun Jat','India',02,4,56,'Silver',119,4000000);
insert into olympic values(14,'sailing','Nethra Kumrarain','India',3,4,19,'Gold',201,7500000);
insert into olympic values(15,'Shooting','Manu Bhakar','India',1,3,9,'Silver',890,4000000);
insert into olympic values(16,'Swimming','Sajan','India',1,4,11,'Gold',69,7500000);
insert into olympic values(17,'Table Tennies','Sharath Kamal','India',2,14,13,'Gold',59,7500000);
insert into olympic values(18,'Tennies','Sania Mirza','India',2,14,11,'Gold',169,7500000);
insert into olympic values(19,'Weight Lifting','Mirabai Chanu','India',1,2,12,'Silver',49,4000000);
insert into olympic values(20,'Wrestling','Sonam Malik','India',1,4,14,'Bronze',49,2500000);
insert into olympic values(21,'Swimming','Rayssa Leal','Brazil',1,14,12,'Silver',69,4000000);
insert into olympic values(22,'Swimming','Katey Ladeky','USA',1,4,01,'Gold',68,7500000);
insert into olympic values(23,'Gymnatics','Carlos Edriel','Philippenes',1,40,12,'Gold',88,7500000);
insert into olympic values(24,'USA','Serena Wiliams','India',1,14,12,'Bronze',69,2500000);
insert into olympic values(25,'Climbing','Natalia Gross man','USA',1,2,51,'Silver',79,4000000);
insert into olympic values(26,'Skate Boarding','Yuuto','Japan',2,3,10,'Gold',12,7500000);
insert into olympic values(27,'Trythlon','Flora Duffy','Indonesia',4,2,12,'Bronze',44,2500000);
insert into olympic values(28,'Athlets','Armand Duplanitis','Swtizerland',7,2,11,'Silver',179,4000000);
insert into olympic values(29,'Tennis','Serena','UnitedstateofAmerica',4,8,11,'Bronze',39,7500000);
insert into olympic values(30,'Surfing','Carissa More','USA',1,4,11,'Gold',95,7500000);
insert into olympic values(31,'Sport Climbing','Tomoa Narasaki','Japan',1,2,10,'Gold',9,7500000);
insert into olympic values(32,'Athlets','Shelly-Ann','Jamelia',2,34,12,'Silver',67,4000000);
insert into olympic values(33,'Athlets','Yaroslava','America',10,2,13,'Gold',59,7500000);
insert into olympic values(34,'Foot Ball','Elin Rubennson','Swtizerland',1,4,13,'silver',59,4000000);
insert into olympic values(35,'Surfing','Flipe Toledo','Brazeel',1,2,51,'Silver',12,4000000);
insert into olympic values(36,'Surgfing','Carissa Moore','USA',4,5,11,'Bronze',349,7500000);
insert into olympic values(37,'Athlets','Eluid Kipchoge','Kennya',1,14,12,'Silver',49,4000000);
insert into olympic values(38,'Race WAlk','Priyanka Goswami','India',2,3,11,'Gold',78,7500000);
insert into olympic values(39,'Steeple Chase','Aviansh Sable','India',3,56,12,'Silver',39,4000000);
insert into olympic values(40,'Discus Throw','Seema Punia','India',4,2,18,'Gold',88,7500000);

select game_details.game_name,olympic.no_of_teams from game_details inner join olympic on game_details.game_name = olympic.no_of_teams;

select game_details.game_name,olympic.no_of_teams from game_details left join olympic on game_details.game_name = olympic.no_of_teams order by game_details.game_name;


select game_details.game_name,olympic.no_of_teams from game_details right join olympic on game_details.game_name = olympic.no_of_teams order by game_details.game_name;

