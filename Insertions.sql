INSERT into venue VALUES ('1','AA Center','123 Kelsey lane','12000');
INSERT into venue VALUES ('2','Merriweather','48 Weary lane','1000');
INSERT into venue VALUES ('3','House of Blues','26 Evergreen way','15000');
Insert into venue VALUES ('4','in the Venue','42 Main Street','500');

INSERT into performer VALUES ('Wilco','Rock');
INSERT into performer VALUES ('Pavement','Rock');
INSERT into performer VALUES ('Dinosaur Jr','Rock');
INSERT into performer VALUES ('Art Tatum','Jazz');

INSERT into add_on VALUES ('1','Parking','45.00');
INSERT into add_on VALUES ('2','Food Package','20.00');

INSERT into ticket_class VALUES ('VIP','45.00');
INSERT into ticket_class VALUES ('NORMAL','20.00');
INSERT into ticket_class VALUES ('FRONTROW', '30.00');

INSERT INTO event VALUES('1', 'concert 1', 'concert', '2019-6-02', '8:45 PM', '60', '1', 'Pavement', '21', 'music', '2019-5-20' );
INSERT INTO event VALUES('2', 'concert 2', 'concert', '2019-7-03', '2:45 PM', '60', '2', 'Art Tatum', '18', 'music', '2019-6-20' );
INSERT INTO event VALUES('3', 'concert 3', 'concert', '2019-8-04', '9:45 PM', '90', '3', 'Dinosaur Jr', '21', 'music', '2019-7-20' );
INSERT INTO event VALUES('4', 'concert 4', 'concert', '2019-6-05', '3:45 PM', '60', '4', 'Wilco', '18', 'music', '2019-5-20' );
INSERT INTO event VALUES('5', 'concert 5', 'concert', '2019-7-06', '10:45 PM', '90', '1', 'Pavement', '21', 'music', '2019-6-20' );
INSERT INTO event VALUES('6', 'concert 6', 'concert', '2019-8-07', '2:45 PM', '30', '2', 'Dinosaur Jr', NULL, 'music', '2019-7-20' );
INSERT INTO event VALUES('7', 'concert 7', 'concert', '2019-6-14', '1:45 PM', '45', '3', 'Pavement', NULL, 'music', '2019-5-20' );
INSERT INTO event VALUES('8', 'concert 8', 'concert', '2019-7-15', '2:45 PM', '60', '4', 'Wilco', NULL, 'music', '2019-6-20' );
INSERT INTO event VALUES('9', 'concert 9', 'concert', '2019-8-16', '1:45 PM', '60', '1', 'Dinosaur Jr', NULL, 'music', '2019-7-20' );
INSERT INTO event VALUES('10', 'concert 10', 'concert', '2019-6-17', '9:45 PM', '90', '2', 'Art Tatum', '21', 'music', '2019-5-20' );
INSERT INTO event VALUES('11', 'concert 11', 'concert', '2019-7-18', '9:45 PM', '120', '3', 'Pavement', '21', 'music', '2019-6-20' );
INSERT INTO event VALUES('12', 'concert 12', 'concert', '2019-8-19', '7:45 PM', '70', '4', 'Wilco', '21', 'music', '2019-7-20' );

INSERT INTO membership_status VALUES ('Bronze', '5');
INSERT INTO membership_status VALUES ('Silver', '15');
INSERT INTO membership_status VALUES ('Gold', '30');

INSERT INTO member VALUES ('1', 'John', 'Bronze', '123 Street', '214-793-0001', '1997-2-16', 'Email');
INSERT INTO member VALUES ('2', 'Bob', 'Bronze', '234 Street', '214-793-2020', '1983-5-13', 'Email');
INSERT INTO member VALUES ('3', 'Will', 'Silver', '456 Drive', '214-546-0040', '1990-6-9', 'Mail');
INSERT INTO member VALUES ('4', 'Sarah', 'Silver', '789 Lane', '972-546-3456', '2000-10-10', 'Mail');
INSERT INTO member VALUES ('5', 'Megan', 'Gold', '007 Way', '469-793-1839', '1997-2-16', 'Pigeon');
INSERT INTO member VALUES ('6', 'Carol', 'Gold', '1223 Brick Drive', '809-456-1449', '1979-7-12', 'Mail');
INSERT INTO member VALUES ('7', 'Don', 'Bronze', '1463 Dog Way', '408-445-1900', '2001-4-8', 'Email');
INSERT INTO member VALUES ('8', 'Derek', 'Bronze', '156 Cat Lane', '972-478-1490', '1997-7-16', 'Email');
INSERT INTO member VALUES ('9', 'Earl', 'Silver', '1456 Street Drive', '214-793-0450', '1977-3-16', 'Mail');
INSERT INTO member VALUES ('10', 'Jordan', 'Gold', '1909 Foutain Ave', '607-211-6870', '1999-4-19', 'Mail');

INSERT INTO ticket VALUE ('1','VIP','1','1','1','1','1','1','1','400.00');
INSERT INTO ticket VALUE ('2','VIP','1','1','1','1','2','2','2','400.00');
INSERT INTO ticket VALUE ('3','NORMAL','1','2','2','2','3','3','3','45.00');
INSERT INTO ticket VALUE ('4','FRONTROW','1','2','2','2','4','4','4','120.00');
INSERT INTO ticket VALUE ('5','NORMAL','1','3','3','3','5','5','5','45.00');
INSERT INTO ticket VALUE ('6','NORMAL','1','3','3','3','6','6','6','45.00');
INSERT INTO ticket VALUE ('7','VIP','1','4','4','4','7','7','7','400.00');
INSERT INTO ticket VALUE ('8','FRONTROW','1','5','4','4','8','8','8','120.00');
INSERT INTO ticket VALUE ('9','FRONTROW','2','5','5','1','9','9','9','120.00');
INSERT INTO ticket VALUE ('10','NORMAL','1','6','5','1','10','10','10','45.00');
INSERT INTO ticket VALUE ('11','VIP','1','6','6','2','1','1','1','400.00');
INSERT INTO ticket VALUE ('12','VIP','2','7','6','2','2','2','2','400.00');
INSERT INTO ticket VALUE ('13','NORMAL','2','7','7','3','3','3','3','45.00');
INSERT INTO ticket VALUE ('14','FRONTROW','1','8','7','3','4','4','4','120.00');
INSERT INTO ticket VALUE ('15','NORMAL','2','8','8','4','5','5','5','45.00');
INSERT INTO ticket VALUE ('16','NORMAL','1','9','8','4','6','6','6','45.00');
INSERT INTO ticket VALUE ('17','VIP','1','9','9','1','7','7','7','400.00');
INSERT INTO ticket VALUE ('18','FRONTROW','1','10','9','1','8','8','8','120.00');
INSERT INTO ticket VALUE ('19','FRONTROW','1','10','10','2','9','9','9','120.00');
INSERT INTO ticket VALUE ('20','NORMAL','1','1','10','2','10','10','10','45.00');
INSERT INTO ticket VALUE ('21','VIP','2','2','11','3','7','7','7','400.00');
INSERT INTO ticket VALUE ('22','FRONTROW','2','3','11','3','8','8','8','120.00');
INSERT INTO ticket VALUE ('23','FRONTROW','2','4','12','4','9','9','9','120.00');
INSERT INTO ticket VALUE ('24','NORMAL','2','5','12','4','10','10','10','45.00');
