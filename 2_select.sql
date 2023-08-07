SELECT name_track,duration_track FROM tracks WHERE duration_track = (SELECT MAX(duration_track) FROM tracks);

SELECT name_track FROM tracks WHERE duration_track >= 210;

SELECT name_collection FROM collections WHERE year_collection BETWEEN 2018 AND 2020;

SELECT name_performer FROM performers WHERE name_performer NOT LIKE '% %';

SELECT name_track FROM tracks WHERE name_track LIKE '%мой%' OR name_track LIKE '%my%';