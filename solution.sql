create database EMPLOYEEINSERT;
use EMPLOYEEINSERT;
SET SERVEROUTPUT ON;

CREATE TABLE Employee (
EmployeeID NUMBER PRIMARY KEY,
EmployeeName VARCHAR2(30),
Department VARCHAR2(20),
Salary NUMBER
);

CREATE OR REPLACE TRIGGER Employee_Insert_Trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
DBMS_OUTPUT.PUT_LINE(
'New employee inserted: ' || :NEW.EmployeeName
);
END;
/

INSERT INTO Employee
VALUES (101, 'Ravi', 'HR', 25000);

COMMIT;

SELECT * FROM Employee;
