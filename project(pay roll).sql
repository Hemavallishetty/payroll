create database payroll;

CREATE TABLE Users 
(
  UserID INT PRIMARY KEY,
  Username VARCHAR(50),
  Password VARCHAR(50),
  EmployeeID INT,
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

select*from Users;
DROP TABLE IF EXISTS Users;

INSERT INTO Users (UserID, Username, Password, EmployeeID)
VALUES(1, 'admin', 'adminpassword', 1),
  (2, 'manager1', 'manager1password', 2),
  (3, 'user1', 'user1password', 3),
  (4, 'manager2', 'manager2password', 4),
  (5, 'user2', 'user2password', 5),
  (6, 'user3', 'user3password', 6),
  (7, 'manager3', 'manager3password', 7),
  (8, 'user4', 'user4password', 8),
  (9, 'user5', 'user5password', 9),
  (10, 'user6', 'user6password', 10),
  (11, 'manager4', 'manager4password', 11),
  (12, 'user7', 'user7password', 12),
  (13, 'user8', 'user8password', 13),
  (14, 'user9', 'user9password', 14),
  (15, 'manager5', 'manager5password', 15),
  (16, 'user10', 'user10password', 16),
  (17, 'user11', 'user11password', 17),
  (18, 'manager6', 'manager6password', 18),
  (19, 'user12', 'user12password', 19),
  (20, 'user13', 'user13password', 20),
  (21, 'manager7', 'manager7password', 21),
  (22, 'user14', 'user14password', 22),
  (23, 'user15', 'user15password', 23),
  (24, 'user16', 'user16password', 24),
  (25, 'manager8', 'manager8password', 25),
  (26, 'user17', 'user17password', 26),
  (27, 'user18', 'user18password', 27),
  (28, 'manager9', 'manager9password', 28),
  (29, 'user19', 'user19password', 29),
  (30, 'user20', 'user20password', 30);


CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  DateOfBirth DATE,
  Department VARCHAR(50),
  Position VARCHAR(50)
);
select*from Employees;
DROP TABLE IF EXISTS Employees;

INSERT INTO Employees (EmployeeID, FirstName, LastName, DateOfBirth, Department, Position)
VALUES (1, 'Devangam', 'Hemavalli', '2004-05-15', 'Finance', 'Accountant'),
    (2, 'Jaya', 'Prasanna', '2003-09-20', 'HR', 'Manager'),
    (3, 'Vasu', 'praveen', '1995-03-10', 'Sales', 'Representative'),
    (4, 'Kaveti','Santhosh','2000-02-13','Sales','Supervisor'),
    (5, 'Kothapalle','vishnu','1998-04-11','Finance','Account Manager'),
    (6, 'Vera','Raghava','1995-02-01','Receptionist','Clerk'),
    (7, 'Avula','Sushruth','2000-08-09','Finance','manager'),   
    (8, 'Kandula','Sreemukhi','1999-05-11','HR','Project Manager'),
    (9, 'Bata','Ravi','2001-09-09','Receptionist','Supervisior'),
    (10,'Zera','Usha','1995-03-22','Sales','Executive Officer'),
	(11, 'william', 'Taylor', '1987-12-04', 'Human Resources', 'Coordinator'),
    (12, 'Emma', 'Martin', '1993-08-14', 'Finance', 'Manager'),
    (13, 'Christopher', 'Clark', '1996-02-20', 'Sales', 'Executive'),
    (14, 'Ava', 'Walker', '1990-06-02', 'Marketing', 'Analyst'),
    (15, 'Andrew', 'Hall', '1989-09-25', 'IT', 'System Administrator'),
    (16, 'Mia', 'Gonzalez', '1991-03-17', 'Operations', 'Manager'),
    (17, 'James', 'Lee', '1994-07-12', 'Research', 'Researcher'),
    (18, 'Isabella', 'Harris', '1992-11-05', 'Customer Service', 'Supervisor'),
    (19, 'Joseph', 'Young', '1998-01-22', 'Administration', 'Coordinator'),
    (20, 'Charlotte', 'Lopez', '1995-05-09', 'Engineering', 'Architect'),
    (21, 'Benjamin', 'King', '1993-10-07', 'Human Resources', 'Analyst'),
    (22, 'Harper', 'Anderson', '1988-04-12', 'Finance', 'Executive'),
    (23, 'Alexander', 'Adams', '1996-11-30', 'Sales', 'Representative'),
    (24, 'Ella', 'Thomas', '1991-01-15', 'Marketing', 'Manager'),
    (25, 'Daniel', 'Moore', '1994-06-28', 'IT', 'Developer'),
    (26, 'Victoria', 'Hill', '1990-09-22', 'Operations', 'Supervisor'),
    (27, 'Henry', 'Baker', '1993-12-11', 'Research', 'Scientist'),
    (28, 'Grace', 'Green', '1992-07-05', 'Customer Service', 'Agent'),
    (29, 'Samuel', 'Russell', '1997-02-19', 'Administration', 'Assistant'),
    (30, 'Lillian', 'Wright', '1995-08-07', 'Engineering', 'Engineer');


