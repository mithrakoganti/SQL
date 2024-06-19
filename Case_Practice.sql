select * from fruit_imports;

select name, total_supply,
case when total_supply < 20000 then 'LOW'
when total_supply >= 20000 and total_supply <= 50000 then 'ENOUGH'
when total_supply > 50000 then 'FULL'
end as category
from( select name, sum(supply) total_supply from fruit_imports
	 group by name)a;
	 
select sum(case when season = 'Winter' then total_cost end) Winter_total,
sum(case when season = 'Summer' then total_cost end) Summer_total,
sum(case when season = 'Spring' then total_cost end) Spring_total,
sum(case when season = 'Fall' then total_cost end) Fall_total,
sum(case when season = 'All Year' then total_cost end) AllYear_total
from
(select season, sum(supply* cost_per_unit)total_cost 
from fruit_imports
group by season)a;