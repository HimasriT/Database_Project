USE wonder_library;

INSERT INTO PERSON VALUES ('P001', 'Tottempudi', 'Sekhar', 'Chandra', '1991-10-22', 'M', '222 W Campbell Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P002', 'Hima', 'Sri', 'Tipirineni', '1997-06-08', 'F','2218 W Campbell Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P003', 'Ram', 'Koteshwar', 'Kandimala','1996-06-17', 'M', '190 W Renner Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P004', 'Rama', 'Rao', 'M', '2000-04-26','M', '222 N Garland Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P005', 'Naga', 'Sundar', 'Mysore', '1995-04-29','M', '222 W Campbell Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P006', 'Hamsini', 'S', 'Paladugu', '1998-05-25','F','1234 North Side Apartments Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P007', 'Harsha', 'Shri', 'Gandani','2000-06-05','F','387 Frankford Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P008', 'Mani', 'Sri', 'Henry','1999-02-27','M','756 Chameli Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P009', 'Anusha', 'Sai', 'Sharma','1975-08-01','F', '903 Rutherford Road, Richardson, Texas');
INSERT INTO PERSON VALUES ('P010', 'Hima', 'Bindu', 'Gutta','1989-12-06','F', '5634 Franklyn Road, Richardson, Texas');

INSERT INTO CATEGORY VALUES (1);
INSERT INTO CATEGORY VALUES (2);
INSERT INTO CATEGORY VALUES (3);

INSERT INTO BOOK VALUES ('B001', 'Harry Potter - 1', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B002', 'Harry Potter - 2', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B003', 'Harry Potter - 3', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B004', 'Harry Potter - 4', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B005', 'Harry Potter - 5', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B006', 'Harry Potter - 6', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B007', 'Harry Potter - 7', 'Fiction', 1);
INSERT INTO BOOK VALUES ('B008', 'Half Girlfriend', 'Fantasy', 2);
INSERT INTO BOOK VALUES ('B009', '2 States', 'Fantasy', 2);
INSERT INTO BOOK VALUES ('B010', 'Amar Chitra Katha', 'History', 3);
INSERT INTO BOOK VALUES ('B011', 'Ramayana', 'History', 3);

INSERT INTO WRITES VALUES ('B001','A001');
INSERT INTO WRITES VALUES ('B002','A001');
INSERT INTO WRITES VALUES ('B003','A001');
INSERT INTO WRITES VALUES ('B004','A001');
INSERT INTO WRITES VALUES ('B005','A001');
INSERT INTO WRITES VALUES ('B006','A001');
INSERT INTO WRITES VALUES ('B007','A001');
INSERT INTO WRITES VALUES ('B008','A002');
INSERT INTO WRITES VALUES ('B009','A002');
INSERT INTO WRITES VALUES ('B010','A003');
INSERT INTO WRITES VALUES ('B011','A004');

INSERT INTO PUBLISHER VALUES ('PB001', 'J K Rowling Publishers',1998, '2000 West Cambridge, California');
INSERT INTO PUBLISHER VALUES ('PB002', 'Chetan Bhagat Publishers', 1991, '2000 Missori street, New Delhi');
INSERT INTO PUBLISHER VALUES ('PB003', 'Anant Pai Publishers', 1993,'2023 Chanda Nagar, Hyderabad');
INSERT INTO PUBLISHER VALUES ('PB004', 'Valmiki Publishers',1883, '2023 Gachibowli, Hyderabad');

INSERT INTO AUTHOR VALUES ('A001', 'J K Rowling', 'Comtemporary', '15');
INSERT INTO AUTHOR VALUES ('A002', 'Chetan Bhagat', 'Modern', '10');
INSERT INTO AUTHOR VALUES ('A003', 'Anant Pai', 'Morality', '20');
INSERT INTO AUTHOR VALUES ('A004', 'Valmiki', 'Epic', '30');

INSERT INTO MEMBER VALUES ('P001', '2022-04-25', 'Gold');
INSERT INTO MEMBER VALUES ('P002', '2020-06-27', 'Gold');
INSERT INTO MEMBER VALUES ('P003', '2022-01-17', 'Silver');
INSERT INTO MEMBER VALUES ('P004', '2022-04-29', 'Silver');
INSERT INTO MEMBER VALUES ('P005', '2021-05-02', 'Gold');
INSERT INTO MEMBER VALUES ('P006', '2021-06-03', 'Gold');
INSERT INTO MEMBER VALUES ('P007', '2019-06-10', 'Silver');
INSERT INTO MEMBER VALUES ('P009', '2020-07-19', 'Silver');
INSERT INTO MEMBER VALUES ('P008', '2021-01-03', 'Silver');

