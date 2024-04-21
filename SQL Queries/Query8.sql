-- Which cities do we need to focus more on? 

SELECT City, COUNT(*) AS Total_Responses, AVG(Taste_experience) AS Overall_Rating
FROM dim_respondents AS r
LEFT JOIN  dim_cities AS c
ON r.city_ID = c.city_ID
LEFT JOIN fact_survey_responses AS s
ON r.Respondent_ID = s.Respondent_ID
GROUP BY City
ORDER BY Total_Responses DESC;

