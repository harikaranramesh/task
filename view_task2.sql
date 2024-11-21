

CREATE VIEW ChennaiTnEmployees AS
SELECT EmployeeId, EmployeeName, Position, Department, Location, Salary
FROM Employee
WHERE Location = 'Chennai' AND Department = 'TN';


SELECT * FROM ChennaiTnEmployees;
