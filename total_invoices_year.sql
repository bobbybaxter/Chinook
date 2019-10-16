select distinct year(InvoiceDate) as InvoiceYear, count(InvoiceDate) as InvoiceNum
from Invoice
where year(InvoiceDate) = 2009
   or year(InvoiceDate) = 2011
group by year(InvoiceDate)