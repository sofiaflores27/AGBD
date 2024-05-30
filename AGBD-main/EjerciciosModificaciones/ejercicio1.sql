INSERT INTO artists (name)
VALUES ("Miranda!");

INSERT INTO albums (title,ArtistId)
VALUES ("El templo del pop", 276)

INSERT INTO tracks (name,  MediaTypeId, Milliseconds, UnitPrice)
VALUES ("Bailarina" ,1, 266400,1.00) , ("Iman" ,1, 253200,1.00), ("Tu Juego",1, 183600,1.00)
UPDATE tracks SET AlbumId = 348 
WHERE GenreId is NULL;

//usar SELECT * FROM para comprobar y DELETE FROM para borrar
DELETE FROM tracks WHERE AlbumId = 348; 

DELETE FROM albums WHERE ArtistId = 276;

DELETE FROM artists WHERE ArtistId = 276;