CREATE DATABASE wonder_library;

USE wonder_library;

CREATE TABLE PERSON (
	PID varchar(10) NOT NULL,
	FName varchar(250) NOT NULL,
	Middle_Name varchar(250) NOT NULL,
	Lname varchar(250) NOT NULL,
    	DOB DATE NOT NULL,
    	Gender varchar(20) NOT NULL,
    	Address varchar(300) NOT NULL,
	PRIMARY KEY (PID),
    	CONSTRAINT Check_person CHECK (PID not like 'P[0-9][0-9][0-9]')
);

CREATE TABLE MEMBER (
	Member_ID varchar(10) NOT NULL,
    Enrollment_date date NOT NULL,
    Membership_type varchar(300) NOT NULL,
    PRIMARY KEY (Member_ID),
    FOREIGN KEY(Member_ID) REFERENCES PERSON(PID) ON DELETE CASCADE
);

CREATE TABLE GOLD (
    	M_ID varchar(10) NOT NULL,
        PRIMARY KEY (M_ID),
    	FOREIGN KEY(M_ID) REFERENCES MEMBER(Member_ID) ON DELETE CASCADE 
);

CREATE TABLE SILVER (
    	M_ID varchar(10) NOT NULL,
	PRIMARY KEY (M_ID),
    	FOREIGN KEY(M_ID) REFERENCES MEMBER(Member_ID) ON DELETE CASCADE 
);

CREATE TABLE EMPLOYEE (
        Employee_ID varchar(10) NOT NULL,
    	Start_Date date NOT NULL,
    	Age integer NOT NULL,
    	EType varchar(300) NOT NULL,
    	PRIMARY KEY (Employee_ID),
    	FOREIGN KEY(Employee_ID) REFERENCES PERSON(PID) ON DELETE CASCADE,
    	CONSTRAINT Check_age CHECK (Age >= 18)
);

CREATE TABLE TRAINER (
	Trainer_ID varchar(10) NOT NULL,
    	PRIMARY KEY (Trainer_ID)
);

CREATE TABLE RECEPTIONIST (
    	Recep_ID varchar(10) NOT NULL,
	Trainer_ID varchar(10) NOT NULL,
	PRIMARY KEY (Recep_ID),
	FOREIGN KEY(Recep_ID) REFERENCES EMPLOYEE(Employee_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Trainer_ID) REFERENCES TRAINER(Trainer_ID) ON DELETE CASCADE
);

CREATE TABLE LIBRARY_SUPERVISOR (
    	LibSup_ID varchar(10) NOT NULL,
	Trainer_ID varchar(10) NOT NULL,
	PRIMARY KEY (LibSup_ID), 
	FOREIGN KEY(LibSup_ID) REFERENCES EMPLOYEE(Employee_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Trainer_ID) REFERENCES TRAINER(Trainer_ID) ON DELETE CASCADE
);

CREATE TABLE CATALOGING_MANAGER (
    	CatMang_ID varchar(10) NOT NULL,
	Trainer_ID varchar(10) NOT NULL,
	PRIMARY KEY (CatMang_ID),
	FOREIGN KEY(CatMang_ID) REFERENCES EMPLOYEE(Employee_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Trainer_id) REFERENCES TRAINER(Trainer_ID) ON DELETE CASCADE
);

CREATE TABLE CATEGORY (
	Category_Number integer NOT NULL,
    	PRIMARY KEY(Category_Number),
    	CONSTRAINT Check_Category CHECK (Category_Number <= 3 AND Category_Number >= 1)
);

CREATE TABLE BOOK (
	Book_ID varchar(10) NOT NULL,
	Title varchar(200) NOT NULL,
	Other_Info varchar(300),
    	Category_number integer NOT NULL,
	PRIMARY KEY (Book_ID),
    	FOREIGN KEY(Category_number) REFERENCES CATEGORY(Category_Number) ON DELETE CASCADE
);

CREATE TABLE PUBLISHER (
	Publisher_ID varchar(10) NOT NULL,
	Publisher_Name varchar(200) NOT NULL,
	Established_Year integer,
	Address varchar(300),
    	PRIMARY KEY(Publisher_ID)
);

CREATE TABLE AUTHOR (
	Author_ID varchar(10) NOT NULL,
	Author_Name varchar(200) NOT NULL,
	Style_of_Writing varchar(200),
    	Year_of_Operation integer,
    	PRIMARY KEY(Author_ID)
);