INSERT INTO MEMBER VALUES ('P222', '2018-01-03', 'Gold');
INSERT INTO MEMBER VALUES ('P910', '2021-10-13', 'Gold');
INSERT INTO MEMBER VALUES ('P122', '2020-01-01', 'Silver');
INSERT INTO MEMBER VALUES ('P144', '2017-11-14', 'Gold');
INSERT INTO MEMBER VALUES ('P129', '2020-12-03', 'Silver');


INSERT INTO SILVER VALUES ('P003');
INSERT INTO SILVER VALUES ('P004');
INSERT INTO SILVER VALUES ('P007');
INSERT INTO SILVER VALUES ('P009');
INSERT INTO SILVER VALUES ('P008');
INSERT INTO SILVER VALUES ('P122');
INSERT INTO SILVER VALUES ('P129');

INSERT into PERSON values('P421', 'Abhi','A','Ram','1998-04-16','M','The Pearl 1632');
INSERT into PERSON values('P840', 'Venky','H','Temi','1997-10-27','M','The Pearl 1632');
INSERT into PERSON values('P210', 'Sai','Venky','Palatla','1997-03-08','M','Cortland Canyon Creek 1327');
INSERT into PERSON values('P111', 'Surya','B','Munde','1982-12-09','M','Mysore Palace 111');
INSERT into PERSON values('P222', 'Aishwarya','A','Rai','1979-05-18','F','Mumbai 222');
INSERT into PERSON values('P121', 'Siddharth','K', 'Sharma','1987-05-21','M','Mumbai');
INSERT into PERSON values('P910', 'Sid','P', 'Sriram','1985-10-17','M','Tamil Nadu 45674');
INSERT into PERSON values('P122', 'Varma','O', 'Raj','1993-12-15','M','Karnataka');
INSERT into PERSON values('P123', 'Karna','H', 'Singh','1985-04-21','M','Dallas 75252');
INSERT into PERSON values('P144', 'Preethi','L', 'Reddy','1996-11-23','F','Mysore 560020');
INSERT into PERSON values('P129', 'Vicky','K', 'Sharma','1996-11-17','M','Kammanahalli, Bangalore');
INSERT into PERSON values('P125', 'Sardar','V', 'Patel','1997-11-21','M','UP');


INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1111', 'cash', 120.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1112', 'card', 100.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1113', 'card', 90.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1114', 'card', 140.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1115', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1116', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1117', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1118', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1119', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1120', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1121', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1122', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1123', 'card', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1125', 'cash', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1126', 'card', 160.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1127', 'card', 170.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1128', 'cash', 150.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1129', 'card', 180.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1130', 'cash', 110.00);
INSERT into PAYMENT(Payment_ID, PMethod, Amount) values('1131', 'cash', 150.00);


INSERT INTO GOLD VALUES ('P001');
INSERT INTO GOLD VALUES ('P002');
INSERT INTO GOLD VALUES ('P005');
INSERT INTO GOLD VALUES ('P222');
INSERT INTO GOLD VALUES ('P144');
INSERT INTO GOLD VALUES ('P910');

INSERT INTO GUEST_LOG VALUES ('GU01', 'P001', 'John Wee','', 'Doe', '222 W Campbell Road, Richardson, Texas', 'Ph no: 9090909');
INSERT INTO GUEST_LOG VALUES ('GU02', 'P002', 'Johny W','', 'Depp', '2218 W Campbell Road, Richardson, Texas', 'Ph no: 8989898');
INSERT INTO GUEST_LOG VALUES ('GU01', 'P005', 'Ram Jr','G', 'Doe', '222 W Campbell Road, Richardson, Texas', 'Ph no: 1818181');
INSERT INTO GUEST_LOG VALUES ('GU04', 'P222', 'Praveena', 'G','T', '1401 E Campbell Road, Addison, Texas', 'Ph no: 2030405');
INSERT INTO GUEST_LOG VALUES ('GU05', 'P222', 'Kinnera','Sai', 'Valli', '3702 Halston Road, Austin, Texas', 'Ph no: 123456');
INSERT INTO GUEST_LOG VALUES ('GU04', 'P144', 'Deepika','C', 'Patibandla', '222 W Campbell Road, Richardson, Texas', 'Ph no: 8609976');

