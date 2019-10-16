select Invoice.*, count(InvoiceLine.InvoiceLineId) as LineItems
from Invoice
	join InvoiceLine on InvoiceLine.InvoiceId = Invoice.InvoiceId
group by Invoice.InvoiceId,
		 Invoice.CustomerId,
		 Invoice.InvoiceDate,
		 Invoice.BillingAddress,
		 Invoice.BillingCity,
		 Invoice.BillingState,
		 Invoice.BillingCountry,
		 Invoice.BillingPostalCode,
		 Invoice.Total