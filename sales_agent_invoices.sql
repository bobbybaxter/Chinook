select e.FirstName + ' ' + e.LastName as SalesAgentName,
	   i.*
from Customer c
	join Employee e on c.SupportRepId = e.EmployeeId
	join Invoice i on c.CustomerId = i.CustomerId
order by SalesAgentName
	