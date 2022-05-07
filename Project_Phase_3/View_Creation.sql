/*1. TopGoldMember - This view returns the First Name, Last Name and Date of membership 
enrollment of those members who have borrowed more than 5 books in past month */ 

CREATE VIEW TOP_GOLD_MEMBER
AS
SELECT m.Member_ID, p.FName, p.LName, m.Enrollment_date,COUNT(*) as Number_of_books
FROM PERSON AS p
	INNER JOIN MEMBER m
	ON p.PID = m.Member_ID
	INNER JOIN GOLD g
	ON g.M_ID = m.Member_ID
	INNER JOIN BORROWING Br
	ON Br.PID = p.PID
WHERE br.Date_of_issue >= DATE_SUB(curdate(), INTERVAL 1 MONTH)
GROUP BY m.Member_ID,p.FName,p.LName,m.Enrollment_date
HAVING Number_of_books > 5
ORDER BY Number_of_books DESC;

SELECT * FROM TOP_GOLD_MEMBER;

/*2. PopularBooks - This view returns the details of the most borrowed books over the past year */ 

CREATE VIEW POPULAR_BOOKS
AS
SELECT br.BookID, bk.Title , COUNT(*) as  No_of_books
FROM BOOK  bk
	INNER JOIN  BORROWING br
	ON bk.Book_ID = br.BookID
WHERE br.Date_of_issue >= DATE_SUB(curdate(), INTERVAL 1 YEAR)
GROUP BY br.BookID
ORDER BY No_of_books DESC; 

SELECT * FROM POPULAR_BOOKS;

/*3. BestRatingPublisher – This view returns the names of publisher whose books are all have at least 4.0 average rating score */

CREATE VIEW BEST_RATING_PUBLISHER
AS
SELECT Pr.Publisher_name, Cr.Average_rating_score
FROM (SELECT ps.Book_ID, ps.Publisher_ID , AVG(co.Rating) as Average_rating_score
      FROM PUBLISHES ps
	  INNER JOIN COMMENTS_ON co
	  ON ps.Book_ID = co.Book_ID
      GROUP BY ps.Book_ID) as Cr,
      PUBLISHER Pr
WHERE Pr.Publisher_ID = Cr.Publisher_ID AND Cr.Average_rating_score >= 4.0;

SELECT * FROM BEST_RATING_PUBLISHER;

/*4. PotentialGoldMember - This view returns the name, phone number and ID of 
the silver members who borrowed books in every month in the past year */

CREATE VIEW POTENTIAL_GOLD_MEMBER
AS
SELECT p.PID, p.Fname, p.Middle_name, p.LName, ph.Phone_num
FROM (SELECT br.PID, COUNT(br.PID) as Counts
	  FROM BORROWING br WHERE br.Date_of_issue > DATE(curdate() - INTERVAL 1 YEAR)
    	GROUP BY br.PID) AS ct, SILVER sm, MEMBER m, PERSON p, PHONE_NUMBERS ph
    	WHERE ct.Counts > 12 AND
    	m.Member_ID = ct.PID AND
    	p.PID = ct.PID AND
       	sm.M_ID = ct.PID;

DROP VIEW POTENTIAL_GOLD_MEMBER;
CREATE VIEW POTENTIAL_GOLD_MEMBER
AS
SELECT DISTINCT p.PID, p.Fname, p.Middle_name, p.LName, ph.Phone_num
FROM (SELECT br.PID, COUNT(br.PID) as Counts
	  FROM BORROWING br WHERE br.Date_of_issue > DATE(curdate() - INTERVAL 1 YEAR)
    	GROUP BY br.PID) AS ct, SILVER sm, MEMBER m, PERSON p, PHONE_NUMBERS ph
    	WHERE ct.Counts = 12 AND
    	m.Member_ID = ct.PID AND
    	p.PID = ct.PID AND
       	sm.M_ID = ct.PID;


SELECT * FROM  POTENTIAL_GOLD_MEMBER;

/*5. PopularAuthor – This view returns details of authors whose books have been borrowed the most */

CREATE VIEW POPULAR_AUTHOR
AS
SELECT Au.Author_ID, Au.Author_Name ,COUNT(*) as  No_of_books
FROM  AUTHOR Au, WRITES w ,BOOK  bk, BORROWING br
WHERE Au.Author_ID = w.Author_ID AND w.Book_ID = bk.Book_ID  AND  bk.Book_ID = br.BookID 
GROUP BY br.BookID
ORDER BY No_of_books DESC; 

SELECT * FROM POPULAR_AUTHOR;
