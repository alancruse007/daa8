CREATE VIEW student_basic_info AS SELECT USN, SName, Phone FROM STUDENT; 

CREATE VIEW student_class_info AS SELECT s.USN, s.SName, c.SSID, ss.Sem FROM 
STUDENT s JOIN CLASS c ON s.USN = c.USN JOIN SEMSEC ss ON c.SSID = ss.SSID;
 
CREATE VIEW semester_student_count AS SELECT ss.Sem, COUNT(c.USN) AS 
student_count FROM SEMSEC ss JOIN CLASS c ON ss.SSID = c.SSID GROUP BY 
ss.Sem; 

CREATE VIEW high_scorers AS SELECT s.USN, s.SName, i.Test1 FROM STUDENT s 
JOIN IAMARKS i ON s.USN = i.USN WHERE i.Test1 > 15;
