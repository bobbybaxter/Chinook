select distinct BillingCountry, count(InvoiceId) as TotalNumSales
from Invoice
group by BillingCountry