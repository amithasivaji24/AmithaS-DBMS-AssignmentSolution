#1) Creating DB and tables

create database if not exists `passengers-record`;

use `passengers-record`;
drop table passenger;
create table if not exists `PASSENGER`
(`Passenger_name` varchar(25),
`Category` varchar(10),
`Gender` char,
`Boarding_City` varchar(25),
`Destination_City` varchar(25),
`Distance` int,
`Bus_Type` varchar(15),
foreign key(`Bus_Type`, `Distance`) references price(`Bus_Type`, `Distance`)
);

create table if not exists `PRICE`
(
`Bus_Type` varchar(15),
`Distance` int,
`Price` int,
primary key(`Bus_Type`, `Distance`)
);

#2) Inserting records into tables

insert into PASSENGER values("Sejal", "AC", 'F', "Bengaluru", "Chennai", 350, "Sleeper");
insert into PASSENGER values("Anmol", "Non-AC", 'M', "Mumbai", "Hyderabad", 700, "Sitting");
insert into PASSENGER values("Pallavi", "AC", 'F', "Panaji", "Bengaluru", 600, "Sleeper");
insert into PASSENGER values("Khusboo", "AC", 'F', "Chennai", "Mumbai", 1500, "Sleeper");
insert into PASSENGER values("Udit", "Non-AC", 'M', "Trivandrum", "panaji", 1000, "Sleeper");
insert into PASSENGER values("Ankur", "AC", 'M', "Nagpur", "Hyderabad", 500, "Sitting");
insert into PASSENGER values("Hemant", "Non-AC", 'M', "panaji", "Mumbai", 700, "Sleeper");
insert into PASSENGER values("Manish", "Non-AC", 'M', "Hyderabad", "Bengaluru", 500, "Sitting");
insert into PASSENGER values("Piyush", "AC", 'M', "Pune", "Nagpur", 700, "Sitting");


insert into PRICE values("Sleeper", 350, 770);
insert into PRICE values("Sleeper", 500, 1100);
insert into PRICE values("Sleeper", 600, 1320);
insert into PRICE values("Sleeper", 700, 1540);
insert into PRICE values("Sleeper", 1000, 2200);
insert into PRICE values("Sleeper", 1200, 2640);
insert into PRICE values("Sleeper", 1500, 2700);
insert into PRICE values("Sitting", 500, 620);
insert into PRICE values("Sitting", 600, 744);
insert into PRICE values("Sitting", 700, 868);
insert into PRICE values("Sitting", 1000, 1240);
insert into PRICE values("Sitting", 1200, 1488);
insert into PRICE values("Sitting", 1500, 1860);

#3)
select passenger.gender, count(passenger.gender) from passenger where passenger.distance >= 600 group by passenger.gender;

#4)
select min(price.price) from price where price.bus_type = "Sleeper";

#5)
select passenger.passenger_name from passenger where passenger_name like 'S%';

#6)
select passenger.passenger_name, passenger.boarding_city, passenger.destination_city, price.price from 
	passenger, price where passenger.bus_type = price.bus_type and passenger.distance = price.distance;
    
#7)
select passenger.passenger_name, price.price from passenger inner join price on
 passenger.bus_type = price.bus_type and price.distance = passenger.distance and price.bus_type = "Sitting" and passenger.distance = 1000;
 
#8)
select price.bus_type, price.price from price inner join passenger on
	price.distance = passenger.distance where passenger.passenger_name = "Pallavi" and price.bus_type IN ("Sleeper","Sitting");
    
#9)
select passenger.distance from passenger where passenger.distance group by passenger.distance having count(passenger.distance)=1 order by passenger.distance desc;

#10)
select passenger.passenger_name, (passenger.distance/(select SUM(passenger.distance) from passenger))*100 AS distance_percentage from passenger; 

#11)
DELIMITER $$
use `passengers_record`; $$


select price.distance, price.price,
CASE
WHEN price.price > 1000 THEN "Expensive"
WHEN 500 < price.price < 1000 THEN "Average Cost"
ELSE "Cheap" 
END AS Price_group
from price;

END $$