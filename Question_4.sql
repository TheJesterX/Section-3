SELECT Name, Surname, Position,
CASE
	WHEN StaffLink.MainID = 1 THEN 'Scrooge'
	WHEN StaffLink.MainID = 2 THEN 'Daizy'
	WHEN StaffLink.MainID < 2 THEN Null
END AS ManagerName,
CASE
	WHEN StaffLink.MainID = 1 OR StaffLink.MainID = 2 THEN 'Manager'
	WHEN StaffLink.MainID < 2 THEN NUll
END AS ManagerPosition
 FROM Employee
LEFT JOIN StaffLink
ON Employee.ID = StaffLink.EmpID