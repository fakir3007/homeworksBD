create table if not exists genre(
	id serial primary key,
	name varchar(40),
	perfomers_id integer not null references perfomers(id) 
);

create table if not exists perfomers(
	id serial primary key,
	name varchar(40),
	genre_id integer not null references genre(id),
	alboms_id integer not null references alboms(id),
	tracks_id integer not null references tracks(id) 
);

create table if not exists alboms(
	id serial primary key,
	name varchar(40),
	year integer,
	perfomers_id integer not null references perfomers(id),
	tracks_id integer not null references tracks(id) 
);

create table if not exists tracks(
	id serial primary key,
	name varchar(40),
	duration numeric,
	perfomers_id integer not null references perfomers(id)
);

create table if not exists compilation(
	id serial primary key,
	name varchar(40),
	duration numeric,
	tracks_id integer not null references tracks(id)
);

