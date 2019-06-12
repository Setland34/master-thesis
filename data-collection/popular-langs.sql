with popular_projects as (
  select u.login, p.name, p.language, count(*) as watch_count
  from `ghtorrent-bq.ght_2018_04_01.projects` p,`ghtorrent-bq.ght_2018_04_01.users` u, `ghtorrent-bq.ght_2018_04_01.watchers` w
  where
      p.forked_from is null and
      p.deleted is false and
      w.repo_id = p.id and
      u.id = p.owner_id
  group by p.id, u.login, p.name, p.language
  having count(*) > 50
  order by count(*) desc
),

popular_languages as (
  select t.language, count(*)
  from popular_projects t
  where t.language is not null
  group by t.language
  order by count(*) desc
  limit ?lang_count?
)

select *
from popular_languages