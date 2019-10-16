select distinct InvoiceId, count(InvoiceId) as LineItems
from InvoiceLine
group by InvoiceId