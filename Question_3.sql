SELECT Name, Surname, Position,
CASE
	WHEN StaffLink.MainID = 1 THEN 'Scrooge'
	WHEN StaffLink.MainID = 2 THEN 'Daizy'
END AS ManagerName,
CASE
	WHEN StaffLink.MainID = 1 OR StaffLink.MainID = 2 THEN 'Manager'
END AS ManagerPosition
 FROM Employee
INNER JOIN StaffLink
ON Employee.ID = StaffLink.EmpID