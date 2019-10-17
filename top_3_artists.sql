select top (3) ar.Name, count(ar.Name) as TrackSales
from InvoiceLine l
	join Track t on t.TrackId = l.TrackId
	join Album al on al.AlbumId = t.AlbumId
	join Artist ar on ar.ArtistId = al.ArtistId
group by ar.Name
order by TrackSales desc