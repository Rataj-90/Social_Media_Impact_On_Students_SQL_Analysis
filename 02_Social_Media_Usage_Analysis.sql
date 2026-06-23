-- What is the average daily social media usage?
select 
round(avg(avg_daily_usage_hours),1)
from social
-- The average daily social media usage across all students is 5.1 hours per day

  
-- Which platform has the highest average daily usage?
select 
most_used_platform
,round(avg(avg_daily_usage_hours),1)
from social
group by 1
order by 2 desc
-- WhatsApp has the highest average daily usage per user.

  
-- Which platform accounts for the highest total usage time?
select
most_used_platform
,round(sum(avg_daily_usage_hours)/24,1) as count_in_days
from social
group by 1 
order by 2 desc
-- Instagram accounts for the highest total usage time in the dataset.

  
-- Social media preferences differ by gender.
select
gender
,most_used_platform
,count(most_used_platform)
from social
group by 2,1
order by 3 desc
-- Instagram is the most popular platform among female students,
-- whereas Facebook is the most popular platform among male students.
