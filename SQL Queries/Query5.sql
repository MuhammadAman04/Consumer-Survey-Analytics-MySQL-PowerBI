-- Who are the current market leaders?

SELECT Current_brands, COUNT(*) AS Total_consumers,
ROUND(COUNT(*)/ (SELECT COUNT(*) FROM fact_survey_responses) *100,2)AS Percentage
FROM fact_survey_responses
GROUP BY Current_brands
ORDER BY Total_consumers DESC;