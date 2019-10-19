select distinct year(InvoiceDate) as InvoiceYear, sum(Total) as TotalSales
from Invoice
where year(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)