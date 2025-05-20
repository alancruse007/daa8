Select * from Student;
Select * from semsec;
Select * from class; 
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

select * from iamarks;

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

SELECT S.USN, S.SName, IA.Subcode, SUB.Title, IA.Test1, IA.Test2, IA.Test3   
FROM STUDENT S   
JOIN IAMARKS IA ON S.USN = IA.USN   
JOIN SUB ON IA.Subcode = SUB.Subcode;

SELECT S.USN, S.SName, IA.Subcode, IA.Test1, IA.Test2, IA.Test3   
FROM STUDENT S   
LEFT OUTER JOIN IAMARKS IA ON S.USN = IA.USN;

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

select * from iamarks;
select * from semsec; 
select * from student; 
select * from class; 
select * from subject;
select * from student; 
SELECT * FROM STUDENT_LOG;
select * from student; 
select * from student_log; 
select * from student; 

SELECT * FROM student_basic_info; 
SELECT * FROM student_class_info; 
SELECT * FROM semester_student_count; 
SELECT * FROM high_scorers;
