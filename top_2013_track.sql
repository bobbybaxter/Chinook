select top (1) with ties t.Name, count(t.Name) as Sales
from Track t
	join InvoiceLine l on l.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = l.InvoiceId
where year(i.InvoiceDate) = 2013
group by t.Name
order by Sales desc