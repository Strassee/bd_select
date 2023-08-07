SELECT a.name_album FROM albums AS a JOIN perf_alb AS b 
ON a.id_album=b.id_album JOIN performers AS c
ON b.id_performer=c.id_performer JOIN perf_genr AS d 
ON c.id_performer=d.id_performer GROUP BY a.name_album
HAVING COUNT(d.id_performer) > 1;

SELECT a.name_track FROM tracks AS a LEFT OUTER JOIN track_collection AS b 
ON a.id_track=b.id_track GROUP BY a.name_track
HAVING COUNT(b.id_track) = 0;

SELECT a.name_performer FROM performers AS a JOIN perf_alb AS b 
ON a.id_performer=b.id_performer JOIN albums AS c
ON b.id_album=c.id_album JOIN tracks AS d 
ON c.id_album=d.id_album WHERE d.duration_track IN(SELECT MIN(duration_track) FROM tracks);


SELECT name_album FROM albums
WHERE id_album IN (
    SELECT id_album FROM tracks
    GROUP BY id_album 
    HAVING COUNT(id_album) IN (
        SELECT COUNT(id_album) FROM tracks
        GROUP BY id_album 
        ORDER BY COUNT
        LIMIT 1
    )
);
