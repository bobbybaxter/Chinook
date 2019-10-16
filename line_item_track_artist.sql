select InvoiceLine.*, Artist.Name, Track.Name
from InvoiceLine
	join Track on Track.TrackId = InvoiceLine.TrackId
	join Album on Album.AlbumId = Track.AlbumId
	join Artist on Artist.ArtistId = Album.ArtistId
order by InvoiceId