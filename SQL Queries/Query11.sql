SELECT
    Health_concerns AS Health_Concerns,
    COUNT(*) AS Respondent_Count,
    (SELECT COUNT(*) FROM fact_survey_responses) AS Total_Respondents,
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM fact_survey_responses)) * 100, 2) AS Percentage_Concerned
FROM
    fact_survey_responses
WHERE
    Health_concerns = 'Yes'
GROUP BY
    Health_concerns;