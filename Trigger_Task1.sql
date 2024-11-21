
DELIMITER $$

CREATE TRIGGER EmployeeInsertTrigger
AFTER INSERT ON EmployeeDetails
FOR EACH ROW
BEGIN
        UPDATE EmployeeDetailsInsertCount
    SET InsertCount = (SELECT COUNT(*) FROM EmployeeDetails);

       IF (SELECT COUNT(*) FROM EmployeeDetailsInsertCount) = 0 THEN
        INSERT INTO EmployeeDetailsInsertCount (InsertCount)
        VALUES ((SELECT COUNT(*) FROM EmployeeDetails));
    END IF;
END $$

DELIMITER ;






SELECT * FROM EmployeeDetailsInsertCount;
