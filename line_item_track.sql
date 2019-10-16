select i.*, t.Name
from InvoiceLine i
	join Track t
	on i.TrackId = t.TrackId
order by i.InvoiceLineId