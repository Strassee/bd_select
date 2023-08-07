SELECT name_genre, COUNT(id_performer) FROM perf_genr AS a JOIN genres AS b 
ON a.id_genre=b.id_genre GROUP BY name_genre;

SELECT name_album, COUNT(id_track) FROM tracks AS a JOIN albums AS b 
ON a.id_album=b.id_album WHERE b.year_album BETWEEN 2019 AND 2020 GROUP BY name_album;

SELECT name_album, AVG(duration_track) FROM tracks AS a JOIN albums AS b 
ON a.id_album=b.id_album GROUP BY name_album;

SELECT name_performer FROM performers AS a JOIN perf_alb AS b 
ON a.id_performer=b.id_performer JOIN albums AS c 
ON b.id_album=c.id_album WHERE c.year_album NOT in (2020);

SELECT name_collection FROM collections AS a JOIN track_collection AS b 
ON a.id_collection=b.id_collection JOIN tracks AS c 
ON b.id_track=c.id_track JOIN albums AS d 
ON c.id_album=d.id_album JOIN perf_alb AS e 
ON d.id_album=e.id_album JOIN performers AS f 
ON e.id_performer=f.id_performer WHERE f.name_performer IN('Scooter');