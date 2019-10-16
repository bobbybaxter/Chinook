select distinct BillingCountry, count(InvoiceId) as InvoiceTotal
from Invoice
group by BillingCountry