SELECT name_track,duration_track FROM tracks WHERE duration_track = (SELECT MAX(duration_track) FROM tracks);

SELECT name_track FROM tracks WHERE duration_track >= 210;

SELECT name_collection FROM collections WHERE year_collection BETWEEN 2018 AND 2020;

SELECT name_performer FROM performers WHERE name_performer NOT LIKE '% %';

SELECT name_track FROM tracks WHERE name_track ILIKE 'мой %'
OR name_track ILIKE '% мой' 
OR name_track ILIKE '% мой %' 
OR name_track ILIKE 'мой' 
OR name_track ILIKE 'my %' 
OR name_track ILIKE '% my' 
OR name_track ILIKE '% my %' 
OR name_track ILIKE 'my';

/*Вторая реализация ^ */

SELECT name_track FROM tracks WHERE name_track ~* '\Y my |\ymy |\ymy$|\Y мой |\yмой |\yмой$';

/*Третья реализация ^ */

SELECT name_track FROM tracks WHERE string_to_array(lower(name_track),' ') && ARRAY['my','мой'];

