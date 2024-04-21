-- Which city has the highest and lowest consumption frequency of energy drinks?

WITH City_data AS (
    SELECT City,
	COUNT(*) AS Total_Respondents
    FROM dim_respondents AS r
    LEFT JOIN dim_cities AS c 
    ON r.City_ID = c.City_ID
    LEFT JOIN fact_survey_responses AS s 
    ON r.Respondent_ID = s.Respondent_ID
    GROUP BY City
)

SELECT City,Total_Respondents
FROM City_data
WHERE Total_Respondents = (SELECT MAX(Total_Respondents) FROM City_data)
OR Total_Respondents = (SELECT MIN(Total_Respondents) FROM City_data);