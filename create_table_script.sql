CREATE TABLE IF NOT EXISTS albums (
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(80) NOT NULL,
	year_album INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS performers (
	id_performer SERIAL PRIMARY KEY,
	name_performer VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres (
	id_genre SERIAL PRIMARY KEY,
	name_genre VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS collections (
	id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(80) NOT NULL,
	year_collection INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
	id_track SERIAL PRIMARY KEY,
	id_album INTEGER NOT NULL REFERENCES albums(id_album),
	name_track VARCHAR(80) NOT NULL,
	duration_track INTEGER NOT NULL CHECK (duration_track > 0)
);

CREATE TABLE IF NOT EXISTS perf_genr (
	id_genre INTEGER NOT NULL REFERENCES genres(id_genre),
	id_performer INTEGER NOT NULL REFERENCES performers(id_performer),
	CONSTRAINT pk PRIMARY KEY (id_genre, id_performer)
);

CREATE TABLE IF NOT EXISTS perf_alb (
	id_album INTEGER NOT NULL REFERENCES albums(id_album),
	id_performer INTEGER NOT NULL REFERENCES performers(id_performer),
	CONSTRAINT pk PRIMARY KEY (id_album, id_performer)
);

CREATE TABLE IF NOT EXISTS track_collection (
	id_track INTEGER NOT NULL REFERENCES tracks(id_track),
	id_collection INTEGER NOT NULL REFERENCES collections(id_collection),
	CONSTRAINT pk_tc PRIMARY KEY (id_track, id_collection)
);