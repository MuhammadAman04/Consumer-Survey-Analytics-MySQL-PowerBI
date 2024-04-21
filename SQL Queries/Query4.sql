-- What are the preferred ingredients of energy drinks among respondents?

SELECT Ingredients_expected, COUNT(*) AS Total_respondents,
ROUND(COUNT(*)/ (SELECT COUNT(*) FROM fact_survey_responses) *100,2)AS Percentage
FROM fact_survey_responses
GROUP BY Ingredients_expected
ORDER BY Respondent_Count DESC;