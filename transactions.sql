START TRANSACTION;
 INSERT INTO STUDENT (usn, sname) VALUES ('S022', 'Alice Smith'); 
 INSERT INTO SEMSEC (ssid,sem,sec) VALUES ('SS022',4,'B'); 
 INSERT INTO CLASS (usn,ssid) VALUES ('S022','SS022');
 COMMIT;
 
START TRANSACTION; 
INSERT INTO student (usn,sname) VALUES ('S024','Ayush Sharma'); 
SAVEPOINT sp1; 
INSERT INTO subject1 (subcode, title) VALUES ('NULL', 'Mathematics');
ROLLBACK TO sp1; 

COMMIT;
