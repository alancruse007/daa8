CREATE TABLE student( usn VARCHAR(11) NOT NULL, sname VARCHAR(15), address VARCHAR(30), 
phone VARCHAR(11) UNIQUE, gender CHAR, PRIMARY KEY(usn)) ; 
CREATE TABLE semsec( ssid VARCHAR(10) NOT NULL, sem INT, sec CHAR, PRIMARY KEY(ssid)) ; 

CREATE TABLE class( usn VARCHAR(11) NOT NULL, ssid VARCHAR(10), PRIMARY KEY(usn), FOREIGN 
KEY(usn)REFERENCES student(usn) ON DELETE CASCADE, FOREIGN KEY(ssid)REFERENCES 
semsec(ssid) ON DELETE CASCADE) ; 

CREATE TABLE sub( subcode VARCHAR(5) NOT NULL, title VARCHAR(15), sem INT, credits INT, 
PRIMARY KEY(subcode)); 

CREATE TABLE iamarks( usn VARCHAR(10) NOT NULL, subcode VARCHAR(5), ssid VARCHAR(10), test1 
INT, test2 INT, test3 INT, finalia INT, PRIMARY KEY(usn,subcode,ssid), FOREIGN KEY(usn)REFERENCES 
student(usn) ON DELETE CASCADE, FOREIGN KEY(subcode)REFERENCES sub(subcode) ON DELETE 
CASCADE, FOREIGN KEY(ssid)REFERENCES semsec(ssid) ON DELETE CASCADE); 

create table subject( usn varchar(11), sname varchar(20));
create table subject1( subcode varchar(11), title varchar(20));

CREATE TABLE STUDENT_LOG ( 
log_id INT AUTO_INCREMENT PRIMARY KEY, 
action_type VARCHAR(10),   
USN varchar(11), 
SName VARCHAR(15), 
log_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP 
);
