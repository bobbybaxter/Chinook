select top (1) e.Firstname + ' ' + e.LastName as FullName, count(i.Total) as TotalSales
from Invoice i
  join Customer c on c.CustomerId = i.CustomerId
  join Employee e on e.EmployeeId = c.SupportRepId
group by e.FirstName + ' ' + e.Lastname