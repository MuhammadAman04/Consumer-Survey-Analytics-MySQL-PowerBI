SELECT Gender, COUNT(*) AS Consume_Count, ROUND(COUNT(*)/ (SELECT COUNT(*) FROM fact_survey_responses) *100,2)AS Percentage
FROM fact_survey_responses AS f
LEFT JOIN dim_repondents AS r
USING (Respondent_id)
GROUP BY gender


