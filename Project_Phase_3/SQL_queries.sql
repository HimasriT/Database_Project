/*1.	List the details of all the supervisors of the library hired in past two months. */
SELECT ls.LibSup_ID, p.FName, p.Middle_Name, p.Lname, emp.Start_date
FROM PERSON p
     JOIN EMPLOYEE emp
     ON p.PID = emp.Employee_ID
     JOIN LIBRARY_SUPERVISOR ls
     ON emp.Employee_ID = ls.LibSup_ID
WHERE emp.Start_date > DATE_SUB(curdate(),INTERVAL '2' MONTH);

/*2. Find the names of employees who are also a member and the books they have borrowed in the past month */
SELECT p.FName, p.Middle_Name, p.Lname, br.BookID
FROM PERSON p
    INNER JOIN EMPLOYEE emp
    ON p.PID = emp.Employee_ID
    INNER JOIN MEMBER m
    ON m.Member_ID = emp.Employee_ID,
    BORROWING br
WHERE p.PID = br.PID and br.Date_of_issue > DATE_sub(CURDATE(), INTERVAL '1' MONTH);

/*3.Find the average number of books borrowed by the top five gold members in the library */

SELECT sq.Member_ID, AVG(sq.Number_of_Books)
FROM (SELECT *
FROM  TOP_GOLD_MEMBER tg
LIMIT 5) as sq, BORROWING br
WHERE Br.PID = sq.Member_ID;

/*4. Find the name of publishers and the title of the most popular book for each publisher. */

SELECT pub.Publisher_Name, popb.Title
FROM POPULAR_BOOKS popb, PUBLISHES pb, PUBLISHER pub
WHERE popb.BookID = pb.Book_ID AND pb.Publisher_ID = pub.Publisher_ID;

/*5. Find names of books that were not borrowed in the last 5 months. */
SELECT Bk.Title
FROM BOOK Bk
WHERE Bk.Title NOT IN  (SELECT Bk.Title
						FROM BOOK Bk, BORROWING Br
						WHERE Bk.Book_ID = Br.BookID AND Br.Date_of_issue >= DATE_SUB(curdate() , INTERVAL '5' MONTH));


/*6. Find the members who have borrowed all the books wrote by the most popular author.*/

SELECT DISTINCT p.PID,p.FName,p.Middle_name,p.LName
FROM PERSON p, BORROWING br
	WHERE p.PID = br.PID AND
    br.BookID IN (SELECT DISTINCT b.Book_ID 
			      FROM BORROWING br, Book b, WRITES w, PERSON p
				  WHERE b.Book_ID = w.Book_ID AND w.Author_ID = ( SELECT Author_ID 
																   FROM POPULAR_AUTHOR 
																   LIMIT 1 ) AND
						p.PID = br.PID AND b.Book_ID = br.BookID)
	Group by br.BookID;
    
/*7. Find the Gold Member with the greatest number of guests. */
SELECT g.M_ID , Count(*) as Number_of_guests
FROM GOLD g, GUEST_LOG gl
WHERE g.M_ID = gl.M_ID 
GROUP BY g.M_ID 
ORDER BY COUNT(*) DESC LIMIT 1;

/*8. Find the year with the maximum number of books borrowed. */

SELECT YEAR(Br.Date_of_issue) , Count(*) as Number_of_books
FROM BORROWING Br
GROUP BY YEAR(Br.Date_of_issue)
ORDER BY COUNT(*) DESC LIMIT 1;

/*9. Find the names of members who borrowed the most popular books. */

SELECT DISTINCT p.FName, p.Middle_Name, p.Lname
FROM PERSON p, MEMBER m, POPULAR_BOOKS pb, BORROWING br
WHERE p.PID = m.Member_ID AND p.PID = br.PID AND pb.BookID = br.BookID;
		     
/*10. List all the employees that have enrolled into Gold membership within a month of being employed. */

SELECT emp.Employee_ID, p.FName, p.Lname
FROM EMPLOYEE emp
           JOIN PERSON p
          ON emp.Employee_ID = p.PID
          JOIN MEMBER m
         ON p.PID = m.Member_ID
         JOIN GOLD g
        ON m.Member_ID = g.M_ID
WHERE m.Enrollment_date  < DATE(emp.Start_Date + INTERVAL 1 MONTH);

/*11. Find the name of members who have been a silver member for over 5 years. */

SELECT p.Fname, p.Lname
FROM PERSON p
	JOIN MEMBER m
              ON m.Member_ID = p.PID
	JOIN SILVER s
             ON s.M_ID = m.Member_ID
  WHERE m.Enrollment_date >= DATE_SUB(curdate(), INTERVAL 5 YEAR);

/*12. Find the names of the potential gold members and number of books they borrowed in the last year. */

SELECT p.FName, p.Middle_name, p.LName, Count(*) as No_of_books
FROM POTENTIAL_GOLD_MEMBER p, BORROWING br
	WHERE p.PID = br.PID 
    	GROUP BY p.PID, br.BookID;


/*13. List the employee who trained the greatest number of receptionists. */

SELECT p.FName, p.Middle_name, p.LName, r.Trainer_id , COUNT(*)
FROM  RECEPTIONIST r, EMPLOYEE emp, PERSON p
	WHERE r.Recep_ID = emp.Employee_id AND
    	r.Recep_ID = p.PID
	GROUP BY r.Trainer_id
	ORDER BY COUNT(*) DESC;


/* 14. List the Cataloging Managers who cataloged all categories every week in past 4 weeks. */

SELECT p.FName, p.Middle_name, p.LName, ct.CatMangID 
FROM (SELECT c.CatMangID, COUNT(c.CatMangID) as Counts
	  FROM CATELOG_ACTIVITY c WHERE c.Catalog_Date > DATE(curdate() - INTERVAL 4 WEEK)
    	GROUP BY c.CatMangID) AS ct, Employee emp, Person p
    	WHERE ct.Counts >= 12 AND 
    	emp.Employee_id = ct.CatMangid AND
    	p.PID = ct.CatMangid;

