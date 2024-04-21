-- What are the primary reasons consumers prefer those brands over ours? 

SELECT Reasons_for_choosing_brands, COUNT(*) AS Total_respondents
FROM fact_survey_responses
WHERE Current_brands <> 'CodeX'
GROUP BY Reasons_for_choosing_brands
ORDER BY Total_respondents DESC;