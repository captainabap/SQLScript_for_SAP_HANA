
select count(*) as cnt, 'users' as table from users                --shoud be 30
UNION
  select count(*) as cnt, 'projects' as table from  projects       --shoud be 5
UNION
  select count(*) as cnt, 'tasks' as table from  tasks             --shoud be 1000
UNION
  select count(*) as cnt, 'status' as table from  status           --shoud be 6
UNION
select count(*) as cnt, 'status_text' as table from  status_text   --should be 12
UNION
select count(*) as cnt, 'team_text' as table from  team_text       --should be 13
UNION
select count(*) as cnt, 'tasks_log' as table from  tasks_log       --should be empty
UNION
  select count(*) as cnt, 'dats_date' as table from  dats_date     --should be empty
UNION
  select count(*) as cnt, 'colors' as table from  colors           --should be empty
UNION
select count(*) as cnt, 'sizes' as table from  sizes;              --should be empty
