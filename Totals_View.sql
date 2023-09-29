drop view if exists totals_view;
create view totals_view as
select
	sum("Boyd Yards") as boyd_yards_sum,
	sum("Higgins Yards") as higgins_yards_sum,
	sum("Chase Yards") as chase_yards_sum,
	sum(case when edison_caldwell."Result" = 'Win' then 1 else 0 end) || '-' || sum(case when edison_caldwell."Result" = 'Loss' then 1 else 0 end) as "Win/Loss"
from edison_caldwell;

-- view the view
select * from totals_view;