insert into album (name, release_date)
values('The Dark Side of the Moon', '1973-03-17'),
	  ('Перекресток', '1994-03-03'),
	  ('The Wall', '1979-11-30'),
	  ('Один день вместе', '2007-03-03'),
	  ('S&M', '1999-11-23'),
	  ('The Untitled', '2020-03-17'),
	  ('Hey you', '2019-09-01');
	 
insert into artist (name)
values('Metallica'),
	('Pink Floyd'),
	('Симфонический оркестр Сан-Франциско'),
	('Разные люди'),
	('Чиж&Co'),
	('Дидюля');

update artist 
set name = 'Чиж & Co'
where id = 5;

insert into artist_album
values(1, 5),
	(2, 1),
	(2, 3),
	(3, 5),
	(4, 4),
	(5, 2),
	(5, 4),
	(1, 6),
	(2, 7),
	(6, 7);

insert into genre(name)
values('Heavy Metall'),
	('Classic music'),
	('Blues-rock'),
	('Progressive Rock');

insert into Artist_Genre
values(1, 1),
	(2, 4),
	(3, 2),
	(4, 3),
	(5, 3),
	(6, 3);

insert into track (name, track_duration, AlbumID)
values('Time', 424, 1),
	('Hey you', 281, 3),
	('Nothing Else Matters', 406, 5),
	('Перекресток', 424, 2),
	('Поход', 203, 2),
	('Поход', 203, 4),
	('Hey You_2', 424, 7),
	('Unforgiven-3', 356, 6);

update track
set name = 'Первый мой поход',
	track_duration = 210
where id = 6;

update track 
set "name" = 'Hey you, take myself'
where id = 7;

insert into collection (title, release_date)
values('Лучшие блюзы и баллады', '1998-01-01'),
	('Echoes: The Best of Pink Floyd', '2001-11-05'),
	('A Foot in the Door', '2011-11-07'),
	('Легенды русского рока-6', '2001-01-01'),
	('The best of M', '2018-02-02'),
	('Special Edition', '2019-05-05');

insert into track_collection
values(1, 2),
	(2, 2),
	(3, 3),
	(4, 1),
	(5, 4),
	(6, 1),
	(6, 4),
	(7, 6),
	(8, 5);

