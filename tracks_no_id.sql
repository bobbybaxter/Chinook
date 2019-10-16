select distinct Album.Title as AlbumTitle, MediaType.Name as MediaType, Genre.Name as Genre
from Track
	join Album on Album.AlbumId = Track.AlbumId
	join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
	join Genre on Genre.GenreId = Track.GenreId
order by Album.Title