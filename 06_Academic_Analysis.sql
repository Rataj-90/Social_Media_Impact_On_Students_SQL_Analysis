-- Which academic level spends the most time on social media?
select
academic_level
,round(avg(avg_daily_usage_hours),1) as the_most_time_on_social_media
from social
group by academic_level
order by the_most_time_on_social_media desc
-- High School students spend the most time on social media, with an average daily usage of 5.3 hours.


-- Which academic level sleeps the least?
select
academic_level
,round(avg(sleep_hours_per_night),1) as avg_sleep
from social
group by academic_level
order by avg_sleep asc
-- High School students sleep the least, averaging 6.3 hours of sleep per night.


-- Which academic level has the highest Mental Health Score?
select
academic_level
,round(avg(mental_health_score),1) as avg_mental_health_score
from social
group by academic_level
order by avg_mental_health_score asc
-- Graduate students have the highest average Mental Health Score (6.3). 
-- However, the differences across academic levels are minimal, with High School 
-- and Undergraduate students both scoring 6.2, indicating that mental health scores 
-- are relatively consistent across all academic levels.


-- Which academic level reports the highest academic impact?
select
academic_level
,overall_impact
,round(count(*) * 100.0 / sum(count(*)) over (partition by academic_level),1) as percentage
from social
group by academic_level, overall_impact
order by percentage desc
-- Undergraduate students report the highest academic impact from social media, 
-- with 57.1% indicating a negative overall impact, compared to 56.0% of graduate students and 49.1% of high school students.
