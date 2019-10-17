select distinct e.FirstName, e.LastName, count(c.CustomerId) as Customers
from Customer c
	join Employee e on e.EmployeeId = c.SupportRepId
group by e.FirstName, e.LastName