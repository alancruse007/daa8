create database university;
use university;

CREATE TABLE student( usn VARCHAR(11) NOT NULL, sname VARCHAR(15), address VARCHAR(30), 
phone VARCHAR(11) UNIQUE, gender CHAR, PRIMARY KEY(usn)) ; 
CREATE TABLE semsec( ssid VARCHAR(10) NOT NULL, sem INT, sec CHAR, PRIMARY KEY(ssid)) ; 

CREATE TABLE class( usn VARCHAR(11) NOT NULL, ssid VARCHAR(10), PRIMARY KEY(usn), FOREIGN 
KEY(usn)REFERENCES student(usn) ON DELETE CASCADE, FOREIGN KEY(ssid)REFERENCES 
semsec(ssid) ON DELETE CASCADE) ; 


INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S001', 'John Doe', '123 Main 
St, NY', '9876543210', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S002', 'Jane Smith', '456 Elm 
St, CA', '9123456789', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S003', 'Alice Johnson', '789 
Oak St, TX', '9988776655', 'F'); 

INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S004', 'Bob Brown', '321 Pine 
St, FL', '9765432109', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S005', 'Charlie White', '654 
Maple St, WA', '9654321987', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S006', 'David Black', '987 
Birch St, NV', '9543219876', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S007', 'Emma Wilson', '741 
Cedar St, OH', '9432198765', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S008', 'Olivia Martinez', '852 
Spruce St, MI', '9321987654', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S009', 'Liam Garcia', '369 
Redwood St, OR', '9219876543', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S010', 'Sophia Taylor', '258 
Willow St, IL', '9108765432', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S011', 'Ethan Thomas', '147 
Aspen St, CO', '9998887776', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S012', 'Mia Anderson', '357 
Oakwood St, AZ', '9887776665', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S013', 'Noah Hernandez', 
'468 Palm St, GA', '9776665554', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S014', 'Isabella King', '579 
Magnolia St, NC', '9665554443', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S015', 'Mason Scott', '680 
Sycamore St, NJ', '9554443332', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S016', 'Ava Lewis', '791 
Poplar St, MA', '9443332221', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S017', 'James Walker', '802 
Juniper St, VA', '9332221110', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S018', 'Charlotte Hall', '913 
Cypress St, TN', '9221110009', 'F'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S019', 'Benjamin Allen', '102 
Chestnut St, PA', '9110009998', 'M'); 
INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S020', 'Amelia Young', '203 
Hawthorn St, MO', '9009998887', 'F'); 
Select * from Student;


INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS001', 1, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS002', 1, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS003', 2, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS004', 2, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS005', 3, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS006', 3, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS007', 4, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS008', 4, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS009', 5, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS010', 5, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS011', 6, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS012', 6, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS013', 7, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS014', 7, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS015', 8, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS016', 8, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS017', 1, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS018', 1, 'B'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS019', 2, 'A'); 
INSERT INTO SEMSEC (SSID, Sem, Sec) VALUES ('SS020', 2, 'B'); 
Select * from semsec;


INSERT INTO CLASS (USN, SSID) VALUES ('S001', 'SS001'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S002', 'SS002'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S003', 'SS003'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S004', 'SS004'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S005', 'SS005'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S006', 'SS006'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S007', 'SS007'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S008', 'SS008'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S009', 'SS009'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S010', 'SS010'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S011', 'SS011'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S012', 'SS012'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S013', 'SS013'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S014', 'SS014'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S015', 'SS015'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S016', 'SS016'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S017', 'SS017'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S018', 'SS018'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S019', 'SS019'); 
INSERT INTO CLASS (USN, SSID) VALUES ('S020', 'SS020'); 
Select * from class; 


select * from student where usn= 'S019';
select * from student where usn= 'S019'; 
delete from student where usn= 'S019'; 
SELECT * FROM STUDENT; 

CREATE TABLE sub( subcode VARCHAR(5) NOT NULL, title VARCHAR(15), sem INT, credits INT, 
PRIMARY KEY(subcode)); 

CREATE TABLE iamarks( usn VARCHAR(10) NOT NULL, subcode VARCHAR(5), ssid VARCHAR(10), test1 
INT, test2 INT, test3 INT, finalia INT, PRIMARY KEY(usn,subcode,ssid), FOREIGN KEY(usn)REFERENCES 
student(usn) ON DELETE CASCADE, FOREIGN KEY(subcode)REFERENCES sub(subcode) ON DELETE 
CASCADE, FOREIGN KEY(ssid)REFERENCES semsec(ssid) ON DELETE CASCADE); 


INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS101', 'Intro to Prog', 1, 4); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS102', 'Math for Comp', 1, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS103', 'Physics Comp', 1, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS104', 'Basic Elec Eng', 1, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS201', 'Data Structs', 2, 4); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS202', 'Discrete Math', 2, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS203', 'Digital Logic', 2, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS204', 'Comp Org', 2, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS301', 'OOP', 3, 4); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS302', 'Operating Sys', 3, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS303', 'DBMS', 3, 4); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS304', 'Soft Eng', 3, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS401', 'Algorithms', 4, 4); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS402', 'Comp Networks', 4, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS403', 'Theory of Comp', 4, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS404', 'Microprocessor', 4, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS501', 'Machine Learn', 5, 4); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS502', 'Cloud Comp', 5, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS503', 'AI', 5, 3); 
INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS504', 'Cyber Security', 5, 3); 
Select * from sub;


INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S001', 'CS101', 'SS001', 18, 
20, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S001', 'CS102', 'SS001', 17, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S001', 'CS103', 'SS001', 16, 
18, 20); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S001', 'CS104', 'SS001', 15, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S002', 'CS101', 'SS002', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S002', 'CS102', 'SS002', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S002', 'CS103', 'SS002', 18, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S002', 'CS104', 'SS002', 16, 
15, 14); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S003', 'CS201', 'SS003', 19, 
20, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S003', 'CS202', 'SS003', 14, 
16, 15); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S003', 'CS203', 'SS003', 18, 
17, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S003', 'CS204', 'SS003', 20, 
18, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S004', 'CS201', 'SS004', 15, 
14, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S004', 'CS202', 'SS004', 17, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S004', 'CS203', 'SS004', 16, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S004', 'CS204', 'SS004', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S005', 'CS301', 'SS005', 18, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S005', 'CS302', 'SS005', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S005', 'CS303', 'SS005', 15, 
14, 13); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S005', 'CS304', 'SS005', 16, 
15, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S006', 'CS301', 'SS006', 18, 
20, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S006', 'CS302', 'SS006', 17, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S006', 'CS303', 'SS006', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S006', 'CS304', 'SS006', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S007', 'CS401', 'SS007', 18, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S007', 'CS402', 'SS007', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S007', 'CS403', 'SS007', 15, 
14, 13); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S007', 'CS404', 'SS007', 16, 
15, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S008', 'CS401', 'SS008', 18, 
20, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S008', 'CS402', 'SS008', 17, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S008', 'CS403', 'SS008', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S008', 'CS404', 'SS008', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S009', 'CS501', 'SS009', 18, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S009', 'CS502', 'SS009', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S009', 'CS503', 'SS009', 15, 
14, 13); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S009', 'CS504', 'SS009', 16, 
15, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S010', 'CS501', 'SS010', 18, 
20, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S010', 'CS502', 'SS010', 17, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S010', 'CS503', 'SS010', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S010', 'CS504', 'SS010', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S011', 'CS101', 'SS011', 20, 
18, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S011', 'CS102', 'SS011', 18, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S012', 'CS103', 'SS012', 17, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S012', 'CS104', 'SS012', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S013', 'CS201', 'SS013', 16, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S014', 'CS202', 'SS014', 15, 
17, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S014', 'CS203', 'SS014', 18, 
19, 20); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S015', 'CS204', 'SS015', 14, 
15, 13); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S016', 'CS301', 'SS016', 19, 
18, 17); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S016', 'CS302', 'SS016', 16, 
15, 14); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S017', 'CS303', 'SS017', 20, 
19, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S018', 'CS304', 'SS018', 18, 
20, 19); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S018', 'CS401', 'SS018', 17, 
18, 16); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S019', 'CS402', 'SS019', 16, 
 17, 18); 
INSERT INTO IAMARKS (USN, Subcode, SSID, Test1, Test2, Test3) VALUES ('S020', 'CS403', 'SS020', 14, 
16, 15);

select * from iamarks;

desc iamarks;

SELECT * 
FROM STUDENT S , CLASS C, SEMSEC SS, IAMARKS IA, SUB 
WHERE S.USN = C.USN AND C.SSID = SS.SSID  AND S.USN = IA.USN  AND IA.Subcode = SUB.Subcode 
AND S.USN ='S018'; 

SELECT IA.USN, S.SName, S.Gender, IA.Test1   
FROM IAMARKS IA, STUDENT S , SUB 
WHERE IA.USN = S.USN  AND IA.Subcode = SUB.Subcode  AND S.Gender = 'M' AND SUB.Title = 
'DBMS'   
ORDER BY IA.Test1 DESC   
LIMIT 3;




