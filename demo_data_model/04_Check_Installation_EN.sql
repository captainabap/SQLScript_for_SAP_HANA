
select count(*) as cnt, 'users' as table from users
UNION
  select count(*) as cnt, 'projects' as table from  projects
UNION
  select count(*) as cnt, 'tasks' as table from  tasks
UNION
  select count(*) as cnt, 'status' as table from  status
UNION
select count(*) as cnt, 'status_text' as table from  status_text
UNION
select count(*) as cnt, 'team_text' as table from  team_text
UNION
select count(*) as cnt, 'tasks_log' as table from  tasks_log
UNION
  select count(*) as cnt, 'dats_date' as table from  dats_date
UNION
  select count(*) as cnt, 'colors' as table from  colors
UNION
select count(*) as cnt, 'sizes' as table from  sizes;
