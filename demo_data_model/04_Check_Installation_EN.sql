
select count(*) as cnt, 'users' as tab from users                --shoud be 30
UNION
  select count(*) as cnt, 'projects' as tab from  projects       --shoud be 5
UNION
  select count(*) as cnt, 'tasks' as tab from  tasks             --shoud be 1000
UNION
  select count(*) as cnt, 'status' as tab from  status           --shoud be 6
UNION
select count(*) as cnt, 'status_text' as tab from  status_text   --should be 12
UNION
select count(*) as cnt, 'team_text' as tab from  team_text       --should be 14
UNION
select count(*) as cnt, 'tasks_log' as tab from  tasks_log       --should be empty
UNION
  select count(*) as cnt, 'dats_date' as tab from  dats_date     --should be empty
UNION
  select count(*) as cnt, 'colors' as tab from  colors           --should be empty
UNION
select count(*) as cnt, 'sizes' as tab from  sizes;              --should be empty