INSERT INTO LIBRARY_CARD VALUES ('1', 'P001');
INSERT INTO LIBRARY_CARD VALUES ('2', 'P002');
INSERT INTO LIBRARY_CARD VALUES ('3', 'P003');
INSERT INTO LIBRARY_CARD VALUES ('4', 'P004');
INSERT INTO LIBRARY_CARD VALUES ('5', 'P006');
INSERT INTO LIBRARY_CARD VALUES ('6', 'P008');
INSERT INTO LIBRARY_CARD VALUES ('7', 'P009');

INSERT INTO PROMOTION(Code,card_num,description,memberid) VALUES ('PR001', 3, 'Coupon for Membership purchasal', 'P003');
INSERT INTO PROMOTION(Code,card_num,description,memberid) VALUES ('PR002', 1, 'Coupon for Membership purchasal', 'P001');
INSERT INTO PROMOTION(Code,card_num,description,memberid) VALUES ('PR003', 5, 'Coupon for Membership purchasal', 'P006');
INSERT INTO PROMOTION(Code,card_num,description,memberid) VALUES ('PR004', 7, 'Coupon for Membership purchasal', 'P009');

INSERT INTO COMMENTS_ON VALUES ('P001', 'B001', CURRENT_TIMESTAMP, 5);
INSERT INTO COMMENTS_ON VALUES ('P002', 'B001', CURRENT_TIMESTAMP, 4);
INSERT INTO COMMENTS_ON VALUES ('P003', 'B002', CURRENT_TIMESTAMP, 3);
INSERT INTO COMMENTS_ON VALUES ('P004', 'B003', CURRENT_TIMESTAMP, 2);
INSERT INTO COMMENTS_ON VALUES ('P005', 'B009', CURRENT_TIMESTAMP, 5);
INSERT INTO COMMENTS_ON VALUES ('P006', 'B007', CURRENT_TIMESTAMP, 3);
INSERT INTO COMMENTS_ON VALUES ('P007', 'B006', CURRENT_TIMESTAMP, 1);
INSERT INTO COMMENTS_ON VALUES ('P008', 'B007', CURRENT_TIMESTAMP, 2);
INSERT INTO COMMENTS_ON VALUES ('P009', 'B008', CURRENT_TIMESTAMP, 4);
INSERT INTO COMMENTS_ON VALUES ('P010', 'B011', CURRENT_TIMESTAMP, 4);
INSERT INTO COMMENTS_ON VALUES ('P003', 'B001', CURRENT_TIMESTAMP, 5);
INSERT INTO COMMENTS_ON VALUES ('P144', 'B007', CURRENT_TIMESTAMP, 3);
INSERT INTO COMMENTS_ON VALUES ('P421', 'B002', CURRENT_TIMESTAMP, 1);
INSERT INTO COMMENTS_ON VALUES ('P840', 'B003', CURRENT_TIMESTAMP, 2);

INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B001');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B002');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B003');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B004');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B005');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B006');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB001', 'B007');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB002', 'B008');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB002', 'B009');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB003', 'B010');
INSERT INTO PUBLISHES(publisher_id,book_id) VALUES ('PB004', 'B011');

INSERT INTO TRAINER VALUES ('TR001');
INSERT INTO TRAINER VALUES ('TR002');
INSERT INTO TRAINER VALUES ('TR003');
INSERT INTO TRAINER VALUES ('TR004');
INSERT INTO TRAINER VALUES ('TR005');
INSERT INTO TRAINER VALUES ('TR006');
INSERT INTO TRAINER VALUES ('TR007');


INSERT INTO EMPLOYEE VALUES ('P005', '2022-04-05', 24, 'Library Supervisor');
INSERT INTO EMPLOYEE VALUES ('P006', '2021-05-05', 23, 'Library Supervisor');
INSERT INTO EMPLOYEE VALUES ('P007', '2020-01-05', 23, 'Cataloging Manager');
INSERT INTO EMPLOYEE VALUES ('P008', '2022-02-05', 22, 'Cataloging Manager');
INSERT INTO EMPLOYEE VALUES ('P009', '2019-04-05', 39, 'Receptionist');
INSERT INTO EMPLOYEE VALUES ('P010', '2019-05-05', 32, 'Receptionist');
INSERT INTO EMPLOYEE VALUES ('P123', '2017-01-05', 22, 'Cataloging Manager');
INSERT INTO EMPLOYEE VALUES ('P121', '2018-12-05', 39, 'Library Supervisor');
INSERT INTO EMPLOYEE VALUES ('P144', '2016-11-01', 32, 'Receptionist');


