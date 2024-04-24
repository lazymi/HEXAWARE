CREATE DATABASE TICKET_BOOKING_SYSTEM;
USE TICKET_BOOKING_SYSTEM;


CREATE TABLE VENU(VENUE_ID INT PRIMARY KEY AUTO_INCREMENT,VENUE_NAME VARCHAR(20),ADDRESS VARCHAR(20));
CREATE TABLE EVENT_TB(EVENT_ID INT PRIMARY KEY AUTO_INCREMENT,EVENT_NAME VARCHAR(20),EVENT_DATE DATE,EVENT_TIME TIME,VENUE_ID INT,TOT_SEATS INT,AVAIL_SEATS INT,TKT_PRICE DECIMAL(12,2),EVENT_TYPE VARCHAR(20),BOOKING_ID INT);
CREATE TABLE CUSTOMER(CUST_ID INT PRIMARY KEY AUTO_INCREMENT,CUST_NAME VARCHAR(20),EMAIL VARCHAR(20),PH_NO VARCHAR(10));
CREATE TABLE BOOKING(BOOKING_ID INT PRIMARY KEY,CUST_ID INT,EVENT_ID INT,NUM_TICKETS INT,TOT_COST DECIMAL(12,2),BOOKING_DATE DATE);

ALTER TABLE EVENT_TB ADD CONSTRAINT FOREIGN KEY(VENUE_ID) REFERENCES VENU(VENUE_ID);
ALTER TABLE EVENT_TB ADD CONSTRAINT FOREIGN KEY(BOOKING_ID) REFERENCES BOOKING(BOOKING_ID);

ALTER TABLE BOOKING ADD CONSTRAINT FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(CUST_ID);
ALTER TABLE BOOKING ADD CONSTRAINT FOREIGN KEY(EVENT_ID) REFERENCES EVENT_TB(EVENT_ID);
ALTER TABLE CUSTOMER MODIFY COLUMN EMAIL VARCHAR(30);
ALTER TABLE EVENT_TB MODIFY COLUMN EVENT_NAME VARCHAR(45);

-- TASK - 2
-- 1.Write a SQL query to insert  10 sample records into each table.
-- Insert sample records into the Venue table
INSERT INTO VENU
VALUES
    (1, 'Stadium A', '111 Stadium St'),
    (2, 'Concert Arena B', '222 Music Ave'),
    (3, 'Theater C', '333 Drama St'),
    (4, 'Movie House D', '444 Film Ave'),
    (5, 'Sports Complex E', '555 Sport St'),
    (6, 'Concert Hall F', '666 Music Ave'),
    (7, 'Theater G', '777 Drama St'),
    (8, 'Movie Theater H', '888 Film Ave'),
    (9, 'Stadium I', '999 Stadium St'),
    (10, 'Playhouse J', '1010 Drama St');
   

-- Insert sample records into the Event table
INSERT INTO EVENT_TB (EVENT_ID,EVENT_NAME,EVENT_DATE,EVENT_TIME,VENUE_ID,TOT_SEATS,AVAIL_SEATS,TKT_PRICE,EVENT_TYPE)
VALUES
    (1, 'Cup Final', '2024-05-10', '18:00:00', 1, 50000, 50000, 2000.00, 'Sports'),
    (2, 'Zest Rock Concert', '2024-06-15', '20:00:00', 2, 10000, 10000, 100.00, 'Concert'),
    (3, 'Theater Screening', '2024-09-20', '15:30:00', 3, 500, 500, 500.00, 'Movie'),
    (4, 'Action Movie Premiere', '2024-03-25', '19:00:00', 4, 300, 0, 520.00, 'Movie'),
    (5, 'Soccer Match', '2024-09-05', '17:30:00', 5, 20000, 20000, 1000.00, 'Sports'),
    (6, 'Pop Concert', '2024-04-12', '19:00:00', 6, 8000, 8000, 920.00, 'Concert'),
    (7, 'Xavier Drama ', '2024-11-18', '21:00:00', 7, 400, 400, 500.00, 'Movie'),
    (8, 'Sci-Fi Movie Screening', '2024-02-22', '18:30:00', 8, 200, 0, 650.00, 'Movie'),
    (9, 'World Cup', '2024-01-15', '12:00:00', 9, 15000, 15000, 2500.00, 'Sports'),
    (10, 'Classical Concert', '2024-12-28', '10:00:00', 10, 6000, 6000, 800.00, 'Concert'),
	(11, 'BTS Concert','2025-02-15','10:00:00',2,10000,10000,1000.00,'Concert'),
    (12, 'Vernon Premiere','2025-04-19','13:50:00',8,200,150,500.00,'Movie'),
    (13,'Zoe Musical','2025-07-25','16:30:00',6,8000,5000,1050.00,'Concert'),
    (14,'Football Match','2024-08-20','17:30:00',1,50000,30000,1200.00,'Sports'),
    (15,'Harry Potter:The Cursed Child','2024-11-19','11:00:00',7,400,200,740.00,'Movie'),
    (16,'Olympics','2024-05-22','12:45:00',5,20000,9000,850.00,'Sports'),
    (17,'Classical Dance','2024-05-03','10:30:00',10,6000,6000,500.00,'Concert');
 
