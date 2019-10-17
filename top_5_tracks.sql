/********************
NOT INCLUDING TIES
********************/

select top (5) t.Name, count(t.Name) as Sales
from Track t
	join InvoiceLine l on l.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = l.InvoiceId
group by t.Name
order by Sales desc

/********************
INCLUDING TIES
********************/

select top (5) with ties t.Name, count(t.Name) as Sales
from Track t
	join InvoiceLine l on l.TrackId = t.TrackId
	join Invoice i on i.InvoiceId = l.InvoiceId
group by t.Name
order by Sales desc