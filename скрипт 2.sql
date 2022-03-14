create table if not exists genre(
	id serial primary key,
	name varchar(40)
);

create table if not exists perfomers(
	id serial primary key,
	name varchar(40)
);

CREATE TABLE IF NOT EXISTS PerfomersGenre(
	id serial primary key,
	genre_id integer REFERENCES genre(id),
	perfomers_id integer REFERENCES perfomers(id)
);
create table if not exists alboms(
	id serial primary key,
	name varchar(40),
	year integer 
);

CREATE TABLE IF NOT EXISTS PerfomersAlboms(
	id serial primary key,
	perfomers_id integer REFERENCES perfomers(id),
	alboms_id integer REFERENCES alboms(id)
);

create table if not exists tracks(
	id serial primary key,
	name varchar(40),
	duration numeric
);

create table if not exists compilation(
	id serial primary key,
	name varchar(40),
	duration numeric
);

CREATE TABLE IF NOT EXISTS TracksComplation(
	id serial primary key,
	tracks_id integer REFERENCES tracks(id),
	compilation_id integer REFERENCES compilation(id)
);

