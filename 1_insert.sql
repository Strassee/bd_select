INSERT INTO albums (name_album, year_album) 
VALUES('Minutes To Midnight', '2007'),('Confessions on a Dance Floor', '2005'),('Kaleidoscope', '2009'),
('No Time To Chill', '1998'),('Symphonicities', '2010'),('Reborn', '2008'),('No Geography', '2019');

INSERT INTO performers (name_performer) 
VALUES('Linkin Park'),('Madonna'),('Tiësto'),('Scooter'),('Sting'),('Era'),('The Chemical Brothers');

INSERT INTO genres (name_genre) 
VALUES('pop rock'),('dance-pop'),('trance'),('hardstyle'),('rock'),('new age'),('pop'),('euro-pop'),('electronic');

INSERT INTO tracks (id_album,name_track,duration_track) 
VALUES('1','Wake (Instrumental)','100'),('1','Given Up','189'),('2','Hung Up','337'),('2','Get Together','329'),
('3','Kaleidoscope','456'),('3','Escape Me','257'),('4','How Much Is The Fish?','226'),('4','We Are The Greatest','308'),
('5','Next to You','150'),('5','Englishman in New York','263'),('6','Reborn','332'),('6','Prayers','260'),
('3','You Are My Diamond','250'),('5','You Will Be My Ain True Love','224'),('6','Come into My World','319'),
('7','Eve of Destruction','280');

INSERT INTO collections (name_collection,year_collection) 
VALUES('Dance Chart','2010'),('Top Tracks','2012'),('Music Online','2018'),('Music Library','2007');

INSERT INTO track_collection (id_track,id_collection) 
VALUES('1','1'),('3','1'),('5','1'),('7','1'),('2','2'),('4','2'),('6','2'),('8','2'),('5','3'),('7','3'),
('10','3'),('12','3'),('2','4'),('3','4'),('9','4'),('11','4');

INSERT INTO perf_alb (id_album,id_performer) 
VALUES('1','1'),('2','2'),('3','3'),('4','4'),('5','5'),('6','6'),('7','7');

INSERT INTO perf_genr (id_genre,id_performer) 
VALUES('1','1'),('2','2'),('3','3'),('4','4'),('5','5'),('6','6'),('5','1'),('1','5'),('9','7');
