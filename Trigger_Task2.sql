CREATE TABLE EmployeeSalaryUpdateCount (
    InsertCount INT
);

DELIMITER $$

CREATE TRIGGER SalaryUpdateTrigger
AFTER INSERT ON EmployeeSalaryUpdateCount
FOR EACH ROW
BEGIN
        UPDATE EmployeeSalaryUpdateCount
    SET InsertCount = (SELECT COUNT(*) FROM Employee);

     IF (SELECT COUNT(*) FROM EmployeeSalaryUpdateCount) = 0 THEN
        INSERT INTO EmployeeSalaryUpdateCount (InsertCount)
        VALUES ((SELECT COUNT(*) FROM Employee));
    END IF;
END $$

DELIMITER ;

SELECT * FROM  EmployeeSalaryUpdateCount;