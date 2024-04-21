-- Which age group prefers energy drinks more?

SELECT age AS Age_Group, COUNT(*) AS Total_consumers, ROUND(COUNT(*)/ (SELECT COUNT(*) FROM fact_survey_responses) *100,2)AS Percentage
FROM fact_survey_responses AS f
LEFT JOIN dim_respondents AS r
ON f.Respondent_ID = r.Respondent_ID
GROUP BY age
ORDER BY Total_consumers DESC;

