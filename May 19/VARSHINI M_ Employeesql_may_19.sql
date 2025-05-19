create database Emp;
use Emp;

CREATE TABLE EmployeeAttendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Date DATE,
    Status VARCHAR(20),
    HoursWorked INT
);

-- Inserting Records
INSERT INTO EmployeeAttendance VALUES
(1, 'John Doe', 'IT', '2025-05-01', 'Present', 8),
(2, 'Priya Singh', 'HR', '2025-05-01', 'Absent', 0),
(3, 'Ali Khan', 'IT', '2025-05-01', 'Present', 7),
(4, 'Riya Patel', 'Sales', '2025-05-01', 'Late', 6),
(5, 'David Brown', 'Marketing', '2025-05-01', 'Present', 8);


--CRUD Operations
-- 1.Add a new attendance record
INSERT INTO EmployeeAttendance VALUES
(6, 'Neha Sharma', 'Finance', '2025-05-01', 'Present', 8);

-- 2.Update attendance status
UPDATE EmployeeAttendance
SET Status = 'Present'
WHERE EmployeeName = 'Riya Patel' AND Date = '2025-05-01';

--3. Delete a record
DELETE FROM EmployeeAttendance
WHERE EmployeeName = 'Priya Singh' AND Date = '2025-05-01';

-- 4.Read all records sorted by EmployeeName
SELECT * FROM EmployeeAttendance
ORDER BY EmployeeName ASC;

--Sorting and Filtering

-- 5.Sort by HoursWorked descending
SELECT * FROM EmployeeAttendance
ORDER BY HoursWorked DESC;

--6. Filter by Department: IT
SELECT * FROM EmployeeAttendance
WHERE Department = 'IT';

--7. Present employees from IT
SELECT * FROM EmployeeAttendance
WHERE Department = 'IT' AND Status = 'Present';

--8. Absent or Late employees
SELECT * FROM EmployeeAttendance
WHERE Status = 'Absent' OR Status = 'Late';

--Aggregation and Grouping

-- 9.Total Hours Worked by Department
SELECT Department, SUM(HoursWorked) AS TotalHours
FROM EmployeeAttendance
GROUP BY Department;

-- 10.Average Hours Worked
SELECT AVG(HoursWorked) AS AverageHours
FROM EmployeeAttendance;

-- 11.Attendance Count by Status
SELECT Status, COUNT(*) AS Count
FROM EmployeeAttendance
GROUP BY Status;

--Conditional and Pattern Matching

-- 12.Names starting with 'R'
SELECT * FROM EmployeeAttendance
WHERE EmployeeName LIKE 'R%';

-- 13.Worked > 6 hours and Present
SELECT * FROM EmployeeAttendance
WHERE HoursWorked > 6 AND Status = 'Present';

--14. Worked between 6 and 8 hours
SELECT * FROM EmployeeAttendance
WHERE HoursWorked BETWEEN 6 AND 8;

 --Advanced Queries
 -- 15.Top 2 employees with most hours
SELECT TOP 2 * FROM EmployeeAttendance
ORDER BY HoursWorked DESC;

-- 16.Employees who worked less than average
SELECT * FROM EmployeeAttendance
WHERE HoursWorked < (
    SELECT AVG(HoursWorked) FROM EmployeeAttendance
);

-- 17.Avg hours per status
SELECT Status, AVG(HoursWorked) AS AvgHours
FROM EmployeeAttendance
GROUP BY Status;

--18. Duplicate entries on same date
SELECT EmployeeName, Date, COUNT(*) AS DuplicateCount
FROM EmployeeAttendance
GROUP BY EmployeeName, Date
HAVING COUNT(*) > 1;

--Join & Subqueries
-- 19.Department with most Present employees
SELECT TOP 1 Department, COUNT(*) AS PresentCount
FROM EmployeeAttendance
WHERE Status = 'Present'
GROUP BY Department
ORDER BY PresentCount DESC;

-- 20.Employee with max hours per department
SELECT Department, EmployeeName, HoursWorked
FROM EmployeeAttendance e1
WHERE HoursWorked = (
    SELECT MAX(HoursWorked)
    FROM EmployeeAttendance e2
    WHERE e1.Department = e2.Department
);