CREATE TABLE Salaries 
(
  SalaryID INT PRIMARY KEY,
  EmployeeID INT,
  SalaryAmount DECIMAL(10, 2),
  EffectiveDate DATE,
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

select*from Salaries;

INSERT INTO Salaries (SalaryID, EmployeeID, SalaryAmount, EffectiveDate)
VALUES( 1, 1, 5000, '2023-01-01'),
(2, 2, 4500, '2023-01-01'),
(3, 3, 6000, '2023-01-01'),
(4, 4, 5500, '2023-01-01'),
(5, 5, 4000, '2023-01-01'),
(6, 6, 5500, '2023-01-01'),
(7, 7, 4800, '2023-01-01'),
(8, 8, 5200, '2023-01-01'),
(9, 9, 6000, '2023-01-01'),
(10, 10, 4500, '2023-01-01'),
(11, 11, 4800, '2023-01-01'),
(12, 12, 5500, '2023-01-01'),
(13, 13, 5000, '2023-01-01'),
(14, 14, 4300, '2023-01-01'),
(15, 15, 5200, '2023-01-01'),
(16, 16, 4500, '2023-01-01'),
(17, 17, 5800, '2023-01-01'),
(18, 18, 5500, '2023-01-01'),
(19, 19, 4800, '2023-01-01'),
(20, 20, 5200, '2023-01-01'),
(21, 21, 4800, '2023-01-01'),
(22, 22, 5500, '2023-01-01'),
(23, 23, 5000, '2023-01-01'),
(24, 24, 4300, '2023-01-01'),
(25, 25, 5200, '2023-01-01'),
(26, 26, 4500, '2023-01-01'),
(27, 27, 5800, '2023-01-01'),
(28, 28, 5500, '2023-01-01'),
(29, 29, 4800, '2023-01-01'),
(30, 30, 5200, '2023-01-01');


CREATE TABLE TimeAttendance
(
  AttendanceID INT PRIMARY KEY,
  EmployeeID INT,
  ClockIn DATETIME,
  ClockOut DATETIME,
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

select *from TimeAttendance;

INSERT INTO TimeAttendance (AttendanceID, EmployeeID, ClockIn, ClockOut)
VALUES  (1, 1, '2023-05-01 09:00:00', '2023-05-01 17:00:00'),
  (2, 2, '2023-05-01 08:30:00', '2023-05-01 16:30:00'),
  (3, 3, '2023-05-01 08:00:00', '2023-05-01 16:00:00'),
  (4, 4, '2023-05-01 09:30:00', '2023-05-01 17:30:00'),
  (5, 5, '2023-05-01 08:15:00', '2023-05-01 16:15:00'),
  (6, 6, '2023-05-02 09:00:00', '2023-05-02 17:00:00'),
  (7, 7, '2023-05-02 08:30:00', '2023-05-02 16:30:00'),
  (8, 8, '2023-05-02 08:00:00', '2023-05-02 16:00:00'),
  (9, 9, '2023-05-02 09:30:00', '2023-05-02 17:30:00'),
  (10, 10, '2023-05-02 08:15:00', '2023-05-02 16:15:00'),
  (11, 11, '2023-05-03 09:00:00', '2023-05-03 17:00:00'),
  (12, 12, '2023-05-03 08:30:00', '2023-05-03 16:30:00'),
  (13, 13, '2023-05-03 08:00:00', '2023-05-03 16:00:00'),
  (14, 14, '2023-05-03 09:30:00', '2023-05-03 17:30:00'),
  (15, 15, '2023-05-03 08:15:00', '2023-05-03 16:15:00'),
  (16, 16, '2023-05-04 09:00:00', '2023-05-04 17:00:00'),
  (17, 17, '2023-05-04 08:30:00', '2023-05-04 16:30:00'),
  (18, 18, '2023-05-04 08:00:00', '2023-05-04 16:00:00'),
  (19, 19, '2023-05-04 09:30:00', '2023-05-04 17:30:00'),
  (20, 20, '2023-05-04 08:15:00', '2023-05-04 16:15:00'),
   (21, 21, '2023-05-05 09:00:00', '2023-05-05 17:00:00'),
  (22, 22, '2023-05-05 08:30:00', '2023-05-05 16:30:00'),
  (23, 23, '2023-05-05 08:00:00', '2023-05-05 16:00:00'),
  (24, 24, '2023-05-05 09:30:00', '2023-05-05 17:30:00'),
  (25, 25, '2023-05-05 08:15:00', '2023-05-05 16:15:00'),
  (26, 26, '2023-05-06 09:00:00', '2023-05-06 17:00:00'),
  (27, 27, '2023-05-06 08:30:00', '2023-05-06 16:30:00'),
  (28, 28, '2023-05-06 08:00:00', '2023-05-06 16:00:00'),
  (29, 29, '2023-05-06 09:30:00', '2023-05-06 17:30:00'),
  (30, 30, '2023-05-06 08:15:00', '2023-05-06 16:15:00');


CREATE TABLE Payments (
  PaymentID INT PRIMARY KEY,
  EmployeeID INT,
  SalaryID INT,
  PaymentDate DATE,
  AmountPaid DECIMAL(10, 2),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (SalaryID) REFERENCES Salaries(SalaryID)
);

select*from Payments;

INSERT INTO Payments (PaymentID, EmployeeID, SalaryID, PaymentDate, AmountPaid)
VALUES
    (1, 1, 1, '2023-05-01', 5000.00),
    (2, 2, 2, '2023-05-01', 8000.00),
    (3, 3, 3, '2023-05-01', 6000.00),
    (4, 4, 4, '2023-05-01', 5500.00),
    (5, 5, 5, '2023-05-01', 7000.00),
    (6, 6, 6, '2023-05-01', 6500.00),
    (7, 7, 7, '2023-05-01', 7500.00),
    (8, 8, 8, '2023-05-01', 9000.00),
    (9, 9, 9, '2023-05-01', 5200.00),
    (10, 10, 10, '2023-05-01', 6300.00),
    (11, 11, 11, '2023-05-01', 5800.00),
    (12, 12, 12, '2023-05-01', 6700.00),
    (13, 13, 13, '2023-05-01', 7200.00),
    (14, 14, 14, '2023-05-01', 5400.00),
    (15, 15, 15, '2023-05-01', 6100.00),
    (16, 16, 16, '2023-05-01', 8000.00),
    (17, 17, 17, '2023-05-01', 6900.00),
    (18, 18, 18, '2023-05-01', 5600.00),
    (19, 19, 19, '2023-05-01', 7500.00),
    (20, 20, 20, '2023-05-01', 8200.00),
    (21, 21, 21, '2023-05-01', 5000.00),
    (22, 22, 22, '2023-05-01', 7300.00),
    (23, 23, 23, '2023-05-01', 6800.00),
    (24, 24, 24, '2023-05-01', 5700.00),
    (25, 25, 25, '2023-05-01', 6400.00),
    (26, 26, 26, '2023-05-01', 5900.00),
    (27, 27, 27, '2023-05-01', 7100.00),
    (28, 28, 28, '2023-05-01', 7800.00),
    (29, 29, 29, '2023-05-01', 5300.00),
    (30, 30, 30, '2023-05-01', 6600.00);


CREATE TABLE Tax (
  TaxID INT PRIMARY KEY,
  EmployeeID INT,
  TaxRate DECIMAL(5, 2),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
select*from Tax;

INSERT INTO Tax (TaxID, EmployeeID, TaxRate)
VALUES
    (1, 1, 20.0),
    (2, 2, 18.5),
    (3, 3, 22.0),
    (4, 4, 19.0),
    (5, 5, 21.5),
    (6, 6, 17.5),
    (7, 7, 20.0),
    (8, 8, 19.5),
    (9, 9, 22.0),
    (10, 10, 18.0),
    (11, 11, 20.5),
    (12, 12, 17.0),
    (13, 13, 21.0),
    (14, 14, 18.5),
    (15, 15, 20.0),
    (16, 16, 19.0),
    (17, 17, 22.0),
    (18, 18, 18.5),
    (19, 19, 20.0),
    (20, 20, 19.5),
    (21, 21, 22.0),
    (22, 22, 17.5),
    (23, 23, 20.0),
    (24, 24, 19.0),
    (25, 25, 18.5),
    (26, 26, 21.0),
    (27, 27, 19.5),
    (28, 28, 20.0),
    (29, 29, 22.0),
    (30, 30, 17.0);

CREATE TABLE Payroll (
  PayrollID INT PRIMARY KEY,
  EmployeeID INT,
  PayrollDate DATE,
  NetPay DECIMAL(10, 2),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

select*from Payroll;

INSERT INTO Payroll (PayrollID, EmployeeID, PayrollDate, NetPay)
VALUES
    (1, 1, '2023-05-31', 4500.00),
    (2, 2, '2023-05-31', 6500.00),
    (3, 3, '2023-05-31', 5000.00),
    (4, 4, '2023-05-31', 5200.00),
    (5, 5, '2023-05-31', 6000.00),
    (6, 6, '2023-05-31', 4800.00),
    (7, 7, '2023-05-31', 5500.00),
    (8, 8, '2023-05-31', 6200.00),
    (9, 9, '2023-05-31', 4700.00),
    (10, 10, '2023-05-31', 5700.00),
    (11, 11, '2023-05-31', 5200.00),
    (12, 12, '2023-05-31', 5400.00),
    (13, 13, '2023-05-31', 5800.00),
    (14, 14, '2023-05-31', 5000.00),
    (15, 15, '2023-05-31', 5600.00),
    (16, 16, '2023-05-31', 6300.00),
    (17, 17, '2023-05-31', 5100.00),
    (18, 18, '2023-05-31', 5400.00),
    (19, 19, '2023-05-31', 5900.00),
    (20, 20, '2023-05-31', 6600.00),
    (21, 21, '2023-05-31', 4800.00),
    (22, 22, '2023-05-31', 5400.00),
    (23, 23, '2023-05-31', 6100.00),
    (24, 24, '2023-05-31', 5300.00),
    (25, 25, '2023-05-31', 5700.00),
    (26, 26, '2023-05-31', 6000.00),
    (27, 27, '2023-05-31', 5200.00),
    (28, 28, '2023-05-31', 5900.00),
    (29, 29, '2023-05-31', 6400.00),
    (30, 30, '2023-05-31', 5000.00);


 CREATE TABLE Deductions (
  deduction_id INT PRIMARY KEY,
  employeeID INT,
  deduction_type VARCHAR(50),
  deduction_amount DECIMAL(10, 2),
   FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
select*from Deductions;

INSERT INTO Deductions (deduction_id, employeeID, deduction_type, deduction_amount)
VALUES
    (1, 1, 'Insurance', 100.00),
    (2, 2, 'Loan', 50.00),
    (3, 3, 'Retirement', 75.00),
    (4, 4, 'Insurance', 80.00),
    (5, 5, 'Loan', 30.00),
    (6, 6, 'Retirement', 70.00),
    (7, 7, 'Insurance', 90.00),
    (8, 8, 'Loan', 60.00),
    (9, 9, 'Retirement', 85.00),
    (10, 10, 'Insurance', 95.00),
    (11, 11, 'Loan', 40.00),
    (12, 12, 'Retirement', 65.00),
    (13, 13, 'Insurance', 75.00),
    (14, 14, 'Loan', 55.00),
    (15, 15, 'Retirement', 80.00),
    (16, 16, 'Insurance', 85.00),
    (17, 17, 'Loan', 45.00),
    (18, 18, 'Retirement', 70.00),
    (19, 19, 'Insurance', 90.00),
    (20, 20, 'Loan', 50.00),
    (21, 21, 'Retirement', 75.00),
    (22, 22, 'Insurance', 95.00),
    (23, 23, 'Loan', 60.00),
    (24, 24, 'Retirement', 80.00),
    (25, 25, 'Insurance', 80.00),
    (26, 26, 'Loan', 30.00),
    (27, 27, 'Retirement', 70.00),
    (28, 28, 'Insurance', 90.00),
    (29, 29, 'Loan', 55.00),
    (30, 30, 'Retirement', 85.00);

 CREATE TABLE Benefits (
  benefit_id INT PRIMARY KEY,
  employeeID INT,
  benefit_type VARCHAR(50),
  benefit_details VARCHAR(100),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
select*from Benefits;

INSERT INTO Benefits (benefit_id, employeeID, benefit_type, benefit_details)
VALUES
    (1, 1, 'Healthcare', 'Medical and dental coverage'),
    (2, 2, 'Retirement Plan', '401(k) matching'),
    (3, 3, 'Vacation Days', '20 days per year'),
    (4, 4, 'Healthcare', 'Medical and dental coverage'),
    (5, 5, 'Retirement Plan', '401(k) matching'),
    (6, 6, 'Vacation Days', '20 days per year'),
    (7, 7, 'Healthcare', 'Medical and dental coverage'),
    (8, 8, 'Retirement Plan', '401(k) matching'),
    (9, 9, 'Vacation Days', '20 days per year'),
    (10, 10, 'Healthcare', 'Medical and dental coverage'),
    (11, 11, 'Retirement Plan', '401(k) matching'),
    (12, 12, 'Vacation Days', '20 days per year'),
    (13, 13, 'Healthcare', 'Medical and dental coverage'),
    (14, 14, 'Retirement Plan', '401(k) matching'),
    (15, 15, 'Vacation Days', '20 days per year'),
    (16, 16, 'Healthcare', 'Medical and dental coverage'),
    (17, 17, 'Retirement Plan', '401(k) matching'),
    (18, 18, 'Vacation Days', '20 days per year'),
    (19, 19, 'Healthcare', 'Medical and dental coverage'),
    (20, 20, 'Retirement Plan', '401(k) matching'),
    (21, 21, 'Vacation Days', '20 days per year'),
    (22, 22, 'Healthcare', 'Medical and dental coverage'),
    (23, 23, 'Retirement Plan', '401(k) matching'),
    (24, 24, 'Vacation Days', '20 days per year'),
    (25, 25, 'Healthcare', 'Medical and dental coverage'),
    (26, 26, 'Retirement Plan', '401(k) matching'),
    (27, 27, 'Vacation Days', '20 days per year'),
    (28, 28, 'Healthcare', 'Medical and dental coverage'),
    (29, 29, 'Retirement Plan', '401(k) matching'),
    (30, 30, 'Vacation Days', '20 days per year');

CREATE TABLE Leave (
  leave_id INT PRIMARY KEY,
  employeeID INT,
  leave_type VARCHAR(50),
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (EmployeeID)REFERENCES Employees(EmployeeID)
  );

  select *from Leave;

  INSERT INTO Leave (leave_id, employeeID, leave_type, start_date, end_date)
VALUES
    (1, 1, 'Vacation', '2023-06-01', '2023-06-07'),
    (2, 2, 'Sick Leave', '2023-05-25', '2023-05-26'),
    (3, 3, 'Personal Leave', '2023-07-10', '2023-07-12'),
    (4, 4, 'Vacation', '2023-06-15', '2023-06-21'),
    (5, 5, 'Sick Leave', '2023-05-28', '2023-05-29'),
    (6, 6, 'Personal Leave', '2023-07-15', '2023-07-17'),
    (7, 7, 'Vacation', '2023-06-10', '2023-06-16'),
    (8, 8, 'Sick Leave', '2023-05-31', '2023-06-01'),
    (9, 9, 'Personal Leave', '2023-07-20', '2023-07-22'),
    (10, 10, 'Vacation', '2023-06-20', '2023-06-26'),
    (11, 11, 'Sick Leave', '2023-06-03', '2023-06-04'),
    (12, 12, 'Personal Leave', '2023-08-01', '2023-08-03'),
    (13, 13, 'Vacation', '2023-06-25', '2023-07-01'),
    (14, 14, 'Sick Leave', '2023-06-06', '2023-06-07'),
    (15, 15, 'Personal Leave', '2023-08-10', '2023-08-12'),
    (16, 16, 'Vacation', '2023-07-01', '2023-07-07'),
    (17, 17, 'Sick Leave', '2023-06-09', '2023-06-10'),
    (18, 18, 'Personal Leave', '2023-08-20', '2023-08-22'),
    (19, 19, 'Vacation', '2023-07-10', '2023-07-16'),
    (20, 20, 'Sick Leave', '2023-06-12', '2023-06-13'),
    (21, 21, 'Personal Leave', '2023-08-30', '2023-09-01'),
    (22, 22, 'Vacation', '2023-07-15', '2023-07-21'),
    (23, 23, 'Sick Leave', '2023-06-15', '2023-06-16'),
    (24, 24, 'Personal Leave', '2023-09-10', '2023-09-12'),
    (25, 25, 'Vacation', '2023-07-20', '2023-07-26'),
    (26, 26, 'Sick Leave', '2023-06-18', '2023-06-19'),
    (27, 27, 'Personal Leave', '2023-09-20', '2023-09-22'),
    (28, 28, 'Vacation', '2023-07-25', '2023-07-31'),
    (29, 29, 'Sick Leave', '2023-06-21', '2023-06-22'),
    (30, 30, 'Personal Leave', '2023-09-30', '2023-10-02');


  CREATE TABLE Overtime 
  (
  overtime_id INT PRIMARY KEY,
  employeeID INT,
  overtime_hours DECIMAL(5, 2),
  FOREIGN KEY (EmployeeID)REFERENCES Employees(EmployeeID)
  );
  select*from Overtime;
INSERT INTO Overtime (overtime_id, employeeID, overtime_hours)
VALUES
    (1, 1, 5.5),
    (2, 2, 3.25),
    (3, 3, 4.75),
    (4, 4, 2.5),
    (5, 5, 4.0),
    (6, 6, 6.25),
    (7, 7, 3.75),
    (8, 8, 2.0),
    (9, 9, 5.0),
    (10, 10, 3.5),
    (11, 11, 4.25),
    (12, 12, 6.75),
    (13, 13, 2.25),
    (14, 14, 4.5),
    (15, 15, 5.25),
    (16, 16, 3.0),
    (17, 17, 4.75),
    (18, 18, 7.0),
    (19, 19, 2.75),
    (20, 20, 4.25),
    (21, 21, 5.75),
    (22, 22, 3.25),
    (23, 23, 4.5),
    (24, 24, 7.25),
    (25, 25, 2.0),
    (26, 26, 4.75),
    (27, 27, 6.5),
    (28, 28, 3.0),
    (29, 29, 4.25),
    (30, 30, 7.5);

  CREATE TABLE Performance (
  performance_id INT PRIMARY KEY,
  employeeID INT,
  performance_rating INT,
  FOREIGN KEY (employeeID) REFERENCES EmployeeS(employeeID)
);
select*from Performance;

INSERT INTO Performance (performance_id, employeeID, performance_rating)
VALUES
    (1, 1, 4),
    (2, 2, 3),
    (3, 3, 5),
    (4, 4, 4),
    (5, 5, 3),
    (6, 6, 5),
    (7, 7, 4),
    (8, 8, 3),
    (9, 9, 5),
    (10, 10, 4),
    (11, 11, 3),
    (12, 12, 5),
    (13, 13, 4),
    (14, 14, 3),
    (15, 15, 5),
    (16, 16, 4),
    (17, 17, 3),
    (18, 18, 5),
    (19, 19, 4),
    (20, 20, 3),
    (21, 21, 5),
    (22, 22, 4),
    (23, 23, 3),
    (24, 24, 5),
    (25, 25, 4),
    (26, 26, 3),
    (27, 27, 5),
    (28, 28, 4),
    (29, 29, 3),
    (30, 30, 5);


CREATE TABLE BankAccount (
  account_id INT PRIMARY KEY,
  employeeID INT,
  account_number VARCHAR(20),
  bank_name VARCHAR(50),
  FOREIGN KEY (employeeID) REFERENCES EmployeeS(employeeID)
);
select*from BankAccount;

INSERT INTO BankAccount (account_id, employeeID, account_number, bank_name)
VALUES
    (1, 1, '123456789', 'canara'),
    (2, 2, '987654321', 'SBI'),
    (3, 3, '567890123', 'UNION'),
    (4, 4, '234567890', 'syndicate'),
    (5, 5, '789012345', 'HSBC'),
    (6, 6, '345678901', 'Karnataka bank'),
    (7, 7, '901234567', 'TD Bank'),
    (8, 8, '456789012', 'PNC Bank'),
    (9, 9, '012345678', 'US Bank'),
    (10, 10, '678901234', 'andhra bank'),
    (11, 11, '345678901', 'BB&T'),
    (12, 12, '890123456', 'SunTrust'),
    (13, 13, '456789012', 'pragati bank'),
    (14, 14, '012345678', 'Santander Bank'),
    (15, 15, '567890123', 'Fifth Third Bank'),
    (16, 16, '123456789', 'KeyBank'),
    (17, 17, '789012345', 'M&T Bank'),
    (18, 18, '234567890', 'Citizens Bank'),
    (19, 19, '890123456', 'Union Bank'),
    (20, 20, '345678901', 'BBVA USA'),
    (21, 21, '901234567', 'Comerica Bank'),
    (22, 22, '456789012', 'Huntington Bank'),
    (23, 23, '012345678', 'Ally Bank'),
    (24, 24, '567890123', 'First Republic Bank'),
    (25, 25, '123456789', 'Discover Bank'),
    (26, 26, '789012345', 'BMO Harris Bank'),
    (27, 27, '234567890', 'Charles Schwab Bank'),
    (28, 28, '890123456', 'Synchrony Bank'),
    (29, 29, '345678901', 'First National Bank'),
    (30, 30, '901234567', 'Citizens Equity First Credit Union');


CREATE TABLE POSITIONS 
(
  position_id INT PRIMARY KEY,
  position_name VARCHAR(50),
  min_salary DECIMAL(10, 2),
  max_salary DECIMAL(10, 2)
);

DROP TABLE IF EXISTS POSITIONS;
select*from POSITIONS;

INSERT INTO Positions (position_id, position_name, min_salary, max_salary)
VALUES
    (1, 'Manager', 50000.00, 100000.00),
    (2, 'Accountant', 40000.00, 80000.00),
    (3, 'Administrator', 35000.00, 70000.00),
    (4, 'Engineer', 45000.00, 90000.00),
    (5, 'Sales Representative', 30000.00, 60000.00),
    (6, 'HR Specialist', 35000.00, 70000.00),
    (7, 'Marketing Coordinator', 30000.00, 60000.00),
    (8, 'IT Analyst', 40000.00, 80000.00),
    (9, 'Customer Service Representative', 25000.00, 50000.00),
    (10, 'Operations Manager', 60000.00, 120000.00),
    (11, 'Financial Analyst', 45000.00, 90000.00),
    (12, 'Project Manager', 55000.00, 110000.00),
    (13, 'Business Development Manager', 50000.00, 100000.00),
    (14, 'Quality Assurance Engineer', 40000.00, 80000.00),
    (15, 'Legal Counsel', 60000.00, 120000.00),
    (16, 'Research Scientist', 50000.00, 100000.00),
    (17, 'Data Analyst', 40000.00, 80000.00),
    (18, 'Product Manager', 55000.00, 110000.00),
    (19, 'Graphic Designer', 30000.00, 60000.00),
    (20, 'Operations Coordinator', 35000.00, 70000.00),
    (21, 'Supply Chain Analyst', 40000.00, 80000.00),
    (22, 'Public Relations Specialist', 30000.00, 60000.00),
    (23, 'Training and Development Manager', 55000.00, 110000.00),
    (24, 'Systems Administrator', 45000.00, 90000.00),
    (25, 'Executive Assistant', 35000.00, 70000.00),
    (26, 'Network Engineer', 40000.00, 80000.00),
    (27, 'Operations Supervisor', 50000.00, 100000.00),
    (28, 'Financial Controller', 60000.00, 120000.00),
    (29, 'UX/UI Designer', 45000.00, 90000.00),
    (30, 'Business Analyst', 40000.00, 80000.00);


CREATE TABLE SalaryRange (
  position_id INT PRIMARY KEY,
  min_salary DECIMAL(10, 2),
  max_salary DECIMAL(10, 2),
  FOREIGN KEY (position_id) REFERENCES Positions(position_id)
);
select*from SalaryRange;

INSERT INTO SalaryRange (position_id, min_salary, max_salary)
VALUES
    (1, 50000.00, 80000.00),
    (2, 35000.00, 60000.00),
    (3, 30000.00, 50000.00),
    (4, 45000.00, 70000.00),
    (5, 30000.00, 55000.00),
    (6, 35000.00, 60000.00),
    (7, 30000.00, 55000.00),
    (8, 40000.00, 70000.00),
    (9, 25000.00, 45000.00),
    (10, 55000.00, 90000.00),
    (11, 40000.00, 70000.00),
    (12, 50000.00, 85000.00),
    (13, 45000.00, 80000.00),
    (14, 35000.00, 60000.00),
    (15, 60000.00, 100000.00),
    (16, 50000.00, 85000.00),
    (17, 40000.00, 70000.00),
    (18, 55000.00, 90000.00),
    (19, 30000.00, 55000.00),
    (20, 35000.00, 60000.00),
    (21, 40000.00, 70000.00),
    (22, 30000.00, 55000.00),
    (23, 55000.00, 90000.00),
    (24, 45000.00, 70000.00),
    (25, 35000.00, 60000.00),
    (26, 40000.00, 70000.00),
    (27, 50000.00, 85000.00),
    (28, 60000.00, 100000.00),
    (29, 45000.00, 80000.00),
    (30, 40000.00, 70000.00);

CREATE TABLE TaxRate (
  tax_rate_id INT PRIMARY KEY,
  min_income DECIMAL(10, 2),
  max_income DECIMAL(10, 2),
  tax_rate DECIMAL(5, 2)
);
select*from TaxRate;
INSERT INTO TaxRate (tax_rate_id, min_income, max_income, tax_rate)
VALUES
    (1, 0.00, 10000.00, 0.10),
    (2, 10000.01, 50000.00, 0.20),
    (3, 50000.01, 100000.00, 0.30),
    (4, 100000.01, NULL, 0.40),
    (5, 0.00, 15000.00, 0.12),
    (6, 15000.01, 60000.00, 0.22),
    (7, 60000.01, 120000.00, 0.32),
    (8, 120000.01, NULL, 0.42),
    (9, 0.00, 20000.00, 0.15),
    (10, 20000.01, 70000.00, 0.25),
    (11, 70000.01, 130000.00, 0.35),
    (12, 130000.01, NULL, 0.45),
    (13, 0.00, 25000.00, 0.18),
    (14, 25000.01, 80000.00, 0.28),
    (15, 80000.01, 140000.00, 0.38),
    (16, 140000.01, NULL, 0.48),
    (17, 0.00, 30000.00, 0.20),
    (18, 30000.01, 90000.00, 0.30),
    (19, 90000.01, 150000.00, 0.40),
    (20, 150000.01, NULL, 0.50),
    (21, 0.00, 35000.00, 0.22),
    (22, 35000.01, 100000.00, 0.32),
    (23, 100000.01, 200000.00, 0.42),
    (24, 200000.01, NULL, 0.52),
    (25, 0.00, 40000.00, 0.25),
    (26, 40000.01, 120000.00, 0.35),
    (27, 120000.01, 250000.00, 0.45),
    (28, 250000.01, NULL, 0.55),
    (29, 0.00, 45000.00, 0.28),
    (30, 45000.01, 140000.00, 0.38);

CREATE TABLE DeductionTypes (
  deduction_type_id INT PRIMARY KEY,
  deduction_type_name VARCHAR(50)
);
select *from DeductionTypes;
INSERT INTO DeductionTypes (deduction_type_id, deduction_type_name)
VALUES
    (1, 'Insurance'),
    (2, 'Loan'),
    (3, 'Retirement'),
    (4, 'Tax'),
    (5, 'Standard'),
    (6, 'Healthcare'),
    (7, 'Childcare'),
    (8, 'Union Dues'),
    (9, 'Charitable Contributions'),
    (10, 'Garnishments'),
    (11, 'Education Loan'),
    (12, 'Parking Fee'),
    (13, 'Uniforms'),
    (14, 'Cellphone Plan'),
    (15, 'Fitness Membership'),
    (16, 'Professional Memberships'),
    (17, 'Employee Assistance Program'),
    (18, 'Company Car Usage'),
    (19, 'Meal Plan'),
    (20, 'Travel Expenses'),
    (21, 'Computer Equipment'),
    (22, 'Internet Service'),
    (23, 'Housing Allowance'),
    (24, 'Vehicle Allowance'),
    (25, 'Company Stock Purchase'),
    (26, 'Professional Development'),
    (27, 'Bonus Deduction'),
    (28, 'Late Arrival'),
    (29, 'Overpayment Recovery'),
    (30, 'Other Deduction');


  CREATE TABLE Projects (
  ProjectID INT PRIMARY KEY,
  ProjectName VARCHAR(100),
  StartDate DATE,
  EndDate DATE,
  Status VARCHAR(20)
);

select *from Projects;
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Status)
VALUES
  (1, 'Project A', '2023-05-01', '2023-06-30', 'In Progress'),
  (2, 'Project B', '2023-06-15', '2023-08-31', 'In Progress'),
  (3, 'Project C', '2023-05-10', '2023-07-15', 'Completed'),
  (4, 'Project D', '2023-07-01', '2023-09-30', 'In Progress'),
  (5, 'Project E', '2023-06-01', '2023-08-15', 'In Progress'),
  (6, 'Project F', '2023-07-10', '2023-09-15', 'In Progress'),
  (7, 'Project G', '2023-05-15', '2023-06-30', 'Completed'),
  (8, 'Project H', '2023-06-10', '2023-08-31', 'In Progress'),
  (9, 'Project I', '2023-07-15', '2023-09-30', 'In Progress'),
  (10, 'Project J', '2023-06-01', '2023-07-31', 'Completed'),
  (11, 'Project K', '2023-07-01', '2023-08-15', 'In Progress'),
  (12, 'Project L', '2023-08-10', '2023-10-31', 'In Progress'),
  (13, 'Project M', '2023-09-15', '2023-11-30', 'In Progress'),
  (14, 'Project N', '2023-08-01', '2023-10-15', 'Completed'),
  (15, 'Project O', '2023-09-10', '2023-11-15', 'In Progress'),
  (16, 'Project P', '2023-10-15', '2023-12-31', 'In Progress'),
  (17, 'Project Q', '2023-11-01', '2024-01-15', 'In Progress'),
  (18, 'Project R', '2023-10-10', '2023-12-15', 'Completed'),
  (19, 'Project S', '2023-11-15', '2024-01-31', 'In Progress'),
  (20, 'Project T', '2023-12-01', '2024-02-15', 'In Progress'),
  (21, 'Project U', '2023-12-15', '2024-03-31', 'In Progress'),
  (22, 'Project V', '2024-01-01', '2024-04-15', 'In Progress'),
  (23, 'Project W', '2023-12-10', '2024-03-15', 'Completed'),
  (24, 'Project X', '2024-01-15', '2024-04-30', 'In Progress'),
  (25, 'Project Y', '2024-02-01', '2024-05-15', 'In Progress'),
  (26, 'Project Z', '2024-02-15', '2024-05-31', 'In Progress'),
  (27, 'Project AA', '2024-03-01', '2024-06-15', 'In Progress'),
  (28, 'Project BB', '2024-03-15', '2024-06-30', 'In Progress'),
  (29, 'Project CC', '2024-04-01', '2024-07-15', 'In Progress'),
  (30, 'Project DD', '2024-04-15', '2024-07-31', 'In Progress');


   
select*from USERS;
select*from  Employees;
select*from  POSITIONS;
select*from  Salaries;
select*from  TimeAttendance;
select*from  Deductions;
select*from  Benefits;
select*from  Leave;
select*from  Overtime;
select*from  Performance;
select*from  BankAccount;
select*from  SalaryRange;
select*from  TaxRate;
select*from  Tax;
select*from  Payroll;
select*from  DeductionTypes;
select *from Projects;


 
--1 the usernames and their corresponding employee names for users who have a salary greater than the average salary:

SELECT u.Username, e.Employeeid
FROM Users u
INNER JOIN Salaries s ON u.EmployeeID = s.EmployeeID
INNER JOIN Employees e ON u.EmployeeID = e.EmployeeID
WHERE s.SalaryAmount > (
  SELECT AVG(SalaryAmount)
  FROM Salaries
);

--the usernames and the latest salary amounts for each user:
SELECT u.Username, s.SalaryAmount
FROM Users u
INNER JOIN Salaries s ON u.EmployeeID = s.EmployeeID
WHERE s.EffectiveDate = (
  SELECT MAX(EffectiveDate)
  FROM Salaries
  WHERE EmployeeID = u.EmployeeID
);

--the usernames and the difference in salary amount from the previous salary for each user:
SELECT u.Username, s.SalaryAmount - (
  SELECT MAX(SalaryAmount)
  FROM Salaries
  WHERE EmployeeID = u.EmployeeID AND EffectiveDate < s.EffectiveDate
) AS SalaryDifference
FROM Users u
INNER JOIN Salaries s ON u.EmployeeID = s.EmployeeID;

--
--2-Query using nested loops to retrieve the username, department, and salary amount of all users:

SELECT Username, Department, SalaryAmount
FROM Users, Employees, Salaries
WHERE Users.EmployeeID = Employees.EmployeeID
AND Users.EmployeeID = Salaries.EmployeeID;

--3-
--4-Query using a JOIN to retrieve the username, department, and project name of all users and their corresponding projects:

SELECT Users.Username, Employees.Department, Projects.ProjectName
FROM Users
INNER JOIN Employees ON Users.EmployeeID = Employees.EmployeeID
INNER JOIN Projects ON Users.EmployeeID = Projects.ProjectID;

--5-
SELECT * FROM DepartmentSalaryTotal;

--6--Query using a JOIN to retrieve the username, department, and total salary amount for each user:

SELECT Users.Username, Employees.Department, SUM(Salaries.SalaryAmount) AS TotalSalary
FROM Users
INNER JOIN Employees ON Users.EmployeeID = Employees.EmployeeID
INNER JOIN Salaries ON Users.EmployeeID = Salaries.EmployeeID
GROUP BY Users.Username, Employees.Department;

--7-Query to retrieve all employees whose names start with 'A',second letter'a' and ends before 3 places:

SELECT EmployeeID, LastName
FROM Employees
WHERE Lastname LIKE 'A%';

SELECT EmployeeID, LastName
FROM Employees
WHERE Lastname LIKE '_A%';

SELECT EmployeeID, LastName
FROM Employees
WHERE Lastname LIKE '%a__';

--8-Query using nested loops to retrieve the username, department, and project name of all users and their corresponding projects:
SELECT Users.Username, Employees.Department, Projects.ProjectName
FROM Users, Employees, Projects
WHERE Users.EmployeeID = Employees.EmployeeID
AND Users.EmployeeID = Projects.ProjectID;

--9-Query to retrieve all employees who have a salary greater than $5500:

SELECT e.EmployeeID, e.FirstName, e.LastName, s.SalaryAmount
FROM employees e
JOIN salaries s ON e.EmployeeID = s.EmployeeID
WHERE s.SalaryAmount > 5500;

--10-Query to retrieve all employees who work in the same department as John:

SELECT EmployeeID, lastName, Department
FROM Employees
WHERE Department = (
    SELECT Department
    FROM Employees
    WHERE lastName = 'ravi'
);

--11-Query using LEFT JOIN to retrieve the username, department, and salary amount of all users, including those without a salary record:


SELECT Users.Username, Employees.Department, Salaries.SalaryAmount
FROM Users
INNER JOIN Employees ON Users.EmployeeID = Employees.EmployeeID
LEFT JOIN Salaries ON Users.EmployeeID = Salaries.EmployeeID;

--12-the usernames and their corresponding employee id for users who have clocked in late:
SELECT u.Username, e.Employeeid
FROM Users u
INNER JOIN TimeAttendance t ON u.EmployeeID = t.EmployeeID
INNER JOIN Employees e ON u.EmployeeID = e.EmployeeID
WHERE CAST(t.ClockIn AS TIME) > '09:00:00'; 

--13- the total number of users for each department:
SELECT e.Department, COUNT(u.UserID) AS UserCount
FROM Users u
INNER JOIN Employees e ON u.EmployeeID = e.EmployeeID
GROUP BY e.Department;


--14-Retrieve the employees who have clocked in late:
SELECT Firstname,department
FROM Employees
INNER JOIN TimeAttendance ON Employees.EmployeeID = TimeAttendance.EmployeeID
WHERE TimeAttendance.ClockIn > '2023-05-02 16:00:00';

--15-Retrieve the employees and their corresponding deduction types:
SELECT Employees.FirstName, Employees.LastName, DeductionTypes.deduction_type_name
FROM Employees
LEFT JOIN DeductionTypes ON Employees.EmployeeID = DeductionTypes.deduction_type_id;

--16-Retrieving employee details with their corresponding tax rates:
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Tax.TaxRate
FROM Employees
INNER JOIN Tax ON Employees.EmployeeID = Tax.EmployeeID;

--17-Retrieve employees and their corresponding tax rates for calculating tax benefits:
SELECT Employees.EmployeeID, Tax.TaxRate
FROM Employees
INNER JOIN Tax ON Employees.EmployeeID = Tax.EmployeeID;


--18-Retrieve the employees who have been promoted to a higher position:
SELECT EmployeeID, FirstName, LastName, Position
FROM Employees
WHERE Position <> 'Manager' AND Position <> 'Director';

--19-the number of late clock-ins for each employee per month:
SELECT t.EmployeeID, YEAR(t.ClockIn) AS Year, MONTH(t.ClockIn) AS Month, COUNT(*) AS LateClockIns
FROM TimeAttendance t
WHERE CAST(t.ClockIn AS TIME) > '09:00:00' -- Specify the late arrival time
GROUP BY t.EmployeeID, YEAR(t.ClockIn), MONTH(t.ClockIn);

--20-the highest paid employee and their payment details:
SELECT e.*, p.AmountPaid
FROM Employees e
INNER JOIN Payments p ON e.EmployeeID = p.EmployeeID
WHERE p.AmountPaid = (
  SELECT MAX(AmountPaid)
  FROM Payments
);

--21-Get the average payment amount by department:
SELECT Department, AVG(AmountPaid) AS AveragePayment
FROM Payments
INNER JOIN Employees ON Payments.EmployeeID = Employees.EmployeeID
GROUP BY Department;

--22-Get the highest payment amount and the corresponding employee:
SELECT E.FirstName, E.LastName, P.AmountPaid
FROM Payments P
INNER JOIN Employees E ON P.EmployeeID = E.EmployeeID
WHERE P.AmountPaid = (SELECT MAX(AmountPaid) FROM Payments);

--23-Retrieve the total amount paid for each payment date:
SELECT PaymentDate, SUM(AmountPaid) AS TotalAmountPaid
FROM Payments
GROUP BY PaymentDate;

--24-Retrieve payments for employees in a specific department:
SELECT E.FirstName, E.LastName, P.PaymentDate, P.AmountPaid
FROM Payments P
INNER JOIN Employees E ON P.EmployeeID = E.EmployeeID
WHERE E.Department = 'Sales';

--25-Retrieve the current salary for each employee:
SELECT E.FirstName, E.LastName, S.SalaryAmount
FROM Employees E
INNER JOIN Salaries S ON E.EmployeeID = S.EmployeeID
WHERE S.EffectiveDate = (SELECT MAX(EffectiveDate) FROM Salaries WHERE EmployeeID = E.EmployeeID);

--26-Retrieve the average salary for each department:
SELECT E.Department, AVG(S.SalaryAmount) AS AverageSalary
FROM Employees E
INNER JOIN Salaries S ON E.EmployeeID = S.EmployeeID
GROUP BY E.Department;


--27-Retrieve the highest salary amount and the corresponding employee:
SELECT E.FirstName, E.LastName, S.SalaryAmount
FROM Salaries S
INNER JOIN Employees E ON S.EmployeeID = E.EmployeeID
WHERE S.SalaryAmount = (SELECT MAX(SalaryAmount) FROM Salaries);

--28-Retrieve all employees and their positions:
SELECT E.FirstName, E.LastName, P.position_name
FROM Employees E
INNER JOIN POSITIONS P ON E.Position = P.position_name;

--29-Retrieve employees and their department in alphabetical order:
SELECT FirstName, LastName, Department
FROM Employees
ORDER BY Department, LastName, FirstName;

--30-the employees who have received a payment above the average salary:
SELECT e.FirstName, e.LastName, p.AmountPaid
FROM Employees e
INNER JOIN Payments p ON e.EmployeeID = p.EmployeeID
WHERE p.AmountPaid > (
  SELECT AVG(AmountPaid)
  FROM Payments
)


--31-Get the total number of employees in each department:
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

--32-Get the total salary budget for each department:
SELECT E.Department, SUM(P.max_salary) AS TotalBudget
FROM Employees E
INNER JOIN POSITIONS P ON E.Position = P.position_name
GROUP BY E.Department;

--33-Retrieve bank account details for a specific employee:
SELECT E.FirstName, E.LastName, B.account_number, B.bank_name
FROM Employees E
INNER JOIN BankAccount B ON E.EmployeeID = B.employeeID
WHERE E.EmployeeID = 9;


--34-Retrieve employees and their associated deduction types:
SELECT E.FirstName, E.LastName, D.deduction_type_name
FROM Employees E
INNER JOIN DeductionTypes D ON E.EmployeeID = D.deduction_type_id;


--35-Retrieve the total number of employees for each deduction type:
SELECT D.deduction_type_name, COUNT(E.EmployeeID) AS TotalEmployees
FROM DeductionTypes D
LEFT JOIN Employees E ON D.deduction_type_id = E.EmployeeID
GROUP BY D.deduction_type_name;


--36-Retrieve employees with a performance rating above a certain threshold:
SELECT E.FirstName, E.LastName
FROM Employees E
INNER JOIN Performance P ON E.EmployeeID = P.employeeID
WHERE P.performance_rating > 4;

--37-Retrieve employees and their corresponding tax rates based on their income:
SELECT E.FirstName, E.LastName, T.tax_rate
FROM Employees E
INNER JOIN TaxRate T ON tax_rate_id BETWEEN T.min_income AND T.max_income;


--38-Retrieve all leave records for employees:
SELECT L.leave_id, E.FirstName, E.LastName, L.leave_type, L.start_date, L.end_date
FROM Leave L
INNER JOIN Employees E ON L.employeeID = E.EmployeeID;


--39-Retrieve employees who have taken leave within a specific date range:
SELECT E.FirstName, E.LastName, L.leave_type, L.start_date, L.end_date
FROM Employees E
INNER JOIN Leave L ON E.EmployeeID = L.employeeID
WHERE L.start_date BETWEEN '2023-07-01' AND '2023-09-07';

--40-Retrieve the employee details for bank accounts with a specific bank name:

SELECT b.account_id, b.account_number, b.bank_name, e.employeeID
FROM BankAccount b
JOIN EmployeeS e ON b.employeeID = e.employeeID
WHERE b.bank_name = 'karnataka bank';

--41-Retrieving Bank Account Details for Employees with Performance Ratings below Average:
SELECT ba.*
FROM BankAccount ba
WHERE ba.employeeID IN (
  SELECT p.employeeID FROM Performance p
  GROUP BY p.employeeID
           HAVING AVG(p.performance_rating) < (SELECT AVG(performance_rating)FROM Performance)
);

--42-Retrieving Bank Account Details for Employees with High Performance Ratings:
SELECT ba.*
FROM BankAccount ba
WHERE ba.employeeID IN (
  SELECT p.employeeID
  FROM Performance p
  WHERE p.performance_rating > 4
);
--43- Get the employees who have taken leaves of a specific type:
SELECT *
FROM Employees
WHERE employeeID IN (
  SELECT employeeID
  FROM Leave
  WHERE leave_type = 'Vacation'
);

--44-Get the employees with the highest performance rating:
SELECT *
FROM Employees
WHERE employeeID IN (
  SELECT employeeID FROM Performance
  WHERE performance_rating = (SELECT MAX(performance_rating)FROM Performance )
);
--45-Get the employees whose performance rating is below the average rating:
SELECT *
FROM Employees
WHERE employeeID IN (SELECT employeeID FROM Performance
  WHERE performance_rating < ( SELECT AVG(performance_rating) FROM Performance)
);

--46-the employees who have a performance rating below a certain threshold:
SELECT *
FROM Employees
WHERE employeeID IN (
  SELECT employeeID
  FROM Performance
  WHERE performance_rating < 4
);
--47-Get the employees who have a benefit with specific details:
SELECT employeeid ,position
FROM Employees
WHERE employeeID IN (
  SELECT employeeID
  FROM Benefits
  WHERE benefit_details LIKE '%Medical and dental coverage%'
);

--48-Retrieve all projects ordered by their start dates in ascending order:
SELECT ProjectName, StartDate
FROM Projects
ORDER BY StartDate ASC;

--49-Retrieve all employees sorted by their performance rating in descending order:
SELECT employeeID, performance_rating
FROM Performance
ORDER BY performance_rating DESC;

--50-Retrieve all employees who have worked on a specific project:
SELECT e.employeeID, e.performance_rating
FROM Performance e
JOIN Projects p ON e.employeeID = p.ProjectID
WHERE p.ProjectName = 'Project X';

--the deduction types that have not been assigned to any employee:
SELECT dt.deduction_type_name
FROM DeductionTypes dt
LEFT JOIN Performance p ON dt.deduction_type_id = p.performance_rating
WHERE p.employeeID IS NULL;

--
SELECT p.EmployeeID, p.PayrollDate, p.NetPay
FROM Payroll p
WHERE p.PayrollDate = (
  SELECT MAX(PayrollDate)
  FROM Payroll
)
ORDER BY p.NetPay DESC;
