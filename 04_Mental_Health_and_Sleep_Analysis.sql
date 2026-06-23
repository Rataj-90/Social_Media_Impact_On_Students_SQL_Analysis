-- Which Platform Is Associated with the Lowest Average Sleep Duration? 
select 
most_used_platform 						as platform
,round(avg(sleep_hours_per_night),1) 	as avg_sleep_duration
from social
group by most_used_platform
order by avg_sleep_duration asc
-- WhatsApp had the lowest average sleep duration, at 5.9 hours per night.


-- Which Platform Has the Highest Mental Health Score? 
select 
most_used_platform as platform
,round(avg(mental_health_score),1) as avg_mental_health_score
from social
group by most_used_platform
order by avg_mental_health_score desc
-- Line had the highest average Mental Health Score, with a score of 8.0.


-- Do students who sleep less report lower Mental Health Scores? 
select
case
when sleep_hours_per_night < 6 then 'less than 6h'
when sleep_hours_per_night between 6 and 8 then '6-8h'
else 'more than 8h'
end as sleep_group
,round(avg(mental_health_score),1) as avg_mental_health_score 
from social
group by sleep_group
-- Students who sleep less tend to have lower Mental Health Scores.


-- Is there a relationship between sleep duration and social media usage?
select
case
when avg_daily_usage_hours < 2 then 'less than 2h'
when avg_daily_usage_hours between 2 and 4 then '2-4h'
when avg_daily_usage_hours between 4 and 6 then '4-6h'
when avg_daily_usage_hours between 6 and 8 then '6-8h'
else 'more than 8h'
end as usage_group
,round(avg(sleep_hours_per_night),1) as sleep_duration
from social
group by usage_group
order by sleep_duration desc
-- Yes. Students who spend more time on social media tend to sleep less.
