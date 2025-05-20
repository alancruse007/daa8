SET SQL_SAFE_UPDATES = 0;

UPDATE iamarks SET finalia=  
CASE WHEN test1<test2 AND test1<test3 THEN (test2+ test3)/2 
WHEN test2<test1 AND test2<test3 THEN (test1+ test3)/2 
ELSE (test1+ test2)/2 
END ; 

UPDATE iamarks SET cat= CASE WHEN finalia<=20 AND finalia>=17 THEN 'outstanding' WHEN 
finalia<=16 AND finalia>=12 THEN 'average' ELSE 'weak' END WHERE ssid IN (SELECT ssid FROM 
semsec WHERE sem=8 AND sec='a' OR sem=8 AND sec='b' OR sem=8 AND sec='c'); 

UPDATE STUDENT  SET SName = 'Wille Brown'  WHERE USN = 'S022';   

delete from student where usn= 'S019'; 
DELETE FROM STUDENT WHERE USN = 'S024';
