/*INSERT INTO*/

INSERT INTO artists(name) 
VALUES("Jairo Vera");

INSERT INTO albums(Title,ArtistId) 
VALUES("Pa k te enamores",276);

INSERT INTO tracks(Name,AlbumId,MediaTypeId,Milliseconds,UnitPrice) 
VALUES("Tarima","348","3","180000","1.99");

INSERT INTO tracks(Name,AlbumId,MediaTypeId,Milliseconds,UnitPrice) 
VALUES("Mirador","348","2","120000","2.99");

INSERT INTO tracks(Name,AlbumId,MediaTypeId,Milliseconds,UnitPrice) 
VALUES("12:30","348","1","153600","0.99");

/*UPDATE*/

UPDATE tracks
SET GenreId = 5
WHERE GenreId is null
 
/*DELETE*/

DELETE FROM tracks
	WHERE TrackId = 3504;

DELETE FROM tracks
	WHERE TrackId = 3505;

DELETE FROM tracks
	WHERE TrackId = 3506;

DELETE FROM albums
	WHERE AlbumId = 348;

DELETE FROM artists
	WHERE ArtistId = 276;