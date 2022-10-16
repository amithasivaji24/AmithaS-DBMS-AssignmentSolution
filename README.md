Problem Statement:

A travel company TravelOnTheGo maintains the record of passengers and price to travel
between two cities, for bus types (Sitting and Sleeper).

1) You are required to create two tables PASSENGER and PRICE with the following
attributes and properties

PASSENGER
(Passenger_name varchar
 Category varchar
 Gender varchar
 Boarding_City varchar
 Destination_City varchar
 Distance int
 Bus_Type varchar
)

PRICE
(
 Bus_Type varchar
 Distance int
 Price int
 )
 
 
2) Insert the following data in the tables

Passenger_nam   Category  Gender  Boarding_City   Destination_City  Distance  Bus_Type
Sejal           AC        F       Bengaluru       Chennai           350       Sleeper
Anmol           Non-AC    M       Mumbai          Hyderabad         700       Sitting
Pallavi         AC        F       Panaji          Bengaluru         600       Sleeper
Khusboo         AC        F       Chennai         Mumbai            1500      Sleeper
Udit            Non-AC    M       Trivandrum      Panaji            1000      Sleeper
Ankur           AC        M       Nagpur          Hyderabad         500       Sitting
Hemant          Non-AC    M       Panaji          Mumbai            700       Sleeper
Manish          Non-AC    M       Hyderabad       Bengaluru         500       Sitting
Piyush          AC        M       Pune            Nagpur            700       Sitting


Bus_Type  Distance  Price
Sleeper   350       770
Sleeper   500       1100
Sleeper   600       1320
Sleeper   700       1540
Sleeper   1000      2200
Sleeper   1200      2640
Sleeper   1500      2700
Sitting   500       620
Sitting   600       744
Sitting   700       868
Sitting   1000      1240
Sitting   1200      1488
Sitting   1500      1860


Write queries for the following:

3) How many females and how many male passengers travelled for a minimum distance of
600 KM s?
4) Find the minimum ticket price for Sleeper Bus.
5) Select passenger names whose names start with character 'S'
6) Calculate price charged for each passenger displaying Passenger name, Boarding City,
Destination City, Bus_Type, Price in the output
7) What are the passenger name/s and his/her ticket price who travelled in the Sitting bus
for a distance of 1000 KM s
8) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to
Panaji?
9) List the distances from the "Passenger" table which are unique (non-repeated
distances) in descending order.
10) Display the passenger name and percentage of distance travelled by that passenger
from the total distance travelled by all passengers without using user variables
11) Display the distance, price in three categories in table Price
a) Expensive if the cost is more than 1000
b) Average Cost if the cost is less than 1000 and greater than 500
c) Cheap otherwise
