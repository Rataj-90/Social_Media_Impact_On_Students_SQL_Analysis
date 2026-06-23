-- Count total records and unique Student_ID values
Select 
count(*) 					as total_records
,count(distinct Student_ID)	as unique_students
From social

-- Result: 1705 total records and 1000 unique Student_ID values

-- Check how many times each Student_ID appears
Select
Student_ID
,count(*) as occurrence_count
From social
Group by Student_ID
Order by occurrence_count desc

-- Count Student_ID values that appear exactly twice
Select 
count(*) as duplicated_student_ids
From (
Select Student_ID
From social
Group by Student_ID
Having count(*) = 2
) duplicated_students

-- Result: 705 Student_ID values appear exactly twice 

-- Review duplicate Student_ID records
Select *
From social
Where Student_ID in (
Select Student_ID
From social
Group by Student_ID
Having COUNT(*) > 1
)
order by Student_ID;


/*Dataset contains 1,705 observations and 1,000 unique Student_ID values. Since duplicate IDs contain different attribute values, 
Student_ID was treated as a non-unique identifier rather than a primary key. */
