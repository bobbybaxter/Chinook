select Total as InvoiceTotal, 
	   c.FirstName + ' ' + c.LastName as CustomerName, 
	   c.Country, 
	   e.FirstName + ' ' + e.LastName as SalesAgentName
from Invoice i
	join Customer c on i.CustomerId = c.CustomerId
	join Employee e on c.SupportRepId = e.EmployeeId