SELECT IA.USN, S.SName,   
AVG(IA.Test1) AS Avg_Test1,   
AVG(IA.Test2) AS Avg_Test2,   
(AVG(IA.Test1) + AVG(IA.Test2)) / 2 AS Overall_Avg   
FROM IAMARKS IA   
JOIN STUDENT S ON IA.USN = S.USN   
GROUP BY IA.USN, S.SName   
ORDER BY Overall_Avg DESC   
LIMIT 5;

SET SQL_SAFE_UPDATES = 0;

UPDATE iamarks SET finalia=  
CASE WHEN test1<test2 AND test1<test3 THEN (test2+ test3)/2 
WHEN test2<test1 AND test2<test3 THEN (test1+ test3)/2 
ELSE (test1+ test2)/2 
END ; 

select * from iamarks;


ALTER TABLE iamarks ADD COLUMN cat VARCHAR(30) ;
UPDATE iamarks SET cat= CASE WHEN finalia<=20 AND finalia>=17 THEN 'outstanding' WHEN 
finalia<=16 AND finalia>=12 THEN 'average' ELSE 'weak' END WHERE ssid IN (SELECT ssid FROM 
semsec WHERE sem=8 AND sec='a' OR sem=8 AND sec='b' OR sem=8 AND sec='c'); 


SELECT s.usn,s.sname,ss.sem,ia.finalia,ia.subcode,ia.cat 
FROM STUDENT S , CLASS C, SEMSEC SS, IAMARKS IA 
WHERE S.USN = C.USN AND C.SSID = SS.SSID  AND S.USN = IA.USN and ss.sem=8; 


SELECT COUNT(s.usn) FROM student s, IAMARKS IA 
WHERE IA.usn=s.usn AND finalia>  
(SELECT AVG(finalia) FROM iamarks ia  
WHERE ia.subcode=(select subcode from sub where title='DBMS')); 


SELECT sum(credits) 
from sub s, iamarks ia, class c, student st 
where s.subcode=ia.subcode and 
ia.ssid=c.ssid and 
c.usn=st.usn and st.usn IN (select usn from student where sname='Ava Lewis'); 


(SELECT st.usn,st.sname,st.gender 
from sub s, iamarks ia, student st 
where s.subcode=ia.subcode and 
ia.usn=st.usn and s.title='Digital Logic' AND st.gender='f') 
UNION  
(SELECT st.usn,st.sname,st.gender 
from sub s, iamarks ia, student st 
where s.subcode=ia.subcode and 
ia.usn=st.usn and s.title='Digital Logic' AND st.gender='m');



SELECT S.USN, S.SName, S.Address, S.Phone, S.Gender, SS.Sem, SS.Sec   
FROM STUDENT S   
NATURAL JOIN CLASS   
NATURAL JOIN SEMSEC SS;


INSERT INTO Student (USN, SName, Address, Phone, Gender)  VALUES ('S021', 'David white', 
'786 Cringe St, NV', '9786543416', 'M'); 
SELECT S.USN, S.SName, IA.Subcode, SUB.Title, IA.Test1, IA.Test2, IA.Test3   
FROM STUDENT S   
JOIN IAMARKS IA ON S.USN = IA.USN   
JOIN SUB ON IA.Subcode = SUB.Subcode;


SELECT S.USN, S.SName, IA.Subcode, IA.Test1, IA.Test2, IA.Test3   
FROM STUDENT S   
LEFT OUTER JOIN IAMARKS IA ON S.USN = IA.USN;


INSERT INTO SUB (Subcode, Title, Sem, Credits) VALUES ('CS405', 'R PROGRAMMING', 2, 3); 
SELECT SUB.Subcode, SUB.Title, IA.USN, S.SName, IA.Test1, IA.Test2, IA.Test3   
FROM IAMARKS IA   
RIGHT OUTER JOIN SUB ON IA.Subcode = SUB.Subcode   
LEFT JOIN STUDENT S ON IA.USN = S.USN; 


SELECT SUB.Subcode, SUB.Title, IA.USN, S.SName, IA.Test1, IA.Test2, IA.Test3   
FROM STUDENT S   
LEFT JOIN IAMARKS IA ON S.USN = IA.USN   
LEFT JOIN SUB ON IA.Subcode = SUB.Subcode   
UNION   
SELECT SUB.Subcode, SUB.Title, IA.USN, S.SName, IA.Test1, IA.Test2, IA.Test3   
FROM STUDENT S   
RIGHT JOIN IAMARKS IA ON S.USN = IA.USN   
RIGHT JOIN SUB ON IA.Subcode = SUB.Subcode; 

-- ---------

ALTER TABLE iamarks ADD COLUMN Grade VARCHAR(2); 
 
DELIMITER $$ 
 
CREATE FUNCTION Calculate_Grade(FinalIA INT)  
RETURNS VARCHAR(2)  
DETERMINISTIC 
BEGIN 
    DECLARE grade VARCHAR(2); 
    IF FinalIA >= 90 THEN 
        SET grade = 'A+'; 
    ELSEIF FinalIA >= 80 THEN 
        SET grade = 'A'; 
    ELSEIF FinalIA >= 70 THEN 
        SET grade = 'B'; 
    ELSEIF FinalIA >= 60 THEN 
        SET grade = 'C'; 
    ELSEIF FinalIA >= 50 THEN 
        SET grade = 'D'; 
    ELSE 
        SET grade = 'F'; -- Fail 
    END IF; 
 
    RETURN grade; 
END $$ 
 
DELIMITER ; 
 
DELIMITER $$ 
 
CREATE PROCEDURE Update_Grades() 
BEGIN 
    UPDATE iamarks  
    SET Grade = Calculate_Grade(FinalIA); 
END $$ 
 
DELIMITER ; 
CALL Update_Grades(); 
select * from iamarks;
 -- ------------------
 
 START TRANSACTION;
 INSERT INTO STUDENT (usn, sname) VALUES ('S022', 'Alice Smith'); 
 INSERT INTO SEMSEC (ssid,sem,sec) VALUES ('SS022',4,'B'); 
 INSERT INTO CLASS (usn,ssid) VALUES ('S022','SS022');
 COMMIT;
 
select * from semsec; 
select * from student; 
select * from class; 

create table subject( usn varchar(11), sname varchar(20));
create table subject1( subcode varchar(11), title varchar(20));

START TRANSACTION; 
INSERT INTO student (usn,sname) VALUES ('S024','Ayush Sharma'); 
SAVEPOINT sp1; 
INSERT INTO subject1 (subcode, title) VALUES ('NULL', 'Mathematics');
ROLLBACK TO sp1; 

COMMIT; 

select * from student; 
select * from subject;
-- ---------------------------

-- GRANT SELECT, INSERT, UPDATE ON STUDENT TO username;

-- REVOKE ALL PRIVILEGES ON IAMARKS FROM root;  
-- ---------------

CREATE TABLE STUDENT_LOG ( 
log_id INT AUTO_INCREMENT PRIMARY KEY, 
action_type VARCHAR(10),   
USN varchar(11), 
SName VARCHAR(15), 
log_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP 
);


DELIMITER $$ 
CREATE TRIGGER before_student_insert 
BEFORE INSERT ON STUDENT 
FOR EACH ROW 
BEGIN 
INSERT INTO STUDENT_LOG (action_type, USN, SName, log_timestamp) 
VALUES ('INSERT', NEW.USN, NEW.SName, NOW()); 
END $$ 
DELIMITER ; 

INSERT INTO STUDENT (USN, SName) VALUES ('S023', 'Alice Smith');

DELIMITER $$ 
CREATE TRIGGER after_student_delete 
AFTER DELETE ON STUDENT 
FOR EACH ROW 
BEGIN 
INSERT INTO STUDENT_LOG (action_type, USN, SName, log_timestamp) 
VALUES ('DELETE', OLD.USN, OLD.SName, NOW()); 
END $$ 
DELIMITER ;

DELETE FROM STUDENT WHERE USN = 'S024'; 
select * from student; 
SELECT * FROM STUDENT_LOG;

DELIMITER $$ 
CREATE TRIGGER after_student_update 
AFTER UPDATE 
ON STUDENT 
FOR EACH ROW 
BEGIN 
INSERT INTO STUDENT_LOG (action_type, USN, SName, log_timestamp) 
VALUES ('UPDATE', OLD.USN, SName, NOW()); 
END $$ 
DELIMITER ; 

UPDATE STUDENT  SET SName = 'Wille Brown'  WHERE USN = 'S022';   
select * from student_log; 
select * from student; 

-- ----------------

CREATE VIEW student_basic_info AS SELECT USN, SName, Phone FROM STUDENT; 
SELECT * FROM student_basic_info; 

CREATE VIEW student_class_info AS SELECT s.USN, s.SName, c.SSID, ss.Sem FROM 
STUDENT s JOIN CLASS c ON s.USN = c.USN JOIN SEMSEC ss ON c.SSID = ss.SSID;
 
SELECT * FROM student_class_info; 

CREATE VIEW semester_student_count AS SELECT ss.Sem, COUNT(c.USN) AS 
student_count FROM SEMSEC ss JOIN CLASS c ON ss.SSID = c.SSID GROUP BY 
ss.Sem; 

SELECT * FROM semester_student_count; 

CREATE VIEW high_scorers AS SELECT s.USN, s.SName, i.Test1 FROM STUDENT s 
JOIN IAMARKS i ON s.USN = i.USN WHERE i.Test1 > 15; 

SELECT * FROM high_scorers; 

