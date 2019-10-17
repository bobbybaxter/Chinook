select top (1) m.Name as MediaType, count(m.Name) as Sales
from InvoiceLine l
	join Track t on t.TrackId = l.TrackId
	join MediaType m on m.MediaTypeId = t.MediaTypeId
group by m.Name
order by Sales desc