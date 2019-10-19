select year(InvoiceDate) as InvoiceYear, count(*) as InvoiceNum
from Invoice
where year(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)