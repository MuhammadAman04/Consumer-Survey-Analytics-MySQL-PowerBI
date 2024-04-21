-- Which marketing channel can be used to reach more customers?

SELECT Marketing_channels,
COUNT(*) AS Total_Respondents,
AVG(CASE WHEN Heard_before = 'Yes' THEN 1 ELSE 0 END) *100 AS Heard_Percentage
FROM fact_survey_responses
WHERE Current_brands = 'CodeX'
GROUP BY Marketing_channels
ORDER BY Total_Responses DESC