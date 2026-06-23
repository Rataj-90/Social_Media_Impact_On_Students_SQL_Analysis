-- Which country has the highest average daily social media usage? 
select
country
,round(avg(avg_daily_usage_hours),1) as avg_daily_social_media_usage
from social
group by country
order by avg_daily_social_media_usage desc
limit 1
-- The United Arab Emirates (UAE) has the highest average daily social media usage, 
-- with users spending an average of 6.7 hours per day on social media platforms.


-- Which country reports the lowest average sleep duration? 
select
country
,avg(sleep_hours_per_night) as avg_sleep_duration
from social
group by country
order by avg_sleep_duration asc
-- The countries reporting the lowest average sleep duration are 
-- Ecuador, Trinidad, the Czech Republic, Armenia, Liechtenstein, and Lebanon, 
-- with an average of 5.2 hours of sleep per night.


-- Which country has the highest average Mental Health Score?
select
country
,round(avg(mental_health_score),2) as avg_mental_health_score
from social
group by country
order by avg_mental_health_score desc
-- The countries with the highest average Mental Health Score are 
-- Sweden, Taiwan, South Africa, Chile, Bolivia, the Bahamas, Slovakia, Bulgaria, Belarus, 
-- Georgia, Malta, San Marino, Bosnia, Bahrain, and Iraq, all with an average score of 8.0.
