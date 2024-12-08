select name, track_duration from track
where track_duration = (select max(track_duration) from track);

select name from track
where track_duration >= 210;

select title from collection
where release_date > '2017-12-31' and release_date < '2021-01-01';

select name from artist
where name not like '% %';

select name from track
where string_to_array(lower(name), ' ') && array ['my', 'мой'];

select genreid, count(*) from artist_genre
group by genreid
order by genreid asc;

select count(t.name) from album a 
join track t on a.id = t.albumid
where a.release_date between '2019-01-01' and '2020-12-31';

select albumid, avg(track_duration) from track t
group by albumid
order by albumid asc;

select distinct a.name from artist a
where a.id not in (
	select aa.artistid from artist_album aa 
	join album a2 on aa.albumid = a2.id 
	where a2.release_date between '2020-01-01' and '2020-12-31'
);

select distinct c.title from collection c 
join track_collection tc on c.id = tc.collectionid
join track t on tc.trackid = t.id
join artist_album aa on t.albumid = aa.albumid
join artist a on aa.artistid = a.id
where a.name = 'Pink Floyd';