CREATE TABLE PAYMENT (
	Payment_ID varchar(10) NOT NULL,
	Amount integer NOT NULL,
	Time timestamp DEFAULT CURRENT_timestamp,
	PMethod varchar(10) NOT NULL,
	PRIMARY KEY (Payment_ID)
);

CREATE TABLE GUEST_LOG (
	Guest_ID varchar(10) NOT NULL,
    	M_ID varchar(10) NOT NULL,
	Fname varchar(300) NOT NULL,
	Middle_name varchar(300),
	Lname varchar(300) NOT NULL,
	Address varchar(300),
	Contact varchar(200),
	PRIMARY KEY (Guest_ID, M_ID),
    	FOREIGN KEY(M_ID) REFERENCES GOLD(M_ID) ON DELETE CASCADE
);

CREATE TABLE LIBRARY_CARD (
	Card_num integer NOT NULL,
    	MemberID varchar(10) NOT NULL,
	PRIMARY KEY (Card_num,MemberID),
    	FOREIGN KEY(MemberID) REFERENCES MEMBER(Member_ID) ON DELETE CASCADE
);

CREATE TABLE PROMOTION (
	Code varchar(10) NOT NULL,
	MemberID varchar(10) NOT NULL,
    	Card_Num integer NOT NULL,
	Description varchar(300),
	PRIMARY KEY (Code, MemberID, Card_Num),
    	FOREIGN KEY(Card_num,MemberID) REFERENCES LIBRARY_CARD(Card_num,MemberID) ON DELETE CASCADE
);

CREATE TABLE COMMENTS_ON (
	PID varchar(10) NOT NULL,
    	Book_ID varchar(10) NOT NULL,
    	Comment_Time timestamp,
    	Rating integer NOT NULL,
	PRIMARY KEY (PID, Book_ID),
    	FOREIGN KEY(PID) REFERENCES PERSON(PID) ON DELETE CASCADE,
    	FOREIGN KEY(Book_ID) REFERENCES BOOK(Book_ID) ON DELETE CASCADE,
	CONSTRAINT Check_Rating CHECK (Rating <= 5 AND Rating >= 1)
);

CREATE TABLE PUBLISHES (
	Book_ID varchar(10) NOT NULL,
	Publisher_ID varchar(10) NOT NULL,
	PRIMARY KEY (Publisher_ID, Book_ID),
    	FOREIGN KEY(Publisher_ID) REFERENCES PUBLISHER(Publisher_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Book_ID) REFERENCES BOOK(Book_ID) ON DELETE CASCADE
);

CREATE TABLE WRITES (
	Book_ID varchar(10) NOT NULL,
	Author_ID varchar(10) NOT NULL,
	PRIMARY KEY (Author_ID, Book_ID),
    	FOREIGN KEY(Author_ID) REFERENCES AUTHOR(Author_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Book_ID) REFERENCES BOOK(Book_ID) ON DELETE CASCADE
);

CREATE TABLE CATELOG_ACTIVITY (
	CatMangID varchar(10) NOT NULL,
	Category_Num integer NOT NULL,
	Catalog_Date date NOT NULL,
	PRIMARY KEY (CatMangID, Category_Num,Catalog_Date),
    	FOREIGN KEY(Category_Num) REFERENCES CATEGORY(Category_Number) ON DELETE CASCADE,
    	FOREIGN KEY(CatMangID) REFERENCES CATALOGING_MANAGER(CatMang_ID) ON DELETE CASCADE
);


CREATE TABLE PHONE_NUMBERS (
	PID varchar(10) NOT NULL,
    	Phone_num integer NOT NULL,
	PRIMARY KEY (PID, Phone_num),
    	FOREIGN KEY(PID) REFERENCES PERSON(PID) ON DELETE CASCADE,
    	CONSTRAINT Check_phone CHECK (Phone_num <= 9999999999 AND Phone_num >= 000000000)
);

CREATE TABLE BORROWING (
	PID varchar(10) NOT NULL,
	Recep_ID varchar(10) NOT NULL,
    	BookID varchar(10) NOT NULL,
    	Payment_ID varchar(10) NOT NULL,
    	Date_of_issue date NOT NULL,
    	Due_date date NOT NULL,
	PRIMARY KEY (PID, Recep_ID, BookID, Payment_ID),
    	FOREIGN KEY(PID) REFERENCES PERSON(PID) ON DELETE CASCADE,
    	FOREIGN KEY(BookID) REFERENCES BOOK(Book_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Payment_ID) REFERENCES PAYMENT(Payment_ID) ON DELETE CASCADE,
    	FOREIGN KEY(Recep_ID) REFERENCES RECEPTIONIST(Recep_ID) ON DELETE CASCADE
);