-- Insert sample records into the Customer table
INSERT INTO CUSTOMER (CUST_ID,CUST_NAME,EMAIL,PH_NO)
VALUES
    (1, 'John Doe', 'john.doe@gmail.com', '1234567890'),
    (2, 'Jane Smith', 'jane.smith@gmail.com', '9876543210'),
    (3, 'Michael Johnson', 'michael.johnson@gmail.com', '1112223000'),
    (4, 'Emily Brown', 'emily.brown@gmail.com', '4445556666'),
    (5, 'David Wilson', 'david.wilson@gmail.com', '7778889000'),
    (6, 'Sarah Lee', 'sarah.lee@gmail.com', '1231231000'),
    (7, 'Chris Taylor', 'chris.taylor@gmail.com', '3213214321'),
    (8, 'Amanda White', 'amanda.white@gmail.com', '5554443000'),
    (9, 'Matthew Martinez', 'matthew.martinez@gmail.com', '9998887007'),
    (10, 'Jennifer Garcia', 'jennifer.garcia@gmail.com', '6667778880'),
    (11,'Britney Spears','britney.spears@gmail.com','9254681723');

-- Insert sample records into the Booking table
INSERT INTO BOOKING 
VALUES
    (11, 1, 1, 2, 4000.00, '2024-05-05'),
    (12, 2, 2, 10, 1000.00, '2024-06-07'),
    (13, 3, 3, 4, 2000.00, '2024-09-17'),
    (14, 4, 4, 6, 3120.00, '2024-03-20'),
    (15, 5, 5, 2, 2000.00, '2024-08-30'),
    (16, 6, 6, 5, 4600.00, '2024-04-01'),
    (17, 7, 7, 5, 2500.00, '2024-11-12'),
    (18, 8, 8, 2, 1300.00, '2024-02-20'),
    (19, 9, 9, 7, 19600.00, '2024-01-10'),
    (20, 10, 10, 100, 8000.00, '2024-12-22'),
    (21,2,11,15,15000.00,'2024-12-25'),
    (22,4,12,20,10000.00,'2025-02-12'),
    (23,6,13,3,3150.00,'2025-06-22'),
    (24,8,14,7,8400.00,'2024-08-01'),
    (25,10,15,5,3700.00,'2024-10-25'),
    (26,5,16,8,6800.00,'2024-04-12');
    
UPDATE EVENT_TB SET BOOKING_ID=11 WHERE EVENT_ID=1;
UPDATE EVENT_TB SET BOOKING_ID=12 WHERE EVENT_ID=2;
UPDATE EVENT_TB SET BOOKING_ID=13 WHERE EVENT_ID=3;
UPDATE EVENT_TB SET BOOKING_ID=14 WHERE EVENT_ID=4;
UPDATE EVENT_TB SET BOOKING_ID=15 WHERE EVENT_ID=5;
UPDATE EVENT_TB SET BOOKING_ID=16 WHERE EVENT_ID=6;
UPDATE EVENT_TB SET BOOKING_ID=17 WHERE EVENT_ID=7;
UPDATE EVENT_TB SET BOOKING_ID=18 WHERE EVENT_ID=8;
UPDATE EVENT_TB SET BOOKING_ID=19 WHERE EVENT_ID=9;
UPDATE EVENT_TB SET BOOKING_ID=20 WHERE EVENT_ID=10;
UPDATE EVENT_TB SET BOOKING_ID=21 WHERE EVENT_ID=11;
UPDATE EVENT_TB SET BOOKING_ID=22 WHERE EVENT_ID=12;
UPDATE EVENT_TB SET BOOKING_ID=23 WHERE EVENT_ID=13;
UPDATE EVENT_TB SET BOOKING_ID=24 WHERE EVENT_ID=14;
UPDATE EVENT_TB SET BOOKING_ID=25 WHERE EVENT_ID=15;
UPDATE EVENT_TB SET BOOKING_ID=26 WHERE EVENT_ID=16;


SELECT * FROM VENU;
-- 2.Write a SQL query to list all Events.
SELECT * FROM EVENT_TB;
SELECT * FROM CUSTOMER;
SELECT * FROM BOOKING;

-- 3.Write a SQL query to select events with available tickets.
SELECT * FROM EVENT_TB WHERE AVAIL_SEATS>0;

-- 4. Write a SQL query to select events name partial match with ‘cup’.
SELECT * FROM EVENT_TB WHERE event_name LIKE '%cup%';

-- 5. Write a SQL query to select events with ticket price range is between 1000 to 2500.
SELECT * FROM EVENT_TB WHERE TKT_PRICE BETWEEN 1000 AND 2500;

-- 6. Write a SQL query to retrieve events with dates falling within a specific range.
SELECT * FROM EVENT_TB WHERE EVENT_DATE BETWEEN '2024-06-01' AND '2024-12-15';

-- 7. Write a SQL query to retrieve events with available tickets that also have "Concert" in their name.
SELECT * FROM EVENT_TB WHERE AVAIL_SEATS >0 AND EVENT_NAME LIKE '%Concert%';

-- 8. Write a SQL query to retrieve users in batches of 5, starting from the 6th user.
SELECT * FROM CUSTOMER LIMIT 5 OFFSET 5;

-- 9. Write a SQL query to retrieve bookings details contains booked no of ticket more than 4.
SELECT * FROM BOOKING WHERE NUM_TICKETS >4;

-- 10. Write a SQL query to retrieve customer information whose phone number end with ‘000’
SELECT * FROM CUSTOMER WHERE PH_NO LIKE '%000%';

-- 11. Write a SQL query to retrieve the events in order whose seat capacity more than 15000.
SELECT * FROM EVENT_TB WHERE TOT_SEATS>15000 ORDER BY TOT_SEATS ASC;

-- 12. Write a SQL query to select events name not start with ‘x’, ‘y’, ‘z’
SELECT EVENT_ID,EVENT_NAME FROM EVENT_TB WHERE EVENT_NAME NOT LIKE 'X%' AND EVENT_NAME NOT LIKE 'Y%' AND EVENT_NAME NOT LIKE 'Z%';

