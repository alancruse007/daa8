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
