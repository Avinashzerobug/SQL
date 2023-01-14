create database games;

use games;

create table game_details(SLNO int,game_name varchar(35),size_of_the_game int,game_developer varchar(30),game_prize int);

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


select * from game_details where size_of_the_game > 50;
select * from game_details where game_developer= 'ubisoft';
select * from game_details where size_of_the_game < 50;
select * from game_details where game_developer= 'Activation';
select * from game_details where game_prize = 5000;
select * from game_details where game_prize > 5000;
select * from game_details where game_prize < 5000;
select * from game_details where game_developer= 'unreal engine';
select * from game_details where game_name = 'Assassin creed';
select * from game_details where size_of_the_game = 45;

select * from game_details where game_developer = 'ubisoft' and size_of_the_game < 30;
select * from game_details where game_prize > 5000 and game_developer = 'activation';
select * from game_details where game_name = 'god of war' and game_developer = 'ea';
select * from game_details where game_developer = 'EA' and game_name = 'Cricket';
select * from game_detaisl where game_prize<1000 and size_of_the_game = 35;

select * from game_details where game_developer = 'Activation' or size_of_the_game < 30;
select * from game_details where game_prize > 2000 or game_developer = 'activation';
select * from game_details where game_name = 'far cry' or game_developer = 'ea';
select * from game_details where game_developer = 'EA' or game_name = 'Assassin creed';
select * from game_detaisl where game_prize<1000 or size_of_the_game = 35;

update game_details set game_name = 'The Division',game_prize = 4500 where size_of_the_game = 25;
update game_details set game_name = 'Skull and Bone',game_prize = 4500 where size_of_the_game = 125;
update game_details set game_name = 'Tom Clancy',game_prize = 4500 where size_of_the_game = 55;
update game_details set game_name = 'Ghost Reacon',game_prize = 4500 where size_of_the_game = 10;
update game_details set game_name = 'For Honor',game_prize = 4500 where size_of_the_game = 45;
update game_details set game_name = 'BeyondGoodandEvil2',game_prize = 4500 where size_of_the_game = 95;
update game_details set game_name = 'Riders Republic',game_prize = 4500 where size_of_the_game = 05;
update game_details set game_name = 'Hyoer Scape',game_prize = 4500 where size_of_the_game = 45;
update game_details set game_name = 'Just Dance',game_prize = 4500 where size_of_the_game = 35;
update game_details set game_name = 'The Viking',game_prize = 4500 where size_of_the_game = 55;