INSERT INTO CATALOGING_MANAGER VALUES ('P007', 'TR001');
INSERT INTO CATALOGING_MANAGER VALUES ('P008', 'TR002');
INSERT INTO CATALOGING_MANAGER VALUES ('P123', 'TR003');

INSERT INTO RECEPTIONIST VALUES ('P009', 'TR003');
INSERT INTO RECEPTIONIST VALUES ('P144', 'TR002');
INSERT INTO RECEPTIONIST VALUES ('P010', 'TR007');

INSERT INTO LIBRARY_SUPERVISOR VALUES ('P005', 'TR007');
INSERT INTO LIBRARY_SUPERVISOR VALUES ('P006', 'TR006');

INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (1, 'P007', '2022-04-11');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (2, 'P123', '2022-04-17');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (3, 'P008', '2022-04-25');

INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (2, 'P007', '2022-04-12');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (3, 'P007', '2022-04-13');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (1, 'P007', '2022-04-18');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (3, 'P007', '2022-04-19');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (2, 'P007', '2022-04-20');

INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (3, 'P007', '2022-04-25');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (1, 'P007', '2022-04-26');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (2, 'P007', '2022-04-27');

INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (3, 'P007', '2022-05-03');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (1, 'P007', '2022-05-04');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (2, 'P007', '2022-05-05');

INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (3, 'P007', '2022-04-04');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (1, 'P007', '2022-04-05');
INSERT INTO CATELOG_ACTIVITY(category_num,catmangid,catalog_date) VALUES (2, 'P007', '2022-04-06');



INSERT INTO PHONE_NUMBERS VALUES ('P001', '9090909');
INSERT INTO PHONE_NUMBERS VALUES ('P001', '7373737');
INSERT INTO PHONE_NUMBERS VALUES ('P002', '8989898');
INSERT INTO PHONE_NUMBERS VALUES ('P005', '1818181');
INSERT INTO PHONE_NUMBERS VALUES ('P010', '7276293');
INSERT INTO PHONE_NUMBERS VALUES ('P123', '8989898');
INSERT INTO PHONE_NUMBERS VALUES ('P129', '1818181');
INSERT INTO PHONE_NUMBERS VALUES ('P129', '7276293');


INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B001', '1131', 'P009', '2022-04-11', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P002', 'B002', '1112', 'P010', '2021-12-09', '2022-01-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P003', 'B003', '1113', 'P009', '2022-01-10', '2022-02-09');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P004', 'B005', '1114', 'P009', '2022-03-11','2022-04-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P005', 'B004', '1115', 'P010',  '2021-04-10','2021-06-10');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P006', 'B007', '1116', 'P010',  '2022-04-01','2022-05-01');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P007', 'B006', '1117', 'P010',  '2021-01-09','2021-02-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P008', 'B011', '1118', 'P144',  '2021-02-23','2021-04-23');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P009', 'B010', '1120', 'P009',  '2021-08-16','2021-09-16');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P010', 'B009', '1121', 'P009',  '2022-02-02','2022-04-02');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B008', '1122', 'P144',  '2021-04-11','2022-12-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B002', '1125', 'P009', '2022-04-11', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B003', '1126', 'P009', '2022-04-12', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B006', '1127', 'P009', '2022-04-13', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B009', '1128', 'P009', '2022-04-14', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B010', '1129', 'P009', '2022-04-15', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B011', '1130', 'P009', '2022-04-16', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P144', 'B004', '1111', 'P009', '2022-04-11', '2022-06-11');



INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B006', '1121', 'P009', '2021-05-13', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B009', '1122', 'P009', '2021-06-14', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B010', '1123', 'P009', '2021-07-15', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B001', '1113', 'P009', '2021-08-16', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B004', '1125', 'P009', '2021-09-11', '2022-06-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B006', '1126', 'P009', '2021-10-13', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B009', '1127', 'P009', '2021-11-14', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B010', '1128', 'P009', '2021-12-15', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B011', '1129', 'P009', '2022-01-16', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B004', '1130', 'P009', '2022-02-11', '2022-06-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B006', '1131', 'P009', '2022-03-13', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P122', 'B009', '1112', 'P009', '2022-04-14', '2022-03-11');
INSERT INTO BORROWING(pid,bookid,payment_id,recep_id,date_of_issue,due_date) VALUES ('P001', 'B010', '1129', 'P009', '2022-04-15', '2022-03-11');

