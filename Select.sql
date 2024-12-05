select name, track_duration from track
where track_duration = (select max(track_duration) from track);

select name from track
where track_duration > 210;

select title from collection
where release_date > '2017-12-31' and release_date < '2021-01-01';

select name from artist
where name not like '% %';

select name from track
where "name" like '%мой%' or "name" like '%my%';

select genreid, count(*) from artist_genre
group by genreid
order by genreid asc;

select albumid, count(t."name"), release_date from track t 
left join album a on t.albumid = a.id
where a.release_date > '2018-12-31' and a.release_date < '2021-01-01'
group by a.release_date, t.albumid 
order by albumid asc;

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

