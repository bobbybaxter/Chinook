select distinct Playlist.Name as PlaylistName, count(PlaylistTrack.PlaylistId) as TotalTracks
from Playlist
	join PlaylistTrack on PlaylistTrack.PlaylistId = Playlist.PlaylistId
group by Playlist.Name
