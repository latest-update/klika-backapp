create table singers
(
    id   integer generated always as identity
        primary key,
    name varchar(255) not null
);

create table genres
(
    id   integer generated always as identity
        primary key,
    name varchar(255) not null
);

create table songs
(
    id        integer generated always as identity
        primary key,
    name      varchar(255) not null,
    year      integer      not null,
    singer_id integer
        constraint singers
            references singers
            on update cascade on delete cascade,
    genre_id  integer
        constraint genres
            references genres
);

alter table singers
    owner to postgres;

alter table genres
    owner to postgres;

alter table songs
    owner to postgres;

INSERT INTO public.genres (name) VALUES ('Rock');
INSERT INTO public.genres (name) VALUES ('Alternative-Rock');
INSERT INTO public.genres (name) VALUES ('Pop');
INSERT INTO public.genres (name) VALUES ('Metal');
INSERT INTO public.genres (name) VALUES ('Pop-Rock');
INSERT INTO public.genres (name) VALUES ('Punk');
INSERT INTO public.genres (name) VALUES ('Electronic');

INSERT INTO public.singers (name) VALUES ('John Mayer');
INSERT INTO public.singers (name) VALUES ('Victor Tsoy');
INSERT INTO public.singers (name) VALUES ('Chvrches');
INSERT INTO public.singers (name) VALUES ('The Calling');
INSERT INTO public.singers (name) VALUES ('Band');
INSERT INTO public.singers (name) VALUES ('Scorpions');
INSERT INTO public.singers (name) VALUES ('Slash');
INSERT INTO public.singers (name) VALUES ('Guns n roses');
INSERT INTO public.singers (name) VALUES ('Green Day');

INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Wherever you will go', 2002, 4, 3);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('83', 2003, 1, 2);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Wheel', 2005, 1, 1);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Snow', 2010, 1, 6);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Come back to bed', 2005, 1, 2);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('New Light', 2021, 1, 5);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Neon', 1999, 1, 5);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Daughters', 2003, 1, 2);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Get out', 2015, 3, 7);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Mother we share', 2015, 3, 7);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Air	Albums', 2005, 4, 3);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Darkness Between the Fireflies.', 2007, 6, 5);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Dead Sea', 2009, 4, 6);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Bloom', 2001, 4, 4);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Morning Mr Magpie', 2001, 6, 5);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Little by Little', 1996, 6, 5);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Feral', 1996, 6, 4);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Lotus Flower', 2010, 8, 3);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Codex', 2002, 8, 3);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Give Up the Ghost', 2007, 7, 2);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Separator', 2004, 9, 1);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Airbag', 2004, 9, 6);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Paranoid Android', 2004, 9, 6);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Let Down', 2021, 9, 6);
INSERT INTO public.songs (name, year, singer_id, genre_id) VALUES ('Lucky', 2021, 5, 6);


