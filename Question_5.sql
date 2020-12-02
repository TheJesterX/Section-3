SELECT COUNT(Employee.Name) AS StaffCount, Name FROM Employee
INNER JOIN StaffLink
ON Employee.ID = StaffLink.MainID
GROUP BY Name;