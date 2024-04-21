-- Which type of marketing reaches the most Youth (15-30)?

SELECT Marketing_channels,SUM(CASE WHEN age = '15-18' THEN 1 ELSE 0 END) AS "15-18",
SUM(CASE WHEN age = '19-30' THEN 1 ELSE 0 END) AS "19-30",
COUNT(*) AS Total
FROM fact_survey_responses AS f
LEFT JOIN dim_respondents AS r
ON f.Respondent_ID = r.Respondent_ID
WHERE age IN ('15-18', '19-30')
GROUP BY Marketing_channels
ORDER BY Total DESC;
