select top (1) with ties t.TrackId, t.Name, count(il.Quantity) as Sales
from Track t
	join InvoiceLine il on il.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = il.InvoiceId
where year(i.InvoiceDate) = 2013
group by t.TrackId, t.Name
order by Sales desc