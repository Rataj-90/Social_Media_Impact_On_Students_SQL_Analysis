-- Gender Distribution
select
gender
,count(gender)
from social
group by gender
-- The gender distribution is nearly balanced, with a slight predominance of male students (49 more males than females).

  
-- Academic Level Distribution
select
academic_level
,count(academic_level)
from social
group by 1
-- Undergraduate students represent the largest group (712 records), followed by Graduate students (632 records). 
-- High School students form the smallest segment of the dataset (352 records).

  
-- Most Popular Social Media Platforms
select
most_used_platform
,count(most_used_platform)
from social
group by 1
order by 2 desc
-- Instagram is the most frequently used social media platform in the dataset.

  
-- Age Distribution
select
age
,count(age)
from social
group by 1
order by 2 desc
-- The dataset includes students aged between 19 and 24 years.
-- The most represented age group is 21 years old, while 24-year-old students are the least represented.
