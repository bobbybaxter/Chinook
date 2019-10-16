select FirstName + ' ' + LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
from Invoice i
	join Customer c
	on i.CustomerId = c.CustomerId
	where BillingCountry = 'Brazil'