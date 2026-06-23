
-- Do Heavy Users Sleep Less?
select
case
when avg_daily_usage_hours <3 then 'Light'
when avg_daily_usage_hours <6 then 'Medium'
else 'Heavy'
end as User_Group
,round(avg(sleep_hours_per_night),1) as avg_sleep
from social
group by User_group
-- The analysis indicates a negative relationship between social media usage and sleep duration.
-- Light users sleep an average of 8.0 hours per night,
-- compared to 5.4 hours among heavy users.

-- Do Heavy Users Have Lower Mental Health Scores?
select
case
when avg_daily_usage_hours <3 then 'Light'
when avg_daily_usage_hours <6 then 'Medium'
else 'Heavy'
end as User_Group
,round(avg(mental_health_score),1) as avg_mental_health_score
from social
group by User_group
-- Heavy users report the lowest average Mental Health Score (5.0),
-- compared to medium users (6.6) and light users (8.0).

-- Do Heavy Users Report Academic Impact More Frequently?
select
case
when avg_daily_usage_hours < 3 then 'Light'
when avg_daily_usage_hours < 6 then 'Medium'
else 'Heavy'
end as User_Group, affects_academic_performance
,count(*) AS cnt
,round(count(*) * 100.0 /sum(count(*)) over (partition by
case
when avg_daily_usage_hours < 3 then 'Light'
when avg_daily_usage_hours < 6 then 'Medium'
else 'Heavy' end),1) AS percentage
from social
group by User_Group, affects_academic_performance
order by User_Group, cnt desc
-- 84.6% of Heavy Users reported an academic impact,
-- compared to 54.3% of Medium Users and 13.0% of Light Users.


-- Which Platform Has the Highest Number of Heavy Users?
select
case
when avg_daily_usage_hours <3 then 'Light'
when avg_daily_usage_hours <6 then 'Medium'
else 'Heavy'
end as User_Group
,most_used_platform as platform
,count(*) as number_of_users
from social
group by User_group, most_used_platform
having user_group = 'Heavy'
order by number_of_users desc
-- The analysis shows that Instagram is the most popular platform among heavy users, accounting for 106 users in the dataset.

-- Which Academic Level Has the Highest Proportion of Heavy Users?
select
academic_level
,count(case when avg_daily_usage_hours >= 6 then 1 end) as heavy_users
,count(*) 			as total_students
,round(count(case when avg_daily_usage_hours >= 6 then 1 end) * 100.0
/ COUNT(*),1) 	as heavy_user_percentage
from social
group by academic_level
order by heavy_user_percentage desc
-- High School students have the highest proportion of Heavy Users, with 36.4% spending six 
-- or more hours per day on social media. This compares to 34.3% of Undergraduate students 
-- and 28.2% of Graduate students, suggesting that younger students are more likely to engage in intensive social media use.
