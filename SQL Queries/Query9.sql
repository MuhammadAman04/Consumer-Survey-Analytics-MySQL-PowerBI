-- Where do respondents usually buy energy drinks if they find the price range of 100 to 150 acceptable, based on their gender?

 SELECT Purchase_location,
 SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) AS Male_Respondents ,
 SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) AS Female_Respondents,
 COUNT(*) AS Total_Respondents
 FROM dim_respondents AS r
 LEFT JOIN fact_survey_responses AS f
 ON r.Respondent_ID = f.Respondent_id
 WHERE price_range = '100-150' 
 GROUP BY Purchase_location
 ORDER BY Total_Respondents DESC;
 
 